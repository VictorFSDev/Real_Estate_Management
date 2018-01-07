using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DATA
{
    public class Room_Type
    {public int ID { get; set; }
     public double    Area { get; set; }
        public string  Images  { get; set; }
        public string Design_Image { get; set; }
        public string Descriptions { get; set; }

        public byte Avalable { get; set; }
        public int FK_Users{ get; set; }
        public int FK_Purpoes_Land { get; set; }

        
    }
}