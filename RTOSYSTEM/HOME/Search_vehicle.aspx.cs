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
    public partial class WebForm8 : System.Web.UI.Page
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
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText="select * from Vehicle_Registration where vehicle_no='"+txtseach_vehicle.Text+"'";
                int i=cmd.ExecuteNonQuery();
                da.SelectCommand=cmd;
                da.Fill(ds);
                if(ds.Tables[0].Rows.Count>0)
                {
                    GridView1.DataSource=ds.Tables[0];
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('There Is no Records')</script>");
                }
               
            }
             catch(Exception ex)
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
