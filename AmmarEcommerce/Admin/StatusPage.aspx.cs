using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmmarEcommerce.Secured
{
    public partial class StatusPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["issuccess"] == null)
            {
                Response.Redirect("/secured/home.aspx");
            }
            else
            {
                Session["issuccess"] =null;
            }
        }
    }
}