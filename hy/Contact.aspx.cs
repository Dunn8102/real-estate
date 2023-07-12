using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
	public partial class Contact : System.Web.UI.Page
	{
        l data = new l();
        string tennhan, nhaptinnhan;
        string user = "";

        protected void Page_Load(object sender, EventArgs e)
		{
            //lbTB.Visible = false;
            //string hoten = ((TextBox)row.FindControl("hoten")).Text;
            if (Page.IsPostBack) return;
            if (Request.Cookies["Login"] == null) Response.Redirect("indexx.aspx");
            bindingData(DataList5, "SELECT maNguoiNhan, COUNT(*) AS SoLuong FROM LIENHE WHERE maNguoiGui = '" + Request.Cookies["Login"]["tenDN"].ToString() + "' GROUP BY maNguoiNhan");
            //bindingData(DataList1, "SELECT * FROM TAIKHOAN WHERE username='" + Request.Cookies["Login"]["tenDN"].ToString() + "'");
            //bindingData(DataList5, "SELECT * FROM LIENHE WHERE (maNguoiGui='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiNhan = '" + Tennguoinhan.Text + "') or (maNguoiNhan='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiGui = '" + Tennguoinhan.Text + "')");

        }

        protected void XuatThongTinButton_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string maNguoiNhan = btn.CommandArgument;
            Tennguoinhan.Text = maNguoiNhan;
            bindingData(DataList6, "SELECT * FROM LIENHE WHERE (maNguoiGui='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiNhan = '" + Tennguoinhan.Text + "') or (maNguoiNhan='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiGui = '" + Tennguoinhan.Text + "')");
            string sql = "select tennguoidung FROM TAIKHOAN where username = '" + Tennguoinhan.Text + "'";
            string ten = data.getSingleValue(sql) as string;

            Label2.Text = ten.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["Login"];
            if (myCookie != null)
            {
                user = myCookie["tenDN"];
            }
            DateTime currentTime = DateTime.Now;
            string sql = "INSERT INTO LIENHE VALUES ('" + Request.Cookies["Login"]["tenDN"].ToString() + "', '"+ Tennguoinhan.Text + "',N'" + chatInput.Text + "', CURRENT_TIMESTAMP)";
            //string sql = "INSERT INTO LIENHE VALUES ('dungvo', 'hoaiyen','alo1', '12/2/2002')";
            if ((int)data.getSingleValue("select count(*) from taikhoan where username='" + user + "'") == 1)
            {
                if (data.updateData(sql) > 0)
                    showThongBao("gửi thành công!", Color.Green);
                else
                    showThongBao("gửi thất bại!", Color.Red);
            }
            else showThongBao(user, Color.Red);

            bindingData(DataList5, "SELECT maNguoiNhan, COUNT(*) AS SoLuong FROM LIENHE WHERE maNguoiGui = '" + Request.Cookies["Login"]["tenDN"].ToString() + "' GROUP BY maNguoiNhan");
            bindingData(DataList6, "SELECT * FROM LIENHE WHERE (maNguoiGui='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiNhan = '" + Tennguoinhan.Text + "') or (maNguoiNhan='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiGui = '" + Tennguoinhan.Text + "')");
        }
        private void showThongBao(string strTB, Color color)
        {
            lbThongBao.Visible = true;
            lbThongBao.Text = strTB;
            lbThongBao.ForeColor = color;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //string q = "select count(*) from TAIKHOAN where username='" + Tennguoinhan.Text + "'";
            if ((int)data.getSingleValue("SELECT COUNT(*) FROM TAIKHOAN WHERE username='" + Tennguoinhan.Text + "' and username <> '"+ Request.Cookies["Login"]["tenDN"].ToString() + "'") == 1)
            {
                showThongBao("Tìm thành công!", Color.Green);
            }
            else {
                showThongBao("Tìm thất bại!", Color.Red);
            }
            bindingData(DataList6, "SELECT * FROM LIENHE WHERE (maNguoiGui='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiNhan = '" + Tennguoinhan.Text + "') or (maNguoiNhan='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiGui = '" + Tennguoinhan.Text + "')");
            bindingData(DataList5, "SELECT maNguoiNhan, COUNT(*) AS SoLuong FROM LIENHE WHERE maNguoiGui = '" + Request.Cookies["Login"]["tenDN"].ToString() + "' GROUP BY maNguoiNhan");
        }
        protected void DataList6_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // Lấy thông tin của người gửi tin nhắn từ DataItem
                string idNguoiGui = DataBinder.Eval(e.Item.DataItem, "maNguoiGui").ToString();

                // Lấy thông tin người dùng đang đăng nhập từ cookie
                string tenDN = Request.Cookies["Login"]["tenDN"];

                // Thiết lập Text cho Label "NguoiGuiLabel"
                Label NguoiGuiLabel = (Label)e.Item.FindControl("NguoiGuiLabel");
                NguoiGuiLabel.Text = (idNguoiGui == tenDN) ? "meㅤ :ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ" : "them :";
            }
        }
        private void bindingData(DataList dataList, string sql)
        {
            dataList.DataSource = null;
            dataList.DataSource = data.getData(sql);
            dataList.DataBind();
        }
    }
}