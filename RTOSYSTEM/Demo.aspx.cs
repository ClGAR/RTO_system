using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace RTOSYSTEM
{
    public partial class Demo : System.Web.UI.Page
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
            if (Session["user_id"] != null)
            {
                uid = Session["user_id"].ToString();
            }
            try
            {
                con.Open();
                cmd.CommandText = "select user_id,first_name,last_name,city from User_Master where user_id="+uid+"";
                da.SelectCommand = cmd;
                da.Fill(ds);
                //txtuid.Text = ds.Tables[0].Rows[0][0].ToString();
                //txtfname.Text = ds.Tables[0].Rows[0][1].ToString();
                //txtuname.Text = ds.Tables[0].Rows[0][2].ToString();
                //txtlname.Text= ds.Tables[0].Rows[0][3].ToString();
                //txtcity.Text= ds.Tables[0].Rows[0][4].ToString();
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

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}
