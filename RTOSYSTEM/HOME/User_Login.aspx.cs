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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string uid;
        string fname;
        string lname;
        string address;
        string dob;
        string name;
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["user_id"] = txtuid.Text;
            string constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\RTO_SYSTEM\\RTOSYSTEM\\RTOSYSTEM\\App_Data\\RTODATABSE\\RTO_DATABASE.mdf;Integrated Security=True;User Instance=True";
            con.ConnectionString = constr;
            cmd.Connection = con;

            try
            {
              
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

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "select  * from User_Master where user_id='" + txtuid.Text + "' and pwd='" + txtpwd.Text + "' ";
                int i = cmd.ExecuteNonQuery();
                da.SelectCommand = cmd;
                da.Fill(ds);
               
                if (ds.Tables[0].Rows.Count > 0)
                {
                    uid = ds.Tables[0].Rows[0][0].ToString();
                    fname = ds.Tables[0].Rows[0][2].ToString();
                    lname = ds.Tables[0].Rows[0][3].ToString();
                    dob = ds.Tables[0].Rows[0][4].ToString();
                    gender = ds.Tables[0].Rows[0][5].ToString();
                    address = ds.Tables[0].Rows[0][6].ToString();
                    name = fname.ToString() + " " + lname.ToString();
                    Session["userid"] = uid.ToString();
                    Session["dob"] = dob.ToString();
                    Session["name"] = name.ToString();
                    Session["address"] = address.ToString();
                    Session["gender"] = gender.ToString();
                Response.Redirect("~/USER/UserHome.aspx");
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
