using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DATA
{
    public class Apartments_DATA
    {

      public int ID { get; set; }
        public double Price_Per_meter { get; set; }

        public Double Area { get; set; }
        public string Apartments_Type { get; set; }
        public string Image_1 { get; set; }
        public string Image_2 { get; set; }
        public string Image_3 { get; set; }
        public string Design_Image { get; set; }
    public string Descriptions { get; set; }
    public byte Avalable { get; set; }
    public int FK_Users { get; set; }
    public int FK_Building { get; set; }
        
                public int FK_Purpoes_Apartment { get; set; }











    }
}