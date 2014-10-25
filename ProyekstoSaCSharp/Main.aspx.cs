using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyekstoSaCSharp
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SIEntities context = new SIEntities();
            Product newprod = new Product()
            {
                ProductName = tbProductName.Text,
                CategoryID = Convert.ToString(ddlCategory.SelectedValue),
                ColorID = Convert.ToString(ddlColor.SelectedValue),
                Price = Convert.ToDecimal(tbPrice.Text),
                Description = tbDescription.Text,
                SupplierID = Convert.ToString(ddlSupplier.SelectedValue),
                WarehouseID = Convert.ToString(ddlWarehouse.SelectedValue),
                DateAdded = DateTime.Now,
                Username = Label1.Text
            };
            context.Products.Add(newprod);
            context.SaveChanges();


            Response.Redirect("Main.aspx");
        }
    }
}