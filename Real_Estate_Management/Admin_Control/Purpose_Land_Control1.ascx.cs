using Real_Estate_Management.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate_Management.Admin_Control
{
    public partial class Purpose_Land_Control1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["admin_server"] != null)
            {

                HttpCookie local = Request.Cookies["admin_server"];


                Users_DAL user = new Users_DAL();

                foreach (var item in user.select_All())
                {
                    if (item.Email == local.Values["admin_email"])
                    {
                        Label1.Text = "Hi" + " " + item.First_Name;
                    }


                }

            }
            else
            {
                Response.Redirect("/User_Pages/Login_Webpage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["admin_server"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("/User_Pages/Login_Webpage.aspx");
        }
    }
}