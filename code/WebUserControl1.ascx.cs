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
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {

           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String strcn = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);
            try
            {
                cn.Open();
                String m = bmail.Text;
                String p = bpass.Text;
                String sql = "Select * from hr.KhachHang where Email ='"+m+"' and MatKhau ='"+p+"'";
                SqlCommand cmd = new SqlCommand(sql,cn);
                SqlDataReader dta = cmd.ExecuteReader();
                if (dta.Read() == true)
                {
                    User u = new User();
                    u.mail = bmail.Text;
                    u.password = bpass.Text;
                    Session["User"] = u;
                    if (u.mail == "admin")
                    {
                        Response.Redirect("~/TrangChuAdmin.aspx");
                    }
                    else
                    Response.Redirect("~/TrangChu.aspx");
                }
                else {
                    kq.Text = "Đăng Nhập không thành công! vui lòng kiểm tra lại!";
                }
            }
            catch {
                kq.Text = "Lỗi kết nối!";
            }



        }
    }
}