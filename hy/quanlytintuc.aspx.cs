using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
    public partial class quanlytintuc : System.Web.UI.Page
    {
        l data = new l();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            refreshDataList();
        }
        private void refreshDataList()
        {
            dataListHangListND.DataSource = null;
            dataListHangListND.DataSource = data.getData("SELECT * FROM TINTUC");
            dataListHangListND.DataBind();
        }
        protected void dataListHangListND_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                dataListHangListND.EditItemIndex = -1;
                refreshDataList();
            }
            if (e.CommandName == "edit")
            {
                // Lấy mã tin tức từ CommandArgument
                string maTinTuc = e.CommandArgument.ToString();

                // Chuyển hướng sang trang capnhattintuc.aspx
                Response.Redirect("capnhattintuc.aspx?matintuc=" + maTinTuc);
            }
        }
        private void showThongBao(string strTB, Color color)
        {
            lbTB.Visible = true;
            lbTB.Text = strTB;
            lbTB.ForeColor = color;
        }
        protected void btnXoa_Click(object sender, EventArgs e)
        {
            string sqll = "delete TINTUC where matintuc = '" + ((Button)sender).CommandArgument + "'";
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
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string mabds = ((ImageButton)sender).CommandArgument;
            Response.Redirect("baidangkiemduyet.aspx?mabds=" + mabds);
            Response.Redirect("baidangkiemduyet.aspx?mabds=" + mabds);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangtintuc.aspx");
        }

        protected void Button90_Click(object sender, EventArgs e)
        {
            string tt = ((Button)sender).CommandArgument;
            Context.Items["ml"] = tt;
            Server.Transfer("capnhattintuc.aspx");
        }
        protected void Button95_Click(object sender, EventArgs e)
        {
            string ht = ((Button)sender).CommandArgument;
            Context.Items["hl"] = ht;
            Server.Transfer("chitiettintuc.aspx");
        }
    }
}