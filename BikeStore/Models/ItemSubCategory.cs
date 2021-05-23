using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BikeStore.Models
{
    public class ItemSubCategory
    {
        [Key]
        public int ItemSubCategoryID { get; set; }

        [Required]
        [StringLength(100)]
        [Display(Name = "Item Sub Category Name")]
        public string ItemSubCategoryName { get; set; }

        [Required]
        public int ItemCategoryID { get; set; }

        [ForeignKey("ItemCategoryID")]
        [InverseProperty("CategorySubCategories")]
        public virtual ItemCategory ItemCategory { get; set; }

        public virtual ICollection<ItemInfo> SubCategoryItems { get; set; }

        [Required]
        [StringLength(20)]
        public string Extension { get; set; }

        [NotMapped]
        public ImageUpload File { get; set; }
    }
}
