using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
	public partial class adminquanlynguoidung : System.Web.UI.Page
	{
		l data = new l();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			refreshDataList();
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
			dataListHangListND.DataSource = data.getData("SELECT * FROM TAIKHOAN where phanquyen = 0 ");
			dataListHangListND.DataBind();
		}

		private void showThongBao(string strTB, Color color)
		{
			lbTB.Visible = true;
			lbTB.Text = strTB;
			lbTB.ForeColor = color;
		}

		protected void btnxoa_Click1(object sender, EventArgs e)
		{
			//string sq = "DELETE DANHSACHYEUTHICH, BATDONGSAN,TAIKHOAN FROM TAIKHOAN LEFT JOIN BATDONGSAN ON TAIKHOAN.username = BATDONGSAN.username LEFT JOIN DANHSACHYEUTHICH ON DANHSACHYEUTHICH.username = TAIKHOAN.username WHERE TAIKHOAN.username = '" + ((Button)sender).CommandArgument + "' ";
			//if (data.updateData(sq) > 0)
			//{
			//	showThongBao("Xóa thành công!", Color.Green);
			//}
			//else
			//{
			//	showThongBao("Xóa thất bại!", Color.Red);
			//}

			//string sql = "DELETE TAIKHOAN, DANHSACHYEUTHICH, BATDONGSAN FROM TAIKHOAN ,DANHSACHYEUTHICH, BATDONGSAN WHERE TAIKHOAN.username = BATDONGSAN.username and TAIKHOAN.username = DANHSACHYEUTHICH.username and TAIKHOAN.username = 'hoaiyenbo";
			string sql = "delete DANHSACHYEUTHICH where username = '" + ((Button)sender).CommandArgument + "'";
			string sqll = "delete BATDONGSAN where username = '" + ((Button)sender).CommandArgument + "'";
			string sqlll = "delete TAIKHOAN where username = '" + ((Button)sender).CommandArgument + "'";
			int a = data.updateData(sql);
			int b = data.updateData(sqll);
			if (data.updateData(sqlll) ==1)
			{
				showThongBao("Xoá thành công", Color.Green);
				
			}
			else
			{
				showThongBao("xóa thất bại!", Color.Red);
			}

		}
	}
}