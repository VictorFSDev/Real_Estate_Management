using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate_Management.User_Pages
{
    public partial class User_Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void logout_Click(object sender, EventArgs e)
        {

        }
        protected void log_out_Click(object sender, EventArgs e)
        {
            Response.Cookies["user_server"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("/User_Pages/login.aspx");
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["user_server"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("/User_Pages/Login_Webpage.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/User_Pages/messages.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/User_Pages/new_apart.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/User_Pages/announc.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("/User_Pages/Saved_Apartment.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {Response.Redirect("/User_Pages/User_Main_Page.aspx");
            
        }
    }
}