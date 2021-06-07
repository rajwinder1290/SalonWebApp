using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SalonWebApp.BusinessLayer
{
    public class Service
    {
        // Reporesent Service ID
        public int Id { get; set; }

        // Represent Service Description
        public string ServiceName { get; set; }

        // Represent Description of Service
        public string Description { get; set; }

        // Represent Service Category 
        public int CategoryID { get; set; }

        public Category Category { get; set; }
    }
}
