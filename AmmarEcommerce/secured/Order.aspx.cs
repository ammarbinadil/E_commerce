using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmmarEcommerce.secured
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        decimal tot = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            EComDatasetTableAdapters.CartDetailsTableAdapter adap1 = new EComDatasetTableAdapters.CartDetailsTableAdapter();
            rpOrder.DataSource = adap1.GetCartDetails(HttpContext.Current.User.Identity.Name);
            rpOrder.DataBind();
            if (Session["addressID"] == null | Session["TotalCost"] == null)
            {
                Response.Redirect("/secured/home.aspx");
            }
            else
            {
                String addressid = Session["addressID"].ToString();
                lbTotalCost.Text = Session["TotalCost"].ToString();



                EComDatasetTableAdapters.AddressTableAdapter addAdap = new EComDatasetTableAdapters.AddressTableAdapter();
                EComDataset.AddressDataTable addDt = addAdap.GetAddressById(int.Parse(addressid));
                if (addDt.Rows.Count > 0)
                {
                    EComDataset.AddressRow addRow = (EComDataset.AddressRow)addDt.Rows[0];
                    lblAddress.Text = addRow.Address_line_1;
                    lblState.Text = addRow.State;
                    lblPin.Text = addRow.Pincode;
                    lblCity.Text = addRow.City;
                    lblMobile.Text = addRow.Mobile;
                    lblReceiver.Text = addRow._Receiver_s_Name;
                }

            }
        }

        protected void rpOrder_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            foreach (RepeaterItem itm in rpOrder.Items)
            {

            }
        }
    }
}