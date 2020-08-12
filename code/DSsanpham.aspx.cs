using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WedDuLich
{
    public partial class DSsanpham : System.Web.UI.Page
    {
        SqlCommand lenh = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        void naphang (string bMadm)
        {
            lenh.CommandText = "select * from Tour where MaDM = '"+bMadm+"'";
            //lenh.Parameters.Clear();
            //lenh.Parameters.AddWithValue("@MaDM", bMadm);
            DataTable dt = new DataTable();
            da.SelectCommand = lenh;
            da.Fill(dt);
            dtdshang.DataSource = dt;
            dtdshang.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            String st = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
            SqlConnection ketnoi = new SqlConnection(st);
            ketnoi.Open();
            lenh.Connection = ketnoi;
            lenh.CommandType = CommandType.Text;
            if (Request.QueryString["MaDM"] != null)
            {
                string Madm = Request.QueryString["MaDM"].ToString();
                naphang(Madm);              
            }
            else
            {
                string ma = "dm1";
                naphang(ma);
                //Response.Redirect("~/DangNhap.aspx");
            }
            ketnoi.Close();
        }
    }
}