using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SalonWebApp.BusinessLayer
{
    public class Salon
    {
        // Reporesent Salon ID
        public int Id { get; set; }

        // Represent Salon Name
        public string SalonName { get; set; }

        // Represent Salon Address
        public string Address { get; set; }

        // Represent Salon Phone No
        public string Phone { get; set; }

        // Represent Salon Region ID
        public int RegionID { get; set; }

        public Region Region { get; set; }
    }
}
