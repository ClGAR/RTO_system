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
    public partial class WebForm3 : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                try
                {
                    con.Open();
                    cmd.CommandText = "select MAX(vehicle_no) from Vehicle_Registration ";
                    string maxid = cmd.ExecuteScalar() as string;
                    if (maxid == null)
                    {
                        txtvehicle_regno.Text = "VR-123456789";

                    }
                    else
                    {
                        int j = int.Parse(maxid.Substring(3, 9));
                        j++;
                        txtvehicle_regno.Text = String.Format("VR-{00:000000000}", j);
                    }

                    if (Session["userid"] != null)
                    {
                        txtuid.Text = Session["userid"].ToString();
                    }

                    if (Session["name"] != null)
                    {
                        txtowenername.Text = Session["name"].ToString();
                    }
                    if (Session["address"] != null)
                    {
                        txtpermanent_address.Text = Session["address"].ToString();
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "insert into Vehicle_Registration(vehicle_no,user_id,owner_name,relative,parmanent_add,age_owner,vehicle_type,vehicle_modal,vehicle_manufacture,area_name,vehicle_chassis_no) values('"+txtvehicle_regno.Text+"',"+txtuid.Text+",'"+txtowenername.Text+"','"+txtrelative.Text+"','"+txtpermanent_address.Text+"',"+txtage_owner.Text+",'"+ddlvehicletype.Text+"','"+txtvehiclemodal.Text+"','"+txtvehiclemanufacture.Text+"','"+txtareaname.Text+"','"+txtvehiclechassisno.Text+"')";
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
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

        protected void ddlvehicletype_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlvehicle_type_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
