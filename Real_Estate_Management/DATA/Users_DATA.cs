using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DATA
{
    public class Users_DATA
    {
      public   int ID { get; set; }
        public string First_Name { get; set; }
        
        public string Last_Name { get; set; }
        public string Email { get; set; }
        public int   Phone_Number { get; set; }
        public string Country{ get; set; }
        public string Governorate { get; set; }
        public string City { get; set; }
        public string Gender { get; set; }
        public string User_Password { get; set; }
        public string image { get; set; }

        public int FK_Role { get; set; }

}
}