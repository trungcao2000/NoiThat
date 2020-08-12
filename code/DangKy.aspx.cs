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
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bDangky_Click(object sender, EventArgs e)
        {
            
            String gt = RadioButtonList1.SelectedValue.ToString();

            String strcnmail = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
            SqlConnection cnm = new SqlConnection(strcnmail);
            try
            {
                cnm.Open();
                String m = mail.Text;
                String sql = "Select * from hr.KhachHang where Email ='" + m +"'";
                SqlCommand cmail = new SqlCommand(sql, cnm);
                SqlDataReader dta = cmail.ExecuteReader();
                if (dta.Read() == true)
                {
                    KQ.Text = "Mail đã tồn tại!";
                }
                else
                {
                    String strcn = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
                    SqlConnection cn = new SqlConnection(strcn);
                    cn.Open();
                    //tao cmd
                    String strcmd = "INSERT INTO hr.KhachHang(Hoten,DienThoai, GioiTinh ,DiaChi,Email, Matkhau) VALUES ('" + ten.Text + "','" + sdt.Text + "','" + gt + "',N'" + diachi.Text + "','" + mail.Text + "','" + pass.Text + "')";

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = cn;
                    cmd.CommandText = strcmd;
                    //thuc thi
                    int rs = cmd.ExecuteNonQuery();
                    if (rs == 1)
                        KQ.Text = "Đăng Ký Thành Công";
                    cn.Close();
                }
            }
            catch
            {
                KQ.Text = "Lỗi kết nối!";
            }


            //string check = null;
            //if (hoa.Checked == true)
            //    check = check + ", Hoa";
            //if (song.Checked == true)
            //    check = check + ", Sông Suối";
            //if (nui.Checked == true)
            //    check = check + ", Núi Rừng";
            //if (doi.Checked == true)
            //    check = check + ", Núi Đồi";
            //if (bien.Checked == true)
            //    check = check + ", Biển";
            //if (dongvat.Checked == true)
            //    check = check + ", Động Vật Hoang Dã";
            //String gt = RadioButtonList1.SelectedValue.ToString();
            //String strcn = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
            //SqlConnection cn = new SqlConnection(strcn);
            //cn.Open();
            ////tao cmd
            //String strcmd = "INSERT INTO hr.KhachHang(Hoten,DienThoai, GioiTinh ,SoThich,Email, Matkhau) VALUES ('"+ten.Text+"','"+sdt.Text+"','"+gt+"','"+check+"','"+mail.Text+"','"+pass.Text+"')";

            //SqlCommand cmd = new SqlCommand();
            //cmd.Connection = cn;
            //cmd.CommandText = strcmd;
            ////thuc thi
            //int rs = cmd.ExecuteNonQuery();
            //if (rs == 1)
            //    KQ.Text = "Đăng Ký Thành Công";
            //cn.Close();
        }
    }
}