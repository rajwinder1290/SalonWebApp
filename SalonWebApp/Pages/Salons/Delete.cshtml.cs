using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using SalonWebApp.BusinessLayer;
using SalonWebApp.Data;

namespace SalonWebApp.Pages.Salons
{
    public class DeleteModel : PageModel
    {
        private readonly SalonWebApp.Data.ApplicationDBContext _context;

        public DeleteModel(SalonWebApp.Data.ApplicationDBContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Salon Salon { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Salon = await _context.Salons
                .Include(s => s.Region).FirstOrDefaultAsync(m => m.Id == id);

            if (Salon == null)
            {
                return NotFound();
            }
            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Salon = await _context.Salons.FindAsync(id);

            if (Salon != null)
            {
                _context.Salons.Remove(Salon);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
