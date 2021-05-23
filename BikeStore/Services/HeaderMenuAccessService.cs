using BikeStore.Data;
using BikeStore.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BikeStore.Services
{
    public class HeaderMenuAccessService:IHeaderMenuAccessService
    {
        private readonly ApplicationDbContext _context;

        public HeaderMenuAccessService(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<ItemCategory>> GetHeaderMenu()
        {
            return await _context.ItemCategories.Include(m => m.CategorySubCategories).ToListAsync();
        }
    }
}
