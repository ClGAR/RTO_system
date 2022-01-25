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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\RTO_SYSTEM\\RTOSYSTEM\\RTOSYSTEM\\App_Data\\RTODATABSE\\RTO_DATABASE.mdf;Integrated Security=True;User Instance=True";
            con.ConnectionString = constr;
            cmd.Connection = con;

            try
            {
                con.Open();
                cmd.CommandText = "select  * from SetTest";
                int i=cmd.ExecuteNonQuery();
                da.SelectCommand = cmd;
                da.Fill(ds);
                TextBox1.Text=ds.Tables[0].Rows[0][1].ToString();

                TextBox2.Text = ds.Tables[0].Rows[0][3].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0][4].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0][5].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0][6].ToString();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                con.Open();
                cmd.CommandText = "SELECT TOP(3) * FROM SetTest ORDER BY NEWID()";
                da.SelectCommand = cmd;
                da.Fill(ds);
                i= i += 1;
                TextBox1.Text = ds.Tables[0].Rows[i][1].ToString();
                TextBox2.Text = ds.Tables[0].Rows[i][3].ToString();
                TextBox3.Text = ds.Tables[0].Rows[i][4].ToString();
                TextBox4.Text = ds.Tables[0].Rows[i][5].ToString();
                TextBox5.Text = ds.Tables[0].Rows[i][6].ToString();
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
