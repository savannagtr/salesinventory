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
    
    public partial class Return
    {
        public int ReturnID { get; set; }
        public Nullable<int> ProductID { get; set; }
        public string CategoryID { get; set; }
        public string ColorID { get; set; }
        public Nullable<decimal> Price { get; set; }
        public string TaxID { get; set; }
        public string PaymentID { get; set; }
        public Nullable<System.DateTime> DateReturned { get; set; }
        public string Username { get; set; }
        public string Defect { get; set; }
        public Nullable<int> SalesID { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual Color Color { get; set; }
        public virtual PaymentType PaymentType { get; set; }
        public virtual Product Product { get; set; }
        public virtual TaxRate TaxRate { get; set; }
    }
}
