using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
	public partial class quanlyyeuthich : System.Web.UI.Page
	{
		l data = new l();
		string tenDN;
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Page.IsPostBack) return;
			if (Request.Cookies["Login"] == null) Response.Redirect("indexx.aspx");
			bindingData(bds, "SELECT * FROM BATDONGSAN, DANHSACHYEUTHICH WHERE BATDONGSAN.mabds = DANHSACHYEUTHICH.mabds AND DANHSACHYEUTHICH.username ='"+ Request.Cookies["Login"]["tenDN"].ToString() + "'");
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

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			tenDN = Request.Cookies["Login"]["tenDN"].ToString();
			LinkButton xoa = (LinkButton)sender;
			string mabds = xoa.CommandArgument;
			if (data.updateData("DELETE FROM DANHSACHYEUTHICH WHERE mabds='" + mabds + "'") > 0)
			{
				bindingData(bds, "SELECT * FROM BATDONGSAN, DANHSACHYEUTHICH WHERE BATDONGSAN.mabds = DANHSACHYEUTHICH.mabds AND DANHSACHYEUTHICH.username ='" + tenDN + "'");
			}
		}

		protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
		{
			string mabds = ((ImageButton)sender).CommandArgument;
			Response.Redirect("property.aspx?mabds=" + mabds);
		}
	}
}