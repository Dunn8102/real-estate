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
    public partial class capnhattintuc : System.Web.UI.Page
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
            if (Context.Items["ml"] == null)
                q = "select * from TINTUC where matintuc = '1'";
            else
            {
                string maloai = Context.Items["ml"].ToString();
                q = "select * from TINTUC where matintuc = '"+ maloai + "'";
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
            //string maloai = Context.Items["ml"].ToString();
            Button btnCapNhat = (Button)sender;
            string username = btnCapNhat.CommandArgument;
            DataListItem row = (DataListItem)btnCapNhat.NamingContainer;
            string tentt = ((TextBox)row.FindControl("tentintuc")).Text;
            string id = ((TextBox)row.FindControl("matintuc")).Text;
            string noidung = ((TextBox)row.FindControl("noidung")).Text;
            //string sdt = ((TextBox)row.FindControl("ngaydangtin")).Text;
            //string password = ((TextBox)row.FindControl("txtpass")).Text;
            if (fileUploader.HasFile)
                try
                {
                    hinhanh = System.IO.Path.GetFileName(fileUploader.FileName);
                    fileUploader.SaveAs(Server.MapPath("imgs/") + hinhanh);
                }
                catch (Exception ex)
                {
                    showThongBao("error: " + ex.Message.ToString(), Color.Red);
                }
            else
                showThongBao("you have not specified a file.", Color.Red);
            //string sql = "update TINTUC set tentintuc = N'" + tentt + "',hinhanh = '" + hinhanh + "',noidung = N'" + noidung + "',ngaydangtin = current_timestamp,adminQL = N'admin' where matintuc = '1'";

            //string sql = "insert into TINTUC values (n'" + txttintuc.Text + "',n'" + hinhanh + "',n'" + txtmota.Text + "',current_timestamp,n'admin')";

            //if (data.updateData(sql) > 0)
            //    showThongBao("Cập nhật thành công!", Color.Green);
            //else
            //    showThongBao("Cập nhật thất bại!", Color.Red);


            if (data.updateData("update TINTUC set tentintuc = N'" + tentt + "',hinhanh = '" + hinhanh + "',noidung = N'" + noidung + "',ngaydangtin = current_timestamp,adminQL = N'admin' where matintuc = '"+ id + "'") > 0)
            {
                //bindingData(DataList1, "SELECT * FROM TAIKHOAN WHERE username='" + Request.Cookies["Login"]["tenDN"].ToString() + "'");
                showThongBao("Cập nhật thành công!", Color.Green);
            }
            else
                showThongBao("Cập nhật thất bại!", Color.Red);
        }
    }
}