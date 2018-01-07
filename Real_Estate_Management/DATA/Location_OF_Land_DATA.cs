using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DATA
{
    public class Location_OF_Land_DATA
    {


        public int ID { get; set; }
        public  string Country { get; set; }
        public string Governorate { get; set; }
        public string City { get; set; }
        public string Street_NAME { get; set; }
        public long Piece_Number { get; set; }
        public int FK_Land { get; set; }
    }
}