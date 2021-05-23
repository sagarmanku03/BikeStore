using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using BikeStore.Data;
using BikeStore.Models;
using Microsoft.AspNetCore.Hosting;
using System.IO;
using Microsoft.AspNetCore.Authorization;

namespace BikeStore.Controllers
{
    [Authorize(Roles ="admin")]
    public class ItemInfoesController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IWebHostEnvironment _environment;

        public ItemInfoesController(ApplicationDbContext context, IWebHostEnvironment env)
        {
            _context = context;
            _environment = env;
        }

        // GET: ItemInfoes
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.ItemInfos.Include(i => i.ItemSubCategory);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: ItemInfoes/Details/5
        public async Task<IActionResult> Details(int? id)
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

        // GET: ItemInfoes/Create
        public IActionResult Create()
        {
            ViewData["ItemSubCategoryID"] = new SelectList(_context.ItemSubCategories, "ItemSubCategoryID", "ItemSubCategoryName");
            return View();
        }

        // POST: ItemInfoes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ItemID,ItemName,ItemPrice,ItemDescription,ItemFeature,ItemSubCategoryID,File")] ItemInfo itemInfo)
        {
            using (var memoryStream = new MemoryStream())
            {
                await itemInfo.File.FormFile.CopyToAsync(memoryStream);

                string photoname = itemInfo.File.FormFile.FileName;
                itemInfo.Extension = Path.GetExtension(photoname);
                if (!".jpg.jpeg.png.gif.bmp".Contains(itemInfo.Extension.ToLower()))
                {
                    ModelState.AddModelError("File.FormFile", "Only Images Allowed");
                }
                else
                {
                    ModelState.Remove("Extension");
                }
            }
            if (ModelState.IsValid)
            {
                _context.Add(itemInfo);
                await _context.SaveChangesAsync();
                var uploadsRootFolder = Path.Combine(_environment.WebRootPath, "items");
                if (!Directory.Exists(uploadsRootFolder))
                {
                    Directory.CreateDirectory(uploadsRootFolder);
                }
                string filename = itemInfo.ItemID + itemInfo.Extension;
                var filePath = Path.Combine(uploadsRootFolder, filename);
                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    await itemInfo.File.FormFile.CopyToAsync(fileStream).ConfigureAwait(false);
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["ItemSubCategoryID"] = new SelectList(_context.ItemSubCategories, "ItemSubCategoryID", "ItemSubCategoryName", itemInfo.ItemSubCategoryID);
            return View(itemInfo);
        }

        // GET: ItemInfoes/Edit/5
        public async Task<IActionResult> Edit(int? id)
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
            ViewData["ItemSubCategoryID"] = new SelectList(_context.ItemSubCategories, "ItemSubCategoryID", "ItemSubCategoryName", itemInfo.ItemSubCategoryID);
            return View(itemInfo);
        }

        // POST: ItemInfoes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ItemID,ItemName,ItemPrice,ItemDescription,ItemFeature,ItemSubCategoryID,Extension")] ItemInfo itemInfo)
        {
            if (id != itemInfo.ItemID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(itemInfo);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ItemInfoExists(itemInfo.ItemID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["ItemSubCategoryID"] = new SelectList(_context.ItemSubCategories, "ItemSubCategoryID", "ItemSubCategoryName", itemInfo.ItemSubCategoryID);
            return View(itemInfo);
        }

        // GET: ItemInfoes/Delete/5
        public async Task<IActionResult> Delete(int? id)
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

        // POST: ItemInfoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var itemInfo = await _context.ItemInfos.FindAsync(id);
            _context.ItemInfos.Remove(itemInfo);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ItemInfoExists(int id)
        {
            return _context.ItemInfos.Any(e => e.ItemID == id);
        }
    }
}
