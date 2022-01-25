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
    public partial class WebForm6 : System.Web.UI.Page
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
            try
            {
                con.Open();
                cmd.CommandText = "select licence_no from Driving_license where user_id=" + uid + "";
                da.SelectCommand = cmd;
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtlicence_no.Text = ds.Tables[0].Rows[0][0].ToString(); 
                }
                else
                {
                    Response.Write("there is no such records"); 
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
            if (Session["name"] != null)
            {
                txtname.Text = Session["name"].ToString();
            }
            if (Session["dob"] != null)
            {
                txtdob.Text = Session["dob"].ToString();
            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "insert into Duplicate_License(licence_no,user_id,name,dob,vehicle_type)values('" + txtlicence_no.Text + "',"+uid+",'" + txtname.Text + "','" + txtdob.Text + "','" + ddlvehicle_type.Text + "')";
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    Response.Write("insert successfully");
                }
                else
                {
                    Response.Write("insert unsuccessfully");
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

