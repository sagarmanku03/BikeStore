using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BikeStore.Models
{
    public class ItemInfo
    {
        [Key]
        public int ItemID { get; set; }

        [Required]
        [StringLength(200)]
        [Display(Name = "Item Name")]
        public string ItemName { get; set; }

        [Required]
        [Display(Name = "Item Price")]
        public float ItemPrice { get; set; }

        [Required]
        [StringLength(1500)]
        [Display(Name = "Item Description")]
        public string ItemDescription { get; set; }


        [Required]
        [StringLength(1500)]
        [Display(Name = "Item Feature")]
        public string ItemFeature { get; set; }

        [Required]
        public int ItemSubCategoryID { get; set; }

        [ForeignKey("ItemSubCategoryID")]
        [InverseProperty("SubCategoryItems")]
        public virtual ItemSubCategory ItemSubCategory { get; set; }

        [Required]
        [StringLength(20)]
        public string Extension { get; set; }

        [NotMapped]
        public ImageUpload File { get; set; }

        public virtual ICollection<CartItems> ItemCartItems { get; set; }
    }
}
