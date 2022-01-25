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

namespace RTOSYSTEM.HOME
{
    public partial class WebForm6 : System.Web.UI.Page
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
            Session["uid"] = txtaid.Text;
        }
        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "select  * from Admin_Master where admin_id=" + txtaid.Text + " and q1='" + txtq1.Text + "' and q2='" + txtq2.Text + "' and q3='" + txtq3.Text + "'";
                int i = cmd.ExecuteNonQuery();
                da.SelectCommand = cmd;
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Response.Redirect("~/HOME/Admin_updatepwd.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Please Enter Currect Password and user Name')</script>");
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
