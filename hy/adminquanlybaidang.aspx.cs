using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
	public partial class adminquanlybaidang : System.Web.UI.Page
	{
		l data = new l();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			refreshDataList();
            if (IsPostBack) return;
            refreshDataList();
            foreach (DataListItem item in dataListHangListND.Items)
            {
                Button btnduyet = (Button)item.FindControl("btnduyet");
                if (btnduyet != null)
                {
                    string kiemduyet = ((Label)item.FindControl("lbKiemDuyet")).Text;
                    if (kiemduyet == "đã duyệt")
                    {
                        btnduyet.Visible = false;
                    }
                }
            }
        }

		protected void dataListHangListND_ItemCommand(object source, DataListCommandEventArgs e)
		{
			if (e.CommandName == "xoa")
			{
				dataListHangListND.EditItemIndex = -1;
				refreshDataList();
			}
		}
		private void refreshDataList()
		{
			dataListHangListND.DataSource = null;
			dataListHangListND.DataSource = data.getData("SELECT * FROM BATDONGSAN");
			dataListHangListND.DataBind();
		}

		private void showThongBao(string strTB, Color color)
		{
			lbTB.Visible = true;
			lbTB.Text = strTB;
			lbTB.ForeColor = color;
		}

		protected void btnXoa_Click(object sender, EventArgs e)
		{
			string sql = "delete DANHSACHYEUTHICH where mabds = '" + ((Button)sender).CommandArgument + "'";
			string sqll = "delete BATDONGSAN where mabds = '" + ((Button)sender).CommandArgument + "'";
			int a = data.updateData(sql);
			if (data.updateData(sqll) == 1)
			{
				refreshDataList();
				showThongBao("Xoá thành công", Color.Green);

			}
			else
			{
				showThongBao("xóa thất bại!", Color.Red);
			}
		}

		protected void btnduyet_Click(object sender, EventArgs e)
		{
            Button btn = (Button)sender;
            if (data.updateData("UPDATE BATDONGSAN SET kiemduyet=N'đã duyệt' where mabds = '" + btn.CommandArgument + "'") > 0)
            {
                refreshDataList();
                foreach (DataListItem item in dataListHangListND.Items)
                {
                    Button btnduyet = (Button)item.FindControl("btnduyet");
                    if (btnduyet != null)
                    {
                        string kiemduyet = ((Label)item.FindControl("lbKiemDuyet")).Text;
                        if (kiemduyet == "đã duyệt")
                        {
                            btnduyet.Visible = false;
                        }
                    }
                }
                showThongBao("Cập nhật thành công!", Color.Green);
            }
            else
                showThongBao("Cập nhật thất bại!", Color.Red);
        }

		protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
		{
			string mabds = ((ImageButton)sender).CommandArgument;
			Response.Redirect("baidangkiemduyet.aspx?mabds=" + mabds);
			Response.Redirect("baidangkiemduyet.aspx?mabds=" + mabds);
		}
    }
}