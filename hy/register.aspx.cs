using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
	public partial class register : System.Web.UI.Page
	{
		string tennguoidung, matkhau, email, sdt,username,diachi;
		int phanquyen;
		l data = new l();
		protected void Button1_Click(object sender, EventArgs e)
		{
			getDuLieuu();
			if ((int)data.updateData("INSERT INTO TAIKHOAN VALUES(" + "N'" + username + "',N'"+matkhau+"',N'" + tennguoidung+ "'," + "'" + sdt + "',N'" + diachi + "',N'"+ phanquyen + "',N'"+ email + "')") == 1)
			{
				showThongBao("Đăng ký tài khoản thành công!", Color.Green);
				Response.Redirect("login.aspx");
			}
			else
			{
				showThongBao("Đăng ký tài khoản thất bại!", Color.Red);
			}
		}

		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			lbThongBao.Visible = false;
		}
		private void getDuLieuu()
		{
			tennguoidung = txthoten.Text;
			email = txtemail.Text;
			diachi = txtdiachi.Text;
			sdt = txtsdt.Text;
			username = txtName.Text;
			matkhau = txtPass.Text;
			phanquyen = 0;

		}
		private void showThongBao(string strTB, Color color)
		{
			lbThongBao.Visible = true;
			lbThongBao.Text = strTB;
			lbThongBao.ForeColor = color;
		}
	}
}