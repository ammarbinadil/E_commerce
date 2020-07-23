using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmmarEcommerce
{
    public partial class Login_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/secured/home.aspx");
        }



        protected void btnRegister_Click1(object sender, EventArgs e)
        {

            Response.Redirect("~/register.aspx");
        }

    }
}