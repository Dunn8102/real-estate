using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
    public partial class chitiettintuc : System.Web.UI.Page
    {
        l data = new l();
        string user = "";
        string hinhanh;

        protected void Page_Load(object sender, EventArgs e)
        {
            lbthongbao.Visible = false;
            if (Page.IsPostBack) return;
            //if (Request.Cookies["Login"] == null) Response.Redirect("indexx.aspx");
            //bindingData(DataList1, "SELECT * FROM TINTUC WHERE matintuc='1'");
            string q;
            if (Context.Items["hl"] == null)
                q = "select * from TINTUC where matintuc = '1'";
            else
            {
                string maloai = Context.Items["hl"].ToString();
                q = "select * from TINTUC where matintuc = '" + maloai + "'";
            }
            try
            {
                this.DataList1.DataSource = data.getData(q);
                this.DataList1.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }

        }
        private void showThongBao(string strTB, Color color)
        {
            lbthongbao.Visible = true;
            lbthongbao.Text = strTB;
            lbthongbao.ForeColor = color;
        }
        private void bindingData(DataList dataList, string sql)
        {
            dataList.DataSource = null;
            dataList.DataSource = data.getData(sql);
            dataList.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("quanlytintuc.aspx");
        }
    }
}