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
    public partial class WebForm4 : System.Web.UI.Page
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

        protected void btnTransfer_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "update Vehicle_Registration set owner_name='"+txtnewownername.Text+"', relative='"+txtrelative.Text+ "', parmanent_add='"+ txtnewowerAddress.Text +"', age_owner=" + txtageofnewowner.Text + "   where owner_name='" + txtcurrentownername.Text + "' and vehicle_no='" + txtVehicle_Number.Text + "'";
                int i = cmd.ExecuteNonQuery();
                da.SelectCommand = cmd;
                da.Fill(ds);
                if (i>0)
                {
                    Response.Write("<script>alert('Transfer Successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Transfer unsuccessfully')</script>");
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
