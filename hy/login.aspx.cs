using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
	public partial class login : System.Web.UI.Page
	{
		string tenDN, matKhau;
		l data = new l();
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnDangNhap_Click(object sender, EventArgs e)
		{
			getDuLieu();
			if ((int)data.getSingleValue("SELECT COUNT(*) FROM TAIKHOAN WHERE username='" + tenDN + "' AND password='" + matKhau + "'") == 1)
			{
				HttpCookie myCcookie = new HttpCookie("Login");
				myCcookie["tenDN"] = tenDN;
				myCcookie.Expires = DateTime.Now.AddDays(1d);
				Response.Cookies.Add(myCcookie);


				if ((int)data.getSingleValue("SELECT phanQuyen FROM TAIKHOAN WHERE username='" + tenDN + "' AND password='" + matKhau + "'") == 99)
				{

					// chuyển hướng đến trang admin
					Response.Redirect("indexadmin.aspx");
				}
				else
				{
					
					Response.Redirect("indexx.aspx");
				}
			}
			else
			{
				lbTB.Visible = true;
				lbTB.Text = "Sai tên đăng nhập hoặc mật khẩu!";
				lbTB.ForeColor = System.Drawing.Color.Red;
				txtMatKhau.Text = "";
				txtTenDN.Text = "";
			}
		}
		
		private void getDuLieu()
		{
			tenDN = txtTenDN.Text.ToString().Trim();
			matKhau = txtMatKhau.Text.ToString().Trim();
		}
	}
}