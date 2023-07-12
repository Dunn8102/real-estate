using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
    public partial class properties : System.Web.UI.Page
    {
        l data = new l();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack) return;
            if (Request.Cookies["Login"] != null)
            {
                //if ((int)data.getSingleValue("SELECT phanQuyen FROM TAIKHOAN WHERE username='" + Request.Cookies["Login"]["tenDN"].ToString() + "'") == 99)
                //	Response.Redirect("admin.aspx");
            }
            bindingData(bds, "SELECT * FROM BATDONGSAN where kiemduyet=N'đã duyệt'");
        }
        private void bindingData(DataList dataList, string sql)
        {
            dataList.DataSource = null;
            dataList.DataSource = data.getData(sql);
            dataList.DataBind();
        }

        protected void linkbds_Click(object sender, EventArgs e)
        {
            string mabds = ((LinkButton)sender).CommandArgument;
            Response.Redirect("property.aspx?mabds=" + mabds);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string mabds = ((ImageButton)sender).CommandArgument;
            Response.Redirect("property.aspx?mabds=" + mabds);
        }



    }
}