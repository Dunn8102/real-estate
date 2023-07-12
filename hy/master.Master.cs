using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
	public partial class master : System.Web.UI.MasterPage
	{
		l data = new l();
        string user = "";
        protected void Page_Load(object sender, EventArgs e)
		{
            if (Request.Cookies["Login"] != null)
            {
                btnAccountForm.Text = "Đăng Xuất";
                toggleChatButton.Enabled = true;
                Tennguoinhan.Enabled = true;
                Buttonn2.Enabled = true;
            }
            else
            {
                btnAccountForm.Text = "Đăng Nhập ";
                toggleChatButton.Enabled = false;
                Tennguoinhan.Enabled = false;
                Buttonn2.Enabled = false;
            }
            toggleChatButton.Click += ToggleChatButton_Click;
            //chatInput.TextChanged += ChatInput_TextChanged;
            //toggleChatButton.Enabled = false;
            //bindingData(DataList1, "SELECT * FROM LIENHE WHERE (maNguoiGui='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiNhan = '" + Tennguoinhan.Text + "') or (maNguoiNhan='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiGui = '" + Tennguoinhan.Text + "')");


        }
        private void ToggleChatButton_Click(object sender, EventArgs e)
        {
            if (chatContainer.Attributes["class"].Contains("hidden"))
            {
                string sql = "select tennguoidung FROM TAIKHOAN where username = '" + Tennguoinhan.Text + "'";
                string ten = data.getSingleValue(sql) as string;
                chatContainer.Attributes["class"] = chatContainer.Attributes["class"].Replace("hidden", "").Trim();
                Label2.Text = ten.ToString();
                toggleChatButton.Text = "Đóng room chat";
                
            }
            else
            {
                chatContainer.Attributes["class"] += " hidden";
                toggleChatButton.Text = "Mở room chat";
            }
        }
        private void bindingData(DataList dataList, string sql)
        {
            dataList.DataSource = null;
            dataList.DataSource = data.getData(sql);
            dataList.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            //string q = "select count(*) from TAIKHOAN where username='" + Tennguoinhan.Text + "'";
            if ((int)data.getSingleValue("SELECT COUNT(*) FROM TAIKHOAN WHERE username='" + Tennguoinhan.Text + "' and username <> '"+ Request.Cookies["Login"]["tenDN"].ToString() + "'") == 1)
            {
                showThongBao("Tìm thành công!", Color.Green);
                toggleChatButton.Enabled = true;
            }
            else
            {
                showThongBao("Tìm thất bại!", Color.Red);
                toggleChatButton.Enabled = false;
            }
            bindingData(DataList1, "SELECT * FROM LIENHE WHERE (maNguoiGui='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiNhan = '" + Tennguoinhan.Text + "') or (maNguoiNhan='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiGui = '" + Tennguoinhan.Text + "')");
        }
        private void showThongBao(string strTB, Color color)
        {
            lbThongBao.Visible = true;
            lbThongBao.Text = strTB;
            lbThongBao.ForeColor = color;
        }
        protected void Button99_Click(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["Login"];
            if (myCookie != null)
            {
                user = myCookie["tenDN"];
            }
            DateTime currentTime = DateTime.Now;
            string sql = "INSERT INTO LIENHE VALUES ('" + Request.Cookies["Login"]["tenDN"].ToString() + "', '" + Tennguoinhan.Text + "',N'" + chatInput.Text + "', CURRENT_TIMESTAMP)";
            //string sql = "INSERT INTO LIENHE VALUES ('dungvo', 'yen','dc1', '12/2/2002')";
            if ((int)data.getSingleValue("select count(*) from taikhoan where username='" + user + "'") == 1)
            {
                if (data.updateData(sql) > 0)
                    showThongBao("gửi thành công!", Color.Green);
                else
                    showThongBao("gửi thất bại!", Color.Red);
            }
            else showThongBao(user, Color.Red);
            bindingData(DataList1, "SELECT * FROM LIENHE WHERE (maNguoiGui='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiNhan = '" + Tennguoinhan.Text + "') or (maNguoiNhan='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiGui = '" + Tennguoinhan.Text + "')");
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
                NguoiGuiLabel.Text = (idNguoiGui == tenDN) ? "me: " : "them: ";
            }
        }





        private void ChatInput_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(chatInput.Text))
            {
                chatHistory.Controls.Add(new LiteralControl("<p>" + chatInput.Text + "</p>"));
                chatInput.Text = string.Empty;
            }
        }
        protected void btnAccountForm_Click(object sender, EventArgs e)
		{
			if (btnAccountForm.Text.Equals("Đăng Nhập "))
			{
				Response.Redirect("login.aspx");
			}
			else if (btnAccountForm.Text.Equals("Đăng Xuất"))
			{
				HttpCookie myCcookie = new HttpCookie("Login");
				myCcookie.Expires = DateTime.Now.AddDays(-1d); // end time cookies -> clear cookies
				Response.Cookies.Add(myCcookie);
				btnAccountForm.Text = "Đăng Nhập ";
                toggleChatButton.Enabled = false;
                Tennguoinhan.Enabled = false;
                Buttonn2.Enabled = false;
            }
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			Response.Redirect("register.aspx");
		}
	}
}