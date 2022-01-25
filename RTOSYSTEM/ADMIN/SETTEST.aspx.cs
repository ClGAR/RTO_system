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

namespace RTOSYSTEM.ADMIN
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string filename;
        string filepath;
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
                    cmd.CommandText = "select Count(qid) from SetTest";
                    da.SelectCommand = cmd;
                    da.Fill(ds);
                    int j = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
                    if (j == 0)
                    {
                        txtqid.Text = "1";
                    }
                    else
                        txtqid.Text = Convert.ToString(j + 1);
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

        protected void btnsibmit_Click1(object sender, EventArgs e)
        {
            if (Fuimage.HasFile)
            {
                filename = Fuimage.PostedFile.FileName;
                filepath = "/ADMIN/image" + Fuimage.FileName;
                Fuimage.PostedFile.SaveAs(Server.MapPath("~/ADMIN/image") + filename);
                try
                {
                    con.Open();
                    cmd.CommandText = "insert into SetTest (qid,question,image,q1,q2,q3,q4,ans)values(" + txtqid.Text + ",'"+txtquestion.Text+"','" + filepath + "','" + txtoption1.Text + "','" + txtoption2.Text + "','" + txtoption3.Text + "','" + txtoption4.Text + "','"+txtans.Text+"')";
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("<script>alert('Insert Successfully')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Insert unsuccessfully')</script>");
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

        protected void ddlid_SelectedIndexChanged(object sender, EventArgs e)
        {
                try
                {
                    con.Open();
                    cmd.CommandText = "select * from SetTest where  qid=" + ddlid.SelectedItem.Text + "";
                    da.SelectCommand = cmd;
                    da.Fill(ds);
                    txtqid.Text = ds.Tables[0].Rows[0][0].ToString();
                    txtquestion.Text = ds.Tables[0].Rows[0][1].ToString();
                    txtoption1.Text = ds.Tables[0].Rows[0][3].ToString();
                    txtoption2.Text = ds.Tables[0].Rows[0][4].ToString();
                    txtoption3.Text = ds.Tables[0].Rows[0][5].ToString();
                    txtoption4.Text = ds.Tables[0].Rows[0][6].ToString();
                    txtans.Text = ds.Tables[0].Rows[0][7].ToString();
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

        protected void btndelete_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "delete from SetTest where qid="+txtqid.Text+"";
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Delete Successfully')</script>");
                    for (int j = 0; j < 500;j++ )
                    {

                    }
                    Response.Redirect("SETTEST.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Delete unsuccessfully')</script>");
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

       
        protected void btnupdate_Click1(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "update SetTest set question='" + txtquestion.Text + "', image='" + filepath + "',q1='" + txtoption1.Text + "',q2='" + txtoption2.Text + "',q3='" + txtoption3.Text + "', ans='" + txtans.Text + "' where qid=" + txtqid.Text + "";
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Update Successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('update unsuccessfully')</script>");
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
