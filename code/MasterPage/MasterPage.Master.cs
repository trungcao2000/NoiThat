using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WedDuLich.MasterPage
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {


        SqlCommand lenh = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            String st = ConfigurationManager.ConnectionStrings["QLdl"].ConnectionString;
            SqlConnection ketnoi = new SqlConnection(st);
            ketnoi.Open();
            lenh.Connection = ketnoi;
            lenh.CommandType = CommandType.Text;
            if (!IsPostBack)
            {
                Napmenu();
                ketnoi.Close();
            }

        }
    }
}