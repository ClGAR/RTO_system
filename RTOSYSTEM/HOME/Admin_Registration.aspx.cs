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
    public partial class WebForm5 : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[""].ConnectionString);
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string dob;
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\RTO_SYSTEM\\RTOSYSTEM\\RTOSYSTEM\\App_Data\\RTODATABSE\\RTO_DATABASE.mdf;Integrated Security=True;User Instance=True";
            con.ConnectionString = constr;
            cmd.Connection = con;
            if (!IsPostBack)
            {
                for (int d = 1; d <= 31; d++)
                {
                  ddlday.Items.Add(d.ToString());
                }
                for (int y = 1995; y <= 2050; y++)
                {
                    ddlyear.Items.Add(y.ToString());
                }
                try
                {
                    con.Open();
                    cmd.CommandText = "select MAX(admin_id) from Admin_Master";
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        string d = dr[0].ToString();
                        if (d == "")
                        {
                            txtaid.Text = "111";
                        }
                        else
                        {
                            int r = Convert.ToInt32(dr[0].ToString());
                            r = r + 1;
                            txtaid.Text = r.ToString();
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

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                if (rbmale.Checked)
                {
                    gender = "Male";

                }
                else
                {
                    gender = "Female";
                }
                dob = ddlday.Text + "/" + ddlmonth.Text + "/" + ddlyear.Text;
                cmd.CommandText = "insert into Admin_Master(admin_id,user_name,first_name,last_name,dob,gender,address,city,mobile,email,q1,q2,q3,pwd,retype_pwd) values(" + txtaid.Text + ",'" + txtuname.Text + "','" + txtfname.Text + "','" + txtlname.Text + "','" + dob + "','" + gender + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txtmobile.Text + "','" + txtemail.Text + "','" + txtq1.Text + "','" + txtq2.Text + "','" + txtq3.Text + "','" + txtpwd.Text + "','" + txtretypepwd.Text + "')";
                int i = cmd.ExecuteNonQuery();
                if (i >0)
                {
                    Response.Write("Insert Successfully");
                }
                else
                {
                    Response.Write("Insert Unsuccessfully");
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

        protected void txtclear_Click(object sender, EventArgs e)
        {
            txtaid.Text = "";
            txtuname.Text = "";
            txtfname.Text = "";
            txtlname.Text = "";
            txtaddress.Text = "";
            txtcity.Text = "";
            txtmobile.Text = "";
            txtemail.Text = "";
            txtq1.Text = "";
            txtq2.Text = "";
            txtq3.Text = "";
            txtpwd.Text = "";
            txtretypepwd.Text = "";


        }
    }
}
