using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;
using AmmarEcommerce.secured;

namespace AmmarEcommerce
{
    /// <summary>
    /// Summary description for Web_Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class Web_Service1 : System.Web.Services.WebService
    {

        [WebMethod]

        public string GetProducts(string p, string x)
        {
            Products1 p = new Products1();
            return JsonConvert.SerializeObject(p.ShowMyProducts());
        }
    }
}
