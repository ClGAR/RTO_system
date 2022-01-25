using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace RTOSYSTEM.USER
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\RTO_SYSTEM\\RTOSYSTEM\\RTOSYSTEM\\App_Data\\RTODATABSE\\RTO_DATABASE.mdf;Integrated Security=True;User Instance=True";
            con.ConnectionString = constr;
            cmd.Connection = con;

            txtcurrentdate.Text = DateTime.Today.ToString("yyyy-MM-dd");
            txtexpiredate.Text = DateTime.Now.AddYears(10).ToString("yyyy-MM-dd");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText="update Driving_license set name='"+txtholdernam.Text+"', date='"+txtcurrentdate.Text+"', expire_date='"+txtexpiredate.Text+"' where licence_no='"+txtlicence_no.Text+"'";
                int i = cmd.ExecuteNonQuery();
                da.SelectCommand = cmd;
                da.Fill(ds);
                if (i > 0)
                {
                    Response.Write("<script>alert('Renew License Successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Renew License unsuccessfully')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
            finally
            {
                con.Close();
            }
        }
    }
}
