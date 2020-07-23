using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmmarEcommerce.Secured
{
    public partial class addproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                String relTargetPath = "/images/" + DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(fuImage.FileName);
                String targetPath = MapPath(relTargetPath);
                fuImage.PostedFile.SaveAs(targetPath);
                EComDatasetTableAdapters.QueriesTableAdapter qAdap = new EComDatasetTableAdapters.QueriesTableAdapter();

                qAdap.InsertNewProduct(tbName.Text, tbDescription.Text, relTargetPath, decimal.Parse(tbUnitPrice.Text), int.Parse(ddCategory.SelectedValue));
                Session["issuccess"] = "true";
                Response.Redirect("/admin/StatusPage.aspx");
            }
            catch (Exception ex)
            {
            }
          

        }
    }
}