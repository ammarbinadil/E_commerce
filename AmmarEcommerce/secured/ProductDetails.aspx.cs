using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AmmarEcommerce.BusinessLayer;

namespace AmmarEcommerce.secured
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EComDatasetTableAdapters.DataTable1TableAdapter adap = new EComDatasetTableAdapters.DataTable1TableAdapter();
            EComDataset.DataTable1DataTable dt = adap.GetProductByID(int.Parse(Request.QueryString["id"]));
            if (dt.Rows.Count > 0)
            {
                EComDataset.DataTable1Row dr = (EComDataset.DataTable1Row)dt.Rows[0];
                imgProduct.ImageUrl = dr.ImagePath;
                lblProdctName.Text = dr.ProductName;
                lblProductDesc.Text = dr.Description;
                lblUnitPrice.Text = dr.UnitPrice.ToString();
                hfProductID.Value = dr.ProductID.ToString();
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            CartHandler.AddItemToCart(HttpContext.Current.User.Identity.Name, int.Parse(hfProductID.Value), int.Parse(tbQuantity.Text));
            Response.Redirect("/secured/cart.aspx");
        }
    }
}