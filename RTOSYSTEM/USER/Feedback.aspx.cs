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
    public partial class WebForm14 : System.Web.UI.Page
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
            txtdate.Text = DateTime.Today.ToString("yyyy-MM-dd");
        }

        protected void btnsubi_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "insert into FeedBack (name,mobile,email,date,comment)values('"+txtname.Text+"','"+txtmno.Text+"','"+txtemail.Text+"','"+txtdate.Text+"','"+txtcomment.Text+"')";
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Feedback successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Feedback unsuccessfully')</script>");
                }
            }
            catch (Exception ex)
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
