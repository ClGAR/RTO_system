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
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string uid;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\RTO_SYSTEM\\RTOSYSTEM\\RTOSYSTEM\\App_Data\\RTODATABSE\\RTO_DATABASE.mdf;Integrated Security=True;User Instance=True";
            con.ConnectionString = constr;
            cmd.Connection = con;
            if (Session["userid"] != null)
            {
                uid = Session["userid"].ToString();
            }
            if (Session["license"] != null)
            {
                txtamount.Text= Session["license"].ToString();
            }
        }

        protected void btncalendar_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dt = new DateTime();
            dt = Calendar1.SelectedDate.Date;
            txtdate.Text = dt.ToShortDateString();
            
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "insert into Payment (userid,amount,chname,cnumber,cvv,edate)values("+uid+","+txtamount.Text+",'"+txthname.Text+"',"+txtcnumber.Text+","+txtcvv.Text+",'"+txtdate.Text+"')";
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    if (txtamount.Text == "500")
                    {
                        Response.Redirect("RTO_TEST.aspx");
                    }
                    else if (txtamount.Text == "100")
                    {
                        Response.Redirect("Dupicate_License.aspx");
                    }
                    else
                    {
                        Response.Redirect("Renew_Driving_License.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Payment unsuccessfully')</script>");
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
