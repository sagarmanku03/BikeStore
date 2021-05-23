using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using BikeStore.Data;
using BikeStore.Models;
using Microsoft.AspNetCore.Authorization;

namespace BikeStore.Controllers
{
    [Authorize(Roles ="admin")]
    public class CartInfoesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CartInfoesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: CartInfoes
        public async Task<IActionResult> Index()
        {
            return View(await _context.CartInfos.ToListAsync());
        }

        // GET: CartInfoes/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var cart = await _context.CartInfos
                .Include(m => m.CartCartItems)
                .Where(m => m.CartID == id).FirstOrDefaultAsync();
            if (cart != null)
            {
                int quantity = 0;
                float total = 0.0F;
                foreach (CartItems item in cart.CartCartItems)
                {
                    item.ItemInfo = await _context.ItemInfos.Where(m => m.ItemID == item.ItemID).FirstOrDefaultAsync();
                    quantity += item.Quantity;
                    total += item.Total;
                }
                ViewData["Total"] = total;
                ViewData["Quantity"] = quantity;
            }
            return View(cart);
        }
        private bool CartInfoExists(int id)
        {
            return _context.CartInfos.Any(e => e.CartID == id);
        }
    }
}
