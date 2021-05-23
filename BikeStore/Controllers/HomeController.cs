using BikeStore.Data;
using BikeStore.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace BikeStore.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public HomeController(ApplicationDbContext context, UserManager<IdentityUser> userManager, ILogger<HomeController> logger)
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
        }


        public async Task<IActionResult> Index()
        {
            return View(await _context.ItemSubCategories.ToListAsync());
        }

        public async Task<IActionResult> ViewItemBySubCategory(int? id)
        {
            var subcategory = await _context.ItemSubCategories.FindAsync(id);
            ViewData["SubCategoryName"] = "None";
            if (subcategory != null)
            {
                ViewData["SubCategoryName"] = subcategory.ItemSubCategoryName;
            }
            var applicationDbContext = _context.ItemInfos
                .Include(j => j.ItemSubCategory)
                .Where(m => m.ItemSubCategoryID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> ViewDetails(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var itemInfo = await _context.ItemInfos
                .Include(i => i.ItemSubCategory)
                .FirstOrDefaultAsync(m => m.ItemID == id);
            if (itemInfo == null)
            {
                return NotFound();
            }

            return View(itemInfo);
        }

        [Authorize]
        public async Task<IActionResult> AddToCart(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var itemInfo = await _context.ItemInfos.FindAsync(id);
            if (itemInfo == null)
            {
                return NotFound();
            }
            string userid = _userManager.GetUserName(this.User);
            var carts = _context.CartInfos
                .Include(m => m.CartCartItems)
                .Where(m => m.UserID == userid && m.CartStatus.Equals("Cart")).FirstOrDefault();
            if (carts != null)
            {
               CartItems cartitem = null;
                foreach(CartItems item in carts.CartCartItems )
                {
                    if( item.ItemID == itemInfo.ItemID)
                    {
                        cartitem = item;
                        break;
                    }
                }
                if(cartitem!=null)
                {
                    cartitem.Quantity += 1;
                    _context.Update(cartitem);                    
                }
                else
                {
                    CartItems item = new CartItems();
                    item.CartID = carts.CartID;
                    item.ItemID = itemInfo.ItemID;
                    item.Price = itemInfo.ItemPrice;
                    item.Quantity = 1;
                    item.Total = item.Price * item.Quantity;
                    _context.Add(item);
                }
                await _context.SaveChangesAsync();
            }
            else
            {
                CartInfo cart = new CartInfo();
                cart.UserID = userid;
                cart.CartDate = DateTime.Now;
                cart.Address = "";
                cart.ContactNo = "";
                cart.OrderDate = DateTime.Now;
                cart.CartStatus = "Cart";
                _context.Add(cart);
                await _context.SaveChangesAsync();
                CartItems item = new CartItems();
                item.CartID = cart.CartID;
                item.ItemID = itemInfo.ItemID;
                item.Price = itemInfo.ItemPrice;
                item.Quantity = 1;
                item.Total = item.Price * item.Quantity;
                _context.Add(item);
                await _context.SaveChangesAsync();
            }
            return RedirectToAction(nameof(MyCart));
        }

        [Authorize]
        public async Task<IActionResult> DeleteCartItem(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var cartItem = await _context.CartItems.FindAsync(id);
            if (cartItem == null)
            {
                return NotFound();
            }
            _context.CartItems.Remove(cartItem);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(MyCart));
        }

        [Authorize]
        public async Task<IActionResult> MyCart()
        {
            string userid = _userManager.GetUserName(this.User);
            var cart = await _context.CartInfos
                .Include(m => m.CartCartItems)
                .Where(m => m.UserID == userid && m.CartStatus.Equals("Cart")).FirstOrDefaultAsync();
            if(cart != null)
            {
                int quantity = 0;
                float total = 0.0F;
                foreach(CartItems item in cart.CartCartItems)
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

        [Authorize]
        public async Task<IActionResult> Checkout(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var cart = await _context.CartInfos
                .Include(m => m.CartCartItems)
                .FirstOrDefaultAsync(m => m.CartID == id);
            if (cart == null)
            {
                return NotFound();
            }
            else if(cart.CartCartItems.Count == 0 )
            {
                return NotFound();
            }
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
            return View(cart);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Checkout(int id, [Bind("CartID,UserID,CartDate,CartStatus,OrderDate,Address,ContactNo")] CartInfo cartInfo)
        {
            if (id != cartInfo.CartID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    cartInfo.CartStatus = "Order";
                    cartInfo.OrderDate = DateTime.Now;
                    _context.Update(cartInfo);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                     return NotFound();
                }                
            }
            return RedirectToAction(nameof(MyOrders));
        }

        [Authorize]
        public async Task<IActionResult> MyOrders()
        {
            string userid = _userManager.GetUserName(this.User);
            var carts =  _context.CartInfos
                .Include(m => m.CartCartItems)
                .Where(m => m.UserID == userid && !m.CartStatus.Equals("Cart"));
            return View(await carts.ToListAsync());
        }

        [Authorize]
        public async Task<IActionResult> OrderDetails(int? id)
        {
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

        [Authorize]
        public async Task<IActionResult> CancelOrder(int? id)
        {
            var cart = await _context.CartInfos
                .Include(m => m.CartCartItems)
                .Where(m => m.CartID == id).FirstOrDefaultAsync();
            if (cart != null)
            {
                cart.CartStatus = "Cancel";
                _context.Update(cart);
                await _context.SaveChangesAsync();
            }
            return RedirectToAction(nameof(MyOrders));
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
