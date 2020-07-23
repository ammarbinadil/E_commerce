using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmmarEcommerce.secured
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                EComDatasetTableAdapters.AddressTableAdapter adap1 = new EComDatasetTableAdapters.AddressTableAdapter();
                EComDataset.AddressDataTable tab1 = adap1.GetAddressesByUser(HttpContext.Current.User.Identity.Name);

                rpAddresses.DataSource = tab1;
                rpAddresses.DataBind();
            }

        }

        protected void btnAddAddress_Click(object sender, EventArgs e)
        {
            try
            {

                EComDatasetTableAdapters.QueriesTableAdapter qAdap = new EComDatasetTableAdapters.QueriesTableAdapter();

                qAdap.InsertNewAddress(HttpContext.Current.User.Identity.Name, tbAddress.Text, tbCity.Text, tbState.Text, tbPincode.Text, tbMobileNumber.Text, tbReceiverName.Text);
                Session["issuccess"] = "true";
                Response.Redirect("/secured/checkout.aspx");
            }
            catch (Exception ex)
            {
            }


        }

        protected void rpAddresses_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "proceed")
            {
                Response.Redirect("");
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}
