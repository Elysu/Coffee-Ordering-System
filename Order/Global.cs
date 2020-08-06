using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Order
{
    public class Global
    {
        private static string orderId;

        public static string OrderId
        {
            set { orderId = value; }
            get { return orderId; }
        }
    }
}