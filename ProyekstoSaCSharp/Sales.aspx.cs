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
    public partial class Sales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAddSelect_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["SQLConnection"].ConnectionString);
            con.Open();
            string x = "INSERT into Sales(TransactionID, ProductID, CategoryID, ColorID, Price, PaymentID, TaxID, Tax, DateSold, Username) VALUES ('" + txtTransactionID.Text + "', '" +
                txtSelectProductID.Text + "', (SELECT CategoryID FROM Products WHERE ProductID = " +
                txtSelectProductID.Text + "), (SELECT ColorID FROM Products WHERE ProductID = " +
                txtSelectProductID.Text + "), (SELECT Price FROM Products WHERE ProductID = " +
                txtSelectProductID.Text + "), '" +
                ddlPaymentType.SelectedValue + "', '" +
                ddlTaxType.SelectedValue + "', (SELECT TaxValue FROM TaxRate Where TaxID = '" +
                ddlTaxType.SelectedValue + "'), '" +
                DateTime.Now + "', '" + Label1.Text + "')";
            SqlCommand cmd1 = new SqlCommand(x, con);

            try
            {
                lblSold.Text = "Product Sold";
                cmd1.ExecuteNonQuery();
            }

            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }

            int i = Convert.ToInt32(txtSelectProductID.Text);
            SIEntities context = new SIEntities();
            Product delprod = context.Products.Find(i);
            context.Products.Remove(delprod);
            context.SaveChanges();
            Response.Redirect("Sales.aspx");
        }

        protected void lvAvailableProducts_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAddSave_Click(object sender, EventArgs e)
        {
            SIEntities context = new SIEntities();
            Transaction newtrans = new Transaction()
            {
                TransactionCode = txtTransactionID.Text,
                DateSold = DateTime.Now,
                Username = Label1.Text,
            };

            context.Transactions.Add(newtrans);
            context.SaveChanges();

        }


    }
}