using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
	public partial class baidangkiemduyet : System.Web.UI.Page
	{
		string mabds;
		l data = new l();
		protected void Page_Load(object sender, EventArgs e)
		{
			mabds = Request.QueryString["mabds"];
			if (mabds == null)
			{
				Response.Redirect("adminquanlybaidang.aspx");
			}
			else
			{
				DataList2.DataSource = data.getData("select * from TAIKHOAN,BATDONGSAN where BATDONGSAN.username = TAIKHOAN.username and BATDONGSAN.mabds ='" + mabds + "'");
				DataList1.DataSource = data.getData("SELECT * FROM BATDONGSAN WHERE mabds='" + mabds + "'");
				dr3.DataSource = data.getData("select * from TAIKHOAN,BATDONGSAN where BATDONGSAN.username = TAIKHOAN.username and BATDONGSAN.mabds ='" + mabds + "'");
				dr3.DataBind();
				DataList1.DataBind();
				DataList2.DataBind();
			}
		}
	}
}