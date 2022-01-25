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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\RTO_SYSTEM\\RTOSYSTEM\\RTOSYSTEM\\App_Data\\RTODATABSE\\RTO_DATABASE.mdf;Integrated Security=True;User Instance=True";
            con.ConnectionString = constr;
            cmd.Connection = con;

            if (!IsPostBack)
            {
                if (Session["userid"] != null)
                {
                    txtuid.Text = Session["userid"].ToString();
                }

                if (Session["name"] != null)
                {
                    txtname.Text = Session["name"].ToString();
                }
                if (Session["dob"] != null)
                {
                    txtdob.Text = Session["dob"].ToString();
                }
                if (Session["address"] != null)
                {
                    txtaddress.Text = Session["address"].ToString();
                }
                if (Session["gender"] != null)
                {
                    gender = Session["gender"].ToString();
                }
                if (gender == "Male")
                {
                    rbmale.Checked = true;
                }
                else
                {
                    rbfemale.Checked = true;
                }
                try
                {
                    con.Open();
                    cmd.CommandText = "select MAX(licence_no) from Driving_license ";
                    string maxid = cmd.ExecuteScalar() as string;
                    if (maxid == null)
                    {
                        txtlicence_no.Text = "DL-123456789";

                    }
                    else
                    {
                        int j = int.Parse(maxid.Substring(3, 9));
                        j++;
                        txtlicence_no.Text = String.Format("DL-{00:000000000}", j);
                    }
                    Session["lno"] = txtlicence_no.Text;
                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }
                finally
                {
                    con.Close();
                }
                txtdate.Text = DateTime.Today.ToString("yyyy-MM-dd");
                txtexpire_date.Text = DateTime.Now.AddYears(10).ToString("yyyy-MM-dd");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
              try
                {

            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "~/USER/image/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/USER/image/") + filename);
                if (rbmale.Checked)
                {
                    gender = "Male";

                }
                else
                {
                    gender = "Female";
                }
                    con.Open();
                    cmd.CommandText = "insert into Driving_license(licence_no,user_id,name,dob,address,blood_group,gender,vehicle_type,photo,date,expire_date)values('" + txtlicence_no.Text + "'," + txtuid.Text + ",'" + txtname.Text + "','" + txtdob.Text + "','" + txtaddress.Text + "','" + txtblood_group.Text + "','" + gender + "','" + ddlvehicle_type.Text + "','" + filepath + "','" + txtdate.Text + "','" + txtexpire_date.Text + "')";
                    int i = cmd.ExecuteNonQuery();
                    if (i>0)

                    {
                        Response.Write("insert successfully");
                    }
                    else
                    {
                        Response.Write("insert unsuccessfully");
                    }

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

 
  
