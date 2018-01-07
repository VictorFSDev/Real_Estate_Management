using Real_Estate_Management.DAL;
using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate_Management.User_Control
{
    public partial class SIGN_UP_UserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Users_DAL INsrt_users = new Users_DAL();
            Users_DATA User = new Users_DATA();

            User.City=city.Text;
            User.Country= country.Text;
            User.Email= email.Text;
            User.First_Name= first_name.Text;
            User.Gender = Gender.SelectedItem.Text;
               
            
            
            User.Governorate= government.Text;
            User.Phone_Number=int.Parse(phone.Text);
            User.Last_Name= last_name.Text;
            User.FK_Role = 1;
            User.User_Password = password.Text;

            INsrt_users.insert(User);
        }

        protected void confirm_password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}