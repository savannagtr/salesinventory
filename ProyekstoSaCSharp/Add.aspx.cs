using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyekstoSaCSharp
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {


                SIEntities context = new SIEntities();

                Category newcat = new Category()
                {
                    CategoryID = txtAddCategoryID.Text,
                    CategoryName = txtAddCategoryName.Text,
                    Description = txtCategoryDescription.Text,
                };


                context.Categories.Add(newcat);
                context.SaveChanges();
                txtAddCategoryID.Text = "";
                txtAddCategoryName.Text = "";
                txtCategoryDescription.Text = "";
        }

        protected void btnAddColor_Click(object sender, EventArgs e)
        {
            SIEntities context = new SIEntities();

            Color newcolor = new Color()
            {
                ColorID = txtAddColorID.Text,
                ColorName = txtAddColorName.Text,
            };

            context.Colors.Add(newcolor);
            context.SaveChanges();

            txtAddColorID.Text = "";
            txtAddColorName.Text = "";
        }

        protected void btnAddSupplier_Click(object sender, EventArgs e)
        {
            SIEntities context = new SIEntities();

            Supplier newsupplier = new Supplier()
            {
                SupplierID = txtAddSuppSupplierID.Text,
                SupplierName = txtAddSuppSupplierName.Text,
                Address = txtAddSuppAddress.Text,
                ContactNo = txtAddSuppContactNo.Text,
            };

            context.Suppliers.Add(newsupplier);
            context.SaveChanges();
            txtAddSuppSupplierID.Text = "";
            txtAddSuppAddress.Text = "";
            txtAddSuppSupplierName.Text = "";
            txtAddSuppContactNo.Text = "";
        }

        protected void btnAddWarehouse_Click(object sender, EventArgs e)
        {
            SIEntities context = new SIEntities();

            Warehouse newwhouse = new Warehouse()
            {
                WarehouseID = txtAddWHWarehouseID.Text,
                WarehouseName = txtAddWHWarehouseName.Text,
                Address = txtAddWHAddress.Text,
                ContactNo = txtAddWHContactNo.Text,
            };

            txtAddWHWarehouseID.Text = "";
            txtAddWHWarehouseName.Text = "";
            txtAddWHAddress.Text = "";
            txtAddWHContactNo.Text = "";
            context.Warehouses.Add(newwhouse);
            context.SaveChanges();
        }
    }
}