using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BikeStore.Models
{
    public class ItemCategory
    {
        [Key]
        public int ItemCategoryID { get; set; }

        [Required]
        [StringLength(100)]
        [Display(Name = "Item Category Name")]
        public string ItemCategoryName { get; set; }

        public virtual ICollection<ItemSubCategory> CategorySubCategories { get; set; }
    }
}
