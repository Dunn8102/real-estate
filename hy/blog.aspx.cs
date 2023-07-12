using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hy
{
	public partial class blog : System.Web.UI.Page
	{
        l data = new l();
        protected void Page_Load(object sender, EventArgs e)
		{
            if (Page.IsPostBack) return;
            bindingData(myDataList, "SELECT * FROM TINTUC");
        }
        private void bindingData(DataList dataList, string sql)
        {
            dataList.DataSource = null;
            dataList.DataSource = data.getData(sql);
            dataList.DataBind();
        }
    }
}