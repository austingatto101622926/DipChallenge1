namespace DipChallenge1_API.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Order")]
    public partial class Order
    {
        [Key]
        [Column(Order = 0, TypeName = "date")]
        public DateTime OrderDate { get; set; }

        public int? Quantity { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ShipDate { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(50)]
        public string ProdID { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(50)]
        public string CustID { get; set; }

        [StringLength(50)]
        public string ShipMode { get; set; }

        public virtual Customer Customer { get; set; }

        public virtual Product Product { get; set; }

        public virtual Shipping Shipping { get; set; }
    }
}
