using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate_Management.Admin_Pages
{
    public partial class Admin_Master_Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["admin_server"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("/User_Pages/Login_Webpage.aspx");
        }

        protected void Building_Click(object sender, EventArgs e)
        {

            Response.Redirect("/Admin_Pages/Building_Page.aspx");

        }

        protected void land_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin_Pages/Land_Page.aspx");
        }

        protected void location_building_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin_Pages/Location_OF_Building_Page.aspx");
        }

        protected void location_land_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin_Pages/Location_OF_Land_Page.aspx");
        }

        protected void message_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin_Pages/Messages_Page.aspx");
        }

        protected void purpose_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin_Pages/Purpose_Apartment_Page.aspx");
        }

        protected void role_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin_Pages/Roles_Page.aspx");
        }

        protected void room_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin_Pages/Room_Page.aspx");
        }

        protected void room_type_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin_Pages/Room_Type_Page.aspx");
        }

        protected void users_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin_Pages/Users_Page.aspx");
        }

        protected void apartment_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin_Pages/Apartment_Page.aspx");

        }
    }
}