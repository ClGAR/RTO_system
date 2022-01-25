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
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string uid;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] != null)
            {
                uid = Session["uid"].ToString();
     
            }
            string constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\RTO_SYSTEM\\RTOSYSTEM\\RTOSYSTEM\\App_Data\\RTODATABSE\\RTO_DATABASE.mdf;Integrated Security=True;User Instance=True";
            con.ConnectionString = constr;
            cmd.Connection = con;
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
           
            try
            {
                con.Open();
                cmd.CommandText = "update User_Master set pwd='"+txtnewpwd.Text+"', retype_pwd='"+txtretypepwd.Text+"' where user_id='"+uid+"'";
                int i = cmd.ExecuteNonQuery();
                da.SelectCommand = cmd;
                da.Fill(ds);
                
                if (i>0)
                {
                      
                    Response.Redirect("~/HOME/User_Login.aspx");
                    Response.Write("<script>alert('Password Reset')</script>"); 
                }
         
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
            finally
            {
            }
        }
    }
}
