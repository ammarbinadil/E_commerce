using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmmarEcommerce.secured
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEeadText_Click(object sender, EventArgs e)
        {
            BusinessLayer.TextInputHandler tih = new BusinessLayer.TextInputHandler();
            tih.ReadText();
        }
    }
}