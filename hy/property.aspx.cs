using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
	public partial class property : System.Web.UI.Page
	{
		string mabds;
		l data = new l();
        string user = "";
        protected void Page_Load(object sender, EventArgs e)
		{
			mabds = Request.QueryString["mabds"];
			if (mabds == null)
			{
				Response.Redirect("properties.aspx");
			}
			else
			{
				DataList2.DataSource = data.getData("select * from TAIKHOAN,BATDONGSAN where BATDONGSAN.username = TAIKHOAN.username and BATDONGSAN.mabds ='"+mabds+"'");
				DataList1.DataSource = data.getData("SELECT * FROM BATDONGSAN WHERE mabds='" + mabds + "'");
				dr3.DataSource = data.getData("select * from TAIKHOAN,BATDONGSAN where BATDONGSAN.username = TAIKHOAN.username and BATDONGSAN.mabds ='" + mabds + "'");
				dr3.DataBind();
				DataList1.DataBind();
				DataList2.DataBind();
                if (Request.Cookies["Login"] != null)
                {
                    bindingData(DataList33, "SELECT * FROM LIENHE WHERE (maNguoiGui='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiNhan = '" + Label7.Text + "') or (maNguoiNhan='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiGui = '" + Label7.Text + "')");
                    if (Request.Cookies["Login"]["tenDN"].ToString() == Label7.Text)
                    {
                        toggleChatButton.Enabled = false;
                    }
                }
                else
                    toggleChatButton.Enabled = false;
            }
            toggleChatButton.Click += ToggleChatButton_Click;
        }

		protected void Button1_Click(object sender, EventArgs e)
		{
			string sql;
			if (Request.Cookies["Login"] == null)
			{
				Response.Redirect("login.aspx");
			}
			else
			{
					sql = "INSERT INTO DANHSACHYEUTHICH VALUES ("+mabds+", '"+ Request.Cookies["Login"]["tenDN"].ToString() + "')";
				if (data.updateData(sql) > 0)
				{
					showTB("thêm thành công", Color.Green);
				}
				else showTB("thêm thất bại hoặc bạn đã thêm bất động sản này rồi !!", Color.Red);
			}
		}
		private void showTB(string strTB, Color color)
		{
			lbTB.Visible = true;
			lbTB.Text = strTB;
			lbTB.ForeColor = color;
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
        protected void Button99_Click(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["Login"];
            if (myCookie != null)
            {
                user = myCookie["tenDN"];
            }
            DateTime currentTime = DateTime.Now;
            string sql = "INSERT INTO LIENHE VALUES ('" + Request.Cookies["Login"]["tenDN"].ToString() + "', '" + Label7.Text + "',N'" + chatInput.Text + "', CURRENT_TIMESTAMP)";
            //string sql = "INSERT INTO LIENHE VALUES ('dungvo', 'yen','dc1', '12/2/2002')";
            if ((int)data.getSingleValue("select count(*) from taikhoan where username='" + user + "'") == 1)
            {
                if (data.updateData(sql) > 0)
                    showThongBao("gửi thành công!", Color.Green);
                else
                    showThongBao("gửi thất bại!", Color.Red);
            }
            else showThongBao(user, Color.Red);
            bindingData(DataList33, "SELECT * FROM LIENHE WHERE (maNguoiGui='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiNhan = '" + Label7.Text + "') or (maNguoiNhan='" + Request.Cookies["Login"]["tenDN"].ToString() + "' and maNguoiGui = '" + Label7.Text + "')");
        }
        private void showThongBao(string strTB, Color color)
        {
            lbThongBao.Visible = true;
            lbThongBao.Text = strTB;
            lbThongBao.ForeColor = color;
        }
        private void bindingData(DataList dataList, string sql)
        {
            dataList.DataSource = null;
            dataList.DataSource = data.getData(sql);
            dataList.DataBind();
        }
        private void ToggleChatButton_Click(object sender, EventArgs e)
        {
            if (chatContainer.Attributes["class"].Contains("hidden"))
            {
                chatContainer.Attributes["class"] = chatContainer.Attributes["class"].Replace("hidden", "").Trim();
                moroom.Text = Label8.Text;
                toggleChatButton.Text = "Đóng room chat";
            }
            else
            {
                chatContainer.Attributes["class"] += " hidden";
                toggleChatButton.Text = "Mở room chat";

            }
        }
        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // Lấy đối tượng Label trong Item hiện tại của DataList
                Label lbl = (Label)e.Item.FindControl("Label6");

                // Lấy ID của Label
                string labelID = lbl.Text;
                Label7.Text = labelID.ToString();
            }
        }
        protected void DataList2_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // Lấy đối tượng Label trong Item hiện tại của DataList
                Label lbl = (Label)e.Item.FindControl("Label3");

                // Lấy ID của Label
                string labelID = lbl.Text;
                Label8.Text = labelID.ToString();
            }
        }
    }
}