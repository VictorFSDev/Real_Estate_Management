using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DATA
{
    public class Location_OF_Building_DATA
    {
      public  int ID { get; set; }
        public string Country { get; set; }
        public string Governorate{ get; set; }
        public string City { get; set; }
        public string Street_NAME { get; set; }
        public long Numer_of_Building { get; set; }
    }
}