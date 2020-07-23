using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace AmmarEcommerce.BusinessLayer
{
    public static class CartHandler
    {
        public static void AddItemToCart(string username, int productid, int quantity)
        {
            EComDatasetTableAdapters.CartsTableAdapter adap = new EComDatasetTableAdapters.CartsTableAdapter();
            
            adap.Insert(username, productid, quantity);
        }

        public static void RemoveItemFromCart(int cartitemid)
        {
            EComDatasetTableAdapters.CartsTableAdapter adap = new EComDatasetTableAdapters.CartsTableAdapter();
            adap.Delete(cartitemid);
        }

        public static DataTable GetCartByUser(string username)
        {
            EComDatasetTableAdapters.CartDetailsTableAdapter adap1 = new EComDatasetTableAdapters.CartDetailsTableAdapter();
            return adap1.GetCartDetails(username);
        }



        internal static void RemoveItemFromCart(string username, string productname)
        {
            EComDatasetTableAdapters.QueriesTableAdapter adap = new EComDatasetTableAdapters.QueriesTableAdapter();
            adap.RemoveItemFromCart(username, productname);
        }

        public static int GetCartItemCount(string username)
        {
            EComDatasetTableAdapters.CartDetailsTableAdapter adap1 = new EComDatasetTableAdapters.CartDetailsTableAdapter();
            return adap1.GetCartDetails(username).Rows.Count;
        }
    }
}