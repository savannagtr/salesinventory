//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProyekstoSaCSharp
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        public Product()
        {
            this.Returns = new HashSet<Return>();
            this.Sales = new HashSet<Sale>();
        }
    
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string CategoryID { get; set; }
        public string ColorID { get; set; }
        public Nullable<decimal> Price { get; set; }
        public string Description { get; set; }
        public string SupplierID { get; set; }
        public string WarehouseID { get; set; }
        public Nullable<System.DateTime> DateAdded { get; set; }
        public string Username { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual Color Color { get; set; }
        public virtual Supplier Supplier { get; set; }
        public virtual Warehouse Warehouse { get; set; }
        public virtual ICollection<Return> Returns { get; set; }
        public virtual ICollection<Sale> Sales { get; set; }
    }
}
