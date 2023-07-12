using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
	public partial class post : System.Web.UI.Page
	{
		l data = new l();
		Conecto a = new Conecto();

		protected void Page_Load(object sender, EventArgs e)
		{
			lbThongBao.Visible = false;
			if (Page.IsPostBack) return;
			if (Request.Cookies["Login"] == null) Response.Redirect("indexx.aspx");
			bindingDropDownList(dropDownListTT, "tenloai", "maloai", "SELECT * FROM LOAIBDS");
		}
		string tenbds, hinhanh, mota, maloai, sdt, diachi, phongngu, phongtam;
		float gia,dientich;
		string user = "";
		protected void btndang_Click(object sender, EventArgs e)
		{
			HttpCookie myCookie = Request.Cookies["Login"];
			if(myCookie != null)
			{
				user = myCookie["tenDN"];
			}
			

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
			string sql = "insert into batdongsan values (N'" + txttenbds.Text + "','" + txtgia.Text + "',N'" + txtmota.Text + "',N'" + drdiachi.SelectedValue.ToString() + "',N'" + hinhanh + "',N'" + user + "',N'" + dropDownListTT.SelectedValue.ToString() + "','" + txtdientich.Text + "',0)";
			

			if ((int)data.getSingleValue("select count(*) from taikhoan where username='" + user + "'") == 1)
			{
				if (data.updateData(sql) > 0)
					showThongBao("thêm thành công!", Color.Green);
				else
					showThongBao("thêm thất bại!", Color.Red);
			}
			else showThongBao(user, Color.Red);

		}
		private void bindingDropDownList(DropDownList dropDownList, string textField, string valueField, string sql)
		{
			dropDownList.DataSource = data.getData(sql);
			dropDownList.DataTextField = textField;
			dropDownList.DataValueField = valueField;
			dropDownList.DataBind();
		}
		private void showThongBao(string strTB, Color color)
		{
			lbThongBao.Visible = true;
			lbThongBao.Text = strTB;
			lbThongBao.ForeColor = color;
		}
	}
}