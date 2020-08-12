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
    public partial class TrangChu : System.Web.UI.Page
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
        ///
        protected void Page_Load(object sender, EventArgs e)
        {
            User u = (User)Session["User"];
            if (u != null)
            {
                String strcn = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
                SqlConnection cn = new SqlConnection(strcn);
                try
                {
                    if (!IsPostBack)
                    {
                        cn.Open();
                        String sql = "Select * from hr.KhachHang where Email ='" + u.mail + "' and MatKhau ='" + u.password + "'";
                        SqlCommand cmd = new SqlCommand(sql, cn);
                        SqlDataReader dta = cmd.ExecuteReader();
                        if (dta.Read() == true)
                        {

                            String st = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
                            SqlConnection ketnoi = new SqlConnection(st);
                            ketnoi.Open();
                            lenh.Connection = ketnoi;
                            lenh.CommandType = CommandType.Text;
                            if (Request.QueryString["MaDM"] != null)
                            {
                                string madm = Request.QueryString["MaDM"].ToString();
                                string ma = "dm1";
                                naphang(ma);
                                ketnoi.Close();
                            }
                            else
                            {
                                string ma = "dm1";
                                naphang(ma);
                                //Response.Redirect("~/DangNhap.aspx");
                            }

                        }
                        else
                        {
                            Response.Redirect("~/DangKy.aspx");
                        }
                    }
                }
                catch
                {
                    Response.Redirect("~/DangKy.aspx");
                }
            }
                      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SanPham sp = new SanPham();
            Session["Sanpham"] = sp;
            Response.Redirect("~/ChiTietSanPham.aspx");
        }
    }
}