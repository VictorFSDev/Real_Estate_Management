using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DATA
{
    public class Room_DATA
    {


       public int ID { get; set; }

        public int  FK_Apartment { get; set; }
        public Double Area { get; set; }
        public string    Image_1 { get; set; }
        public string Room_Name { get; set; }
        public int FK_Room_Type{ get; set; }
       public string Room_Type_Name { get; set; }



    }
}