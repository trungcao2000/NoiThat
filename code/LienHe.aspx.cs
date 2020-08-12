using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WedDuLich
{
    public partial class LienHe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String strcn = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);
            cn.Open();
            //tao cmd
            String strcmd = "insert into LIENHE(Hoten ,Email, ngay ,Thongtin) values (N'" + ten.Text + "', '" + Mail.Text + "',GETDATE(), N'" + noidung.Text + "')";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = strcmd;
            //thuc thi
            int rs = cmd.ExecuteNonQuery();
            if (rs == 1)
            {
                kq.Text = "Đã Gửi";
                ten.Text = "";
                Mail.Text = "";
                noidung.Text = "";
            }
            else
                kq.Text = "Lỗi Gửi";
            cn.Close();

        }
    }
}