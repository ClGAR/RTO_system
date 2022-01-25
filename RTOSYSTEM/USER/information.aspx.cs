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
    public partial class WebForm15 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string uid;
        string gender;
      
        string rb;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\RTO_SYSTEM\\RTOSYSTEM\\RTOSYSTEM\\App_Data\\RTODATABSE\\RTO_DATABASE.mdf;Integrated Security=True;User Instance=True";
            con.ConnectionString = constr;
            cmd.Connection = con;
            if (!Page.IsPostBack)
            {
                if (Session["user_id"] != null)
                {
                    uid = Session["user_id"].ToString();
                }
               
                
                for (int d = 1; d <= 31; d++)
                {
                    ddldate.Items.Add(d.ToString());
                }
                for (int y = 1995; y <= 2050; y++)
                {
                    ddlyear.Items.Add(y.ToString());
                }
                try
                {
                    con.Open();
                    cmd.CommandText = "select * from User_Master where user_id=" + uid + "";
                    da.SelectCommand = cmd;
                    da.Fill(ds);
                    txtuserid.Text = ds.Tables[0].Rows[0][0].ToString();
                    txtuname.Text = ds.Tables[0].Rows[0][1].ToString();
                    txtfname.Text = ds.Tables[0].Rows[0][2].ToString();
                    txtlname.Text = ds.Tables[0].Rows[0][3].ToString();
                    txtdob.Text = ds.Tables[0].Rows[0][4].ToString();
                    txtgender.Text = ds.Tables[0].Rows[0][5].ToString();
                    rb = ds.Tables[0].Rows[0][5].ToString();
                    if (rb == "male")
                    {
                        rbmale.Checked = true;
                    }
                    else
                    {
                        rbfemale.Checked = true;
                    }
                    txtaddrss.Text = ds.Tables[0].Rows[0][6].ToString();
                    txtcity.Text = ds.Tables[0].Rows[0][7].ToString();
                    txtmobile.Text = ds.Tables[0].Rows[0][8].ToString();
                    txtemail.Text = ds.Tables[0].Rows[0][9].ToString();
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

        protected void btnedit_Click(object sender, EventArgs e)
        {
            txtuname.ReadOnly = false;
            txtfname.ReadOnly = false;
            txtlname.ReadOnly = false;
            txtgender.ReadOnly = false;
            txtdob.ReadOnly = false;
            txtmobile.ReadOnly = false;
            txtemail.ReadOnly = false;
            txtaddrss.ReadOnly = false;
            txtgender.Visible = false;
            txtcity.Visible = false;
            rbmale.Visible = true;
            rbfemale.Visible = true;
            txtdob.Visible = false;
            ddldate.Visible = true;
            ddlmonth.Visible = true;
            ddlyear.Visible = true;
            
            
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            
            if (rbmale.Checked)
            {
                gender = "Male";

            }
            else
            {
                gender = "Female";
            }
            string dob = ddldate.Text + "/" + ddlmonth.Text + "/" + ddlyear.Text;

            try
            {
                con.Open();
                cmd.CommandText = "update User_Master set user_name='"+txtuname.Text+"', first_name='"+txtfname.Text+"', last_name='"+txtlname.Text+"',dob='"+dob+"', gender='"+gender+"', address='"+txtaddrss.Text+"', city='"+txtcity.Text+"', mobile="+txtmobile.Text+", email='"+txtemail.Text+"' where user_id="+txtuserid.Text+"";
                int i = cmd.ExecuteNonQuery();
                if(i>0)
                    {
                    Response.Write("<script>alert('Update Successfully')</script>");
                }
                else
                
                    {
                        Response.Write("<script>alert('Update Unsuccessfully')</script>");
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
