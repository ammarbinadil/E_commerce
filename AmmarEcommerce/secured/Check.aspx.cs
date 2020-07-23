using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmmarEcommerce.secured
{
    public partial class Check : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindRepeater();
            }

        }


        protected void btnAddAddress_Click(object sender, EventArgs e)
        {
            try
            {

                EComDatasetTableAdapters.QueriesTableAdapter qAdap = new EComDatasetTableAdapters.QueriesTableAdapter();

                qAdap.InsertNewAddress(HttpContext.Current.User.Identity.Name, tbAddress.Text, tbCity.Text, tbState.Text, tbPincode.Text, tbMobileNumber.Text, tbReceiverName.Text);
                Session["issuccess"] = "true";
                Response.Redirect("/secured/check.aspx");
            }
            catch (Exception ex)
            {
            }


        }

        private void bindRepeater()
        {
             EComDatasetTableAdapters.AddressTableAdapter adap1 = new EComDatasetTableAdapters.AddressTableAdapter();
                EComDataset.AddressDataTable tab1 = adap1.GetAddressesByUser(HttpContext.Current.User.Identity.Name);

                rpAddresses.DataSource = tab1;
                rpAddresses.DataBind();
        }



        protected void rpAddresses_ItemCommand(object source, RepeaterCommandEventArgs v)
        {
            if (v.CommandName == "proceed")
            {
                Session["addressID"] = v.CommandArgument;
                

                Response.Redirect("/secured/Order.aspx");
            }
            if (v.CommandName == "delete")
            {
                Session["addressID"] = v.CommandArgument;
                EComDatasetTableAdapters.QueriesTableAdapter qAdap = new EComDatasetTableAdapters.QueriesTableAdapter();
                qAdap.DeleteAddressbyID(int.Parse(Session["addressID"].ToString()));
                bindRepeater();
            }
        }

    }
}