using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace hy
{
	public class Conecto
	{
		string hi = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\DOAN3\hy\hy\App_Data\batdongsan.mdf;Integrated Security=True";

		SqlConnection conn;
		public Conecto()
		{
			conn = new SqlConnection(hi);
		}
		public void modulieu()
		{
			if (conn.State != ConnectionState.Open)
			{
				conn.Open();
			}
		}
		public void dongdulieu()
		{
			if (conn.State != ConnectionState.Closed)
			{
				conn.Close();
			}
		}
		public void ThemXoaSua(string sql)
		{
			SqlCommand comm = new SqlCommand(sql, conn);
			modulieu();
			int kq = comm.ExecuteNonQuery();
			dongdulieu();
		}
		public DataTable LoadDL(string sql)
		{
			SqlDataAdapter da = new SqlDataAdapter(sql, conn);
			DataTable dt = new DataTable();
			da.Fill(dt);
			return dt;
		}
		public object scalar(string sql)
		{
			SqlCommand comm = new SqlCommand(sql, conn);
			modulieu();
			object kq = comm.ExecuteScalar();
			dongdulieu();
			return kq;
		}
	}
}