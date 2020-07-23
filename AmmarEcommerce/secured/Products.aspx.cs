using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmmarEcommerce.secured
{
    public partial class Products1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EComDatasetTableAdapters.DataTable1TableAdapter adap1 = new EComDatasetTableAdapters.DataTable1TableAdapter();
            EComDataset.DataTable1DataTable tab1 = adap1.GetProducts();

            rpProducts.DataSource = tab1;
            rpProducts.DataBind();
        }
        public void ShowProducts()
        {
            EComDatasetTableAdapters.DataTable1TableAdapter adap1 = new EComDatasetTableAdapters.DataTable1TableAdapter();
            EComDataset.DataTable1DataTable tab1 = adap1.GetProducts();

            rpProducts.DataSource = tab1;
            rpProducts.DataBind();
        }

        public EComDataset.DataTable1DataTable ShowMyProducts()
        {
            EComDatasetTableAdapters.DataTable1TableAdapter adap1 = new EComDatasetTableAdapters.DataTable1TableAdapter();
            return adap1.GetProducts();
        }
    }
    
}