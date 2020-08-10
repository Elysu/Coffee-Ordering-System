using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class OrderDeleteConfirm : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["userConn"].ConnectionString;

        int num;
        string orderId;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitDelete_Click(object sender, EventArgs e)
        {
            setCoffee();
            orderId = num.ToString();

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string deleteOrderQuery = "";
            SqlCommand cmdDeleteOrder = new SqlCommand(deleteOrderQuery, con);

            int delete = 0;
            try
            {
                delete = cmdDeleteOrder.ExecuteNonQuery();

                //check if record was successfully inserted
                if (delete > 0)
                {
                    
                }
                else
                {
                    regErrorMsg.Text = "Registration unsuccessful, please try again later.";
                }
            }
            catch (Exception err)
            {
                regErrorMsg.Text = "Registration Error <br /> " + err.Message;
            }
            finally
            {
                con.Close();
            }
        }

        protected void cancelDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.UrlReferrer.ToString());
        }

        private void setCoffee()
        {
            string orderId = Global.OrderId;
            num = Int16.Parse(orderId);
        }
    }
}