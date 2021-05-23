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
    [Authorize(Roles="admin")]
    public class ItemSubCategoriesController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IWebHostEnvironment _environment;

        public ItemSubCategoriesController(ApplicationDbContext context, IWebHostEnvironment env)
        {
            _context = context;
            _environment = env;
        }

        // GET: ItemSubCategories
        public async Task<IActionResult> Index()
        {
            ViewData["ItemCategoryID"] = new SelectList(_context.ItemCategories, "ItemCategoryID", "ItemCategoryName");
            var applicationDbContext = _context.ItemSubCategories.Include(i => i.ItemCategory);
            return View(await applicationDbContext.ToListAsync());
        }

        
        // GET: ItemSubCategories/Create
        public IActionResult Create()
        {
            ViewData["ItemCategoryID"] = new SelectList(_context.ItemCategories, "ItemCategoryID", "ItemCategoryName");
            return View();
        }

        // POST: ItemSubCategories/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ItemSubCategoryID,ItemSubCategoryName,ItemCategoryID,File")] ItemSubCategory itemSubCategory)
        {
            using (var memoryStream = new MemoryStream())
            {
                await itemSubCategory.File.FormFile.CopyToAsync(memoryStream);

                string photoname = itemSubCategory.File.FormFile.FileName;
                itemSubCategory.Extension = Path.GetExtension(photoname);
                if (!".jpg.jpeg.png.gif.bmp".Contains(itemSubCategory.Extension.ToLower()))
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
                _context.Add(itemSubCategory);
                await _context.SaveChangesAsync();
                var uploadsRootFolder = Path.Combine(_environment.WebRootPath, "subs");
                if (!Directory.Exists(uploadsRootFolder))
                {
                    Directory.CreateDirectory(uploadsRootFolder);
                }
                string filename = itemSubCategory.ItemSubCategoryID + itemSubCategory.Extension;
                var filePath = Path.Combine(uploadsRootFolder, filename);
                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    await itemSubCategory.File.FormFile.CopyToAsync(fileStream).ConfigureAwait(false);
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["ItemCategoryID"] = new SelectList(_context.ItemCategories, "ItemCategoryID", "ItemCategoryName", itemSubCategory.ItemCategoryID);
            return View(itemSubCategory);
        }

        // GET: ItemSubCategories/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var itemSubCategory = await _context.ItemSubCategories.FindAsync(id);
            if (itemSubCategory == null)
            {
                return NotFound();
            }
            ViewData["ItemCategoryID"] = new SelectList(_context.ItemCategories, "ItemCategoryID", "ItemCategoryName", itemSubCategory.ItemCategoryID);
            return View(itemSubCategory);
        }

        // POST: ItemSubCategories/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ItemSubCategoryID,ItemSubCategoryName,ItemCategoryID,Extension")] ItemSubCategory itemSubCategory)
        {
            if (id != itemSubCategory.ItemSubCategoryID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(itemSubCategory);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ItemSubCategoryExists(itemSubCategory.ItemSubCategoryID))
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
            ViewData["ItemCategoryID"] = new SelectList(_context.ItemCategories, "ItemCategoryID", "ItemCategoryName", itemSubCategory.ItemCategoryID);
            return View(itemSubCategory);
        }

        // GET: ItemSubCategories/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var itemSubCategory = await _context.ItemSubCategories
                .Include(i => i.ItemCategory)
                .FirstOrDefaultAsync(m => m.ItemSubCategoryID == id);
            if (itemSubCategory == null)
            {
                return NotFound();
            }

            return View(itemSubCategory);
        }

        // POST: ItemSubCategories/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var itemSubCategory = await _context.ItemSubCategories.FindAsync(id);
            _context.ItemSubCategories.Remove(itemSubCategory);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ItemSubCategoryExists(int id)
        {
            return _context.ItemSubCategories.Any(e => e.ItemSubCategoryID == id);
        }
    }
}
