using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
    public partial class quanlytaikhoan : System.Web.UI.Page
    {
        l data = new l();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbTB.Visible = false;
            if (Page.IsPostBack) return;
            if (Request.Cookies["Login"] == null) Response.Redirect("indexx.aspx");
            bindingData(DataList1, "SELECT * FROM TAIKHOAN WHERE username='" + Request.Cookies["Login"]["tenDN"].ToString() + "'");
            bindingData(DataList2, "SELECT * FROM TAIKHOAN WHERE username='" + Request.Cookies["Login"]["tenDN"].ToString() + "'");

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btnCapNhat = (Button)sender;
            string username = btnCapNhat.CommandArgument;
            DataListItem row = (DataListItem)btnCapNhat.NamingContainer;
            string hoten = ((TextBox)row.FindControl("hoten")).Text;
            string diachi = ((TextBox)row.FindControl("diachi")).Text;
            string email = ((TextBox)row.FindControl("email")).Text;
            string sdt = ((TextBox)row.FindControl("sdt")).Text;
            string password = ((TextBox)row.FindControl("txtpass")).Text;

            //string hoten =	((TextBox)DataList2.FindControl("hoten")).Text;
            //string diachi = ((TextBox)DataList2.FindControl("diachi")).Text;
            //string email = ((TextBox)DataList2.FindControl("email")).Text;
            //string sdt = ((TextBox)DataList2.FindControl("sdt")).Text;
            //string password = ((TextBox)DataList2.FindControl("txtpass")).Text;
            if (data.updateData("UPDATE TAIKHOAN SET password=N'" + password + "',tennguoidung =N'" + hoten + "',sodienthoai='" + sdt + "',diachi=N'" + diachi + "',email=N'" + email + "'WHERE  username='" + Request.Cookies["Login"]["tenDN"].ToString() + "'") > 0)
            {
                bindingData(DataList2, "SELECT * FROM TAIKHOAN WHERE username='" + Request.Cookies["Login"]["tenDN"].ToString() + "'");
                showTB("Cập nhật thành công!", Color.Green);
            }
            else
                showTB("Cập nhật thất bại!", Color.Red);
        }
        private void bindingData(DataList dataList, string sql)
        {
            dataList.DataSource = null;
            dataList.DataSource = data.getData(sql);
            dataList.DataBind();
        }
        private void showTB(string strTB, Color color)
        {
            lbTB.Visible = true;
            lbTB.Text = strTB;
            lbTB.ForeColor = color;
        }

    }

   
}