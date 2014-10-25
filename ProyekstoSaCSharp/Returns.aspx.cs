using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyekstoSaCSharp
{
    public partial class Returns : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["SQLConnection"].ConnectionString);
            con.Open();
            string x = "INSERT INTO Returns(SalesID, ProductID, CategoryID, ColorID, Defect, Price, TaxID, PaymentID, DateReturned, Username) VALUES ('" + txtSalesID.Text 
                + "', (SELECT ProductID FROM Sales WHERE SalesID = " +
                txtSalesID.Text + "), (SELECT CategoryID FROM Sales WHERE SalesID = " +
                txtSalesID.Text + "), (SELECT ColorID FROM Sales WHERE SalesID = " +
                txtSalesID.Text + "), '" +
                txtDefect.Text + "', (SELECT Price FROM Sales WHERE SalesID = " +
                txtSalesID.Text + "), (SELECT TaxID FROM Sales WHERE SalesID = " +
                txtSalesID.Text + "), (SELECT PaymentID FROM Sales WHERE SalesID = " +
                txtSalesID.Text + "), '" +
                DateTime.Now + "',  '" + Label1.Text + "')";
            SqlCommand cmd1 = new SqlCommand(x, con);

            try
            {

                cmd1.ExecuteNonQuery();
            }

            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }


            int i = Convert.ToInt32(txtSalesID.Text);
            SIEntities context = new SIEntities();
            Sale delsale = context.Sales.Find(i);
            context.Sales.Remove(delsale);
            context.SaveChanges();
            Response.Redirect("Returns.aspx");
            

             
        }
    }
}