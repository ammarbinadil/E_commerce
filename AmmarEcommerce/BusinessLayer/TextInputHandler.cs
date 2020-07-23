using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;

namespace AmmarEcommerce.BusinessLayer
{
    public class TextInputHandler
    {
        public void ReadText()
        {
            string[] arr = File.ReadAllLines(HttpContext.Current.Server.MapPath( "/App_Data/test_1.txt"));
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn());
            dt.Columns.Add(new DataColumn());
            dt.Columns.Add(new DataColumn());

            foreach (string itm in arr)
            {
                DataRow dr = dt.NewRow();
                string[] itms = itm.Split(',');
                dr[0] = itms[0];
                dr[1] = itms[1];
                dr[2] = itms[2];
                dt.Rows.Add(dr);
            }

        }
    }
}