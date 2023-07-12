using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
    public partial class dangtintuc : System.Web.UI.Page
    {
        l data = new l();
		string user = "";
		string hinhanh;

        protected void Page_Load(object sender, EventArgs e)
        {
			lbthongbao.Visible = false;
            if (Page.IsPostBack) return;
            if (Request.Cookies["Login"] == null) Response.Redirect("indexx.aspx");
        }
        private void showThongBao(string strTB, Color color)
        {
            lbthongbao.Visible = true;
            lbthongbao.Text = strTB;
			lbthongbao.ForeColor = color;
        }

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (fileUploader.HasFile)
				try
				{
					hinhanh = System.IO.Path.GetFileName(fileUploader.FileName);
					fileUploader.SaveAs(Server.MapPath("imgs/") + hinhanh);
				}
				catch (Exception ex)
				{
					showThongBao("error: " + ex.Message.ToString(), Color.Red);
				}
			else
				showThongBao("you have not specified a file.", Color.Red);
			string sql = "insert into TINTUC values (N'" + txtten.Text + "','" + hinhanh + "',N'" + txtmota.Text + "',current_timestamp,N'admin')";

			//string sql = "insert into TINTUC values (n'" + txttintuc.Text + "',n'" + hinhanh + "',n'" + txtmota.Text + "',current_timestamp,n'admin')";
			
				if (data.updateData(sql) > 0)
					showThongBao("thêm thành công!", Color.Green);
				else
					showThongBao("thêm thất bại!", Color.Red);
			
		}
	}

}