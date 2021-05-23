using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BikeStore.Models
{
    public class CartItems
    {
        [Key]
        public int CartItemID { get; set; }

        [Required]
        public int CartID { get; set; }

        [ForeignKey("CartID")]
        [InverseProperty("CartCartItems")]
        public virtual CartInfo CartInfo { get; set; }

        [Required]
        public int ItemID { get; set; }

        [ForeignKey("ItemID")]
        [InverseProperty("ItemCartItems")]
        public virtual ItemInfo ItemInfo { get; set; }

        [Display(Name = "Item Price")]
        public float Price { get; set; }

        [Display(Name = "Quantity")]
        public int Quantity { get; set; }

        [Display(Name = "Total Price")]
        public float Total { get; set; }
    }
}
