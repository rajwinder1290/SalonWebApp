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
    public class IndexModel : PageModel
    {
        private readonly SalonWebApp.Data.ApplicationDBContext _context;

        public IndexModel(SalonWebApp.Data.ApplicationDBContext context)
        {
            _context = context;
        }

        public IList<Salon> Salon { get;set; }

        public async Task OnGetAsync()
        {
            Salon = await _context.Salons
                .Include(s => s.Region).ToListAsync();
        }
    }
}
