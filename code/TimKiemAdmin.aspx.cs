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
    public partial class TimKiemAdmin : System.Web.UI.Page
    {
        SqlCommand lenh = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        void naphang(string madm)
        {
            lenh.CommandText = "select * from SanPham";
            lenh.Parameters.Clear();
            lenh.Parameters.AddWithValue("@madm", madm);
            DataTable dt = new DataTable();
            da.SelectCommand = lenh;
            da.Fill(dt);
            dtdshang.DataSource = dt;
            dtdshang.DataBind();
        }
        void timhang(string tim)
        {
            lenh.CommandText = "select * from SanPham where TenSP like N'%" + tim + "%'";
            lenh.Parameters.Clear();
            lenh.Parameters.AddWithValue("@madm", tim);
            DataTable dt = new DataTable();
            da.SelectCommand = lenh;
            da.Fill(dt);
            dtdshang.DataSource = dt;
            dtdshang.DataBind();
        }
        ///

        protected void Page_Load(object sender, EventArgs e)
        {
            String st = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
            SqlConnection ketnoi = new SqlConnection(st);
            ketnoi.Open();
            lenh.Connection = ketnoi;
            lenh.CommandType = CommandType.Text;
            string ma = "dm1";
            naphang(ma);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            String st = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
            SqlConnection ketnoi = new SqlConnection(st);
            ketnoi.Open();
            lenh.Connection = ketnoi;
            lenh.CommandType = CommandType.Text;
            string tim = seach.Text;
            timhang(tim);

        }
    }
}