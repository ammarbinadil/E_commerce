using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AmmarEcommerce.BusinessLayer;

namespace AmmarEcommerce.secured
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvCart.DataSource = CartHandler.GetCartByUser(HttpContext.Current.User.Identity.Name);
                gvCart.DataBind();
                LbCount.Text = BusinessLayer.CartHandler.GetCartItemCount(HttpContext.Current.User.Identity.Name).ToString();
            }

        }

        protected void gvCart_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "RemoveItem")
            {
                CartHandler.RemoveItemFromCart(HttpContext.Current.User.Identity.Name, e.CommandArgument.ToString());
                gvCart.DataSource = CartHandler.GetCartByUser(HttpContext.Current.User.Identity.Name);
                gvCart.DataBind();
            }
        }

        protected void gvCart_DataBound(object sender, EventArgs e)
        {
            decimal totAmount = 0;
            foreach (GridViewRow gvr in gvCart.Rows)
            {
                if (gvr.RowType == DataControlRowType.DataRow)
                {
                    totAmount += decimal.Parse(gvr.Cells[4].Text);
                }
              

            }
            gvCart.FooterRow.Cells[4].Text = totAmount.ToString();
            LbTotal.Text = totAmount.ToString();

           

        }

        protected void btCheckout_Click(object sender, EventArgs e)
        {
            Session["TotalCost"] = LbTotal.Text;
            Response.Redirect("/secured/check.aspx");
        }


    }
}