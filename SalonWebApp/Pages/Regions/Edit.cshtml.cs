﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SalonWebApp.BusinessLayer;
using SalonWebApp.Data;

namespace SalonWebApp.Pages.Regions
{
    public class EditModel : PageModel
    {
        private readonly SalonWebApp.Data.ApplicationDBContext _context;

        public EditModel(SalonWebApp.Data.ApplicationDBContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Region Region { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Region = await _context.Regions.FirstOrDefaultAsync(m => m.Id == id);

            if (Region == null)
            {
                return NotFound();
            }
            return Page();
        }

        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Attach(Region).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RegionExists(Region.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }

        private bool RegionExists(int id)
        {
            return _context.Regions.Any(e => e.Id == id);
        }
    }
}
