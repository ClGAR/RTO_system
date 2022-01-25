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

namespace RTOSYSTEM.HOME
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                setimage();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            setimage();
        }

        private void setimage()
        {
            Random ran = new Random();
            int i = ran.Next(1, 4);
            Image1.ImageUrl = "~/homepage/" + i.ToString() + ".jpg";
        }

        protected void Timer1_Tick1(object sender, EventArgs e)
        {

        }

       
    }
}
