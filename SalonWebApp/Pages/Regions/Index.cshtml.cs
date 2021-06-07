using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using SalonWebApp.BusinessLayer;
using SalonWebApp.Data;

namespace SalonWebApp.Pages.Regions
{
    public class IndexModel : PageModel
    {
        private readonly SalonWebApp.Data.ApplicationDBContext _context;

        public IndexModel(SalonWebApp.Data.ApplicationDBContext context)
        {
            _context = context;
        }

        public IList<Region> Region { get;set; }

        public async Task OnGetAsync()
        {
            Region = await _context.Regions.ToListAsync();
        }
    }
}
