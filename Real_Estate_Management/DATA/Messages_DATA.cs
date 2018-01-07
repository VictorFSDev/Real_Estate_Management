using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DATA
{
    public class Messages_DATA
    {
        public int ID { get; set; }

        public int  FK_Users_Message_Recipient { get; set; }
        public int FK_Users_Message_sender { get; set; }
        public DateTime The_Time { get; set; }
        public string Message{ get; set; }
        public string First_Name { get; set; }

        public string Last_Name { get; set; }
        public string img { get; set; }

        public string css_style1 { get; set; }
        public string css_style2 { get; set; }

    }
}