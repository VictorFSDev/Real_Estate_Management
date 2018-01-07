using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DATA
{
    public class Who_See_Announce_DATA
    {
        public int ID { get; set; }
        public int Owner_ID { get; set; }
        public int Visitor_ID { get; set; }
        public int ID_Apartment { get; set; }
        public string Owner_visitor_apartment_ID { get; set; }
    }
}