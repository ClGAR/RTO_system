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
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        int count = 0;
        string date;
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
            date= DateTime.Today.ToString("yyyy-MM-dd");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb1 = (RadioButton)ri.FindControl("rb1");
                Label lbans=(Label)ri.FindControl("lblans");
                if (rb1.Checked == true)
                {
                    if (rb1.Text == lbans.Text)
                    {
                        count = count + 1;
                    }
                    else
                    {
                        count = count + 0;
                    }
                }
            }
            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb2 = (RadioButton)ri.FindControl("rb2");
                Label lbans = (Label)ri.FindControl("lblans");
                if (rb2.Checked == true)
                {
                    if (rb2.Text == lbans.Text)
                    {
                        count = count + 1;
                    }
                    else
                    {
                        count = count + 0;
                    }
                }
            }
            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb3 = (RadioButton)ri.FindControl("rb3");
                Label lbans = (Label)ri.FindControl("lblans");
                if (rb3.Checked == true)
                {
                    if (rb3.Text == lbans.Text)
                    {
                        count = count + 1;
                    }
                    else
                    {
                        count = count + 0;
                    }
                }
            }
            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rb4 = (RadioButton)ri.FindControl("rb4");
                Label lbans = (Label)ri.FindControl("lblans");
                if (rb4.Checked == true)
                {
                    if (rb4.Text == lbans.Text)
                    {
                        count = count + 1;
                    }
                    else
                    {
                        count = count + 0;
                    }
                }
                
            }
            lblmarks.Text = count.ToString();

            try
            {
                con.Open();
                string status;
                if (count >= 1)
                {
                    status = "Pass";

                }
                else
                {
                    status = "Fail";

                }
                cmd.CommandText = "insert into Result (user_id,date,marks,status) values("+uid+",'"+date+"',"+lblmarks.Text+",'"+status+"')";
                int i = cmd.ExecuteNonQuery();
                if (status == "Pass")
                {
                    Response.Redirect("~/USER/Driving_License.aspx");
                }
                else
                {
                    Response.Redirect("~/USER/UserHome.aspx");
                   
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

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}
