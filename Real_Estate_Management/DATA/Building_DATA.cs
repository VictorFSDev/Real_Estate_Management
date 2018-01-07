using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DATA
{
    public class Building_DATA
    {
           public int ID { get; set; }
          public Double Area { get; set; }
        public int Floor_Number { get; set; }
        public int Apartment_Number { get; set; }
        public string Descriptions { get; set; }
        public string Image_1 { get; set; }
        public string Desgin_Image { get; set; }
        public DateTime Year_Of_Building { get; set; }
        public int FK_Location_OF_Building { get; set; }

















    }
}