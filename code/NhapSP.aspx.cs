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
    public partial class NhapSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string loai = DropDownList1.SelectedValue.ToString();
            string fileName = "~/Hinhanh/HinhSP/" +tensp.Text + FileUpload1.FileName;
            string filePath = MapPath(fileName);
            FileUpload1.SaveAs(filePath);
            //Image1.ImageUrl = fileName;

            String strcn = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);
            cn.Open();
            //tao cmd
            String strcmd = "insert into SanPham(TenSP,Gia,NhaSanXuat,MoTa,MaDM,Hinh) values (N'"+tensp.Text+"',"+gia.Text+",'"+nsx.Text+"','"+mota.Text+ "','dm2',N'" + fileName + "')";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = strcmd;
            //thuc thi
            int rs = cmd.ExecuteNonQuery();
            if (rs == 1)
                kq.Text = "Đã Thêm";
            cn.Close();
        }
    }
}