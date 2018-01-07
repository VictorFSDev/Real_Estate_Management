using Real_Estate_Management.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate_Management.User_Control
{
    public partial class Saved_Apartment_Control : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["user_server"] != null)
            {

                HttpCookie local = Request.Cookies["user_server"];


                Users_DAL user = new Users_DAL();

                foreach (var item in user.select_All())
                {
                    if (item.Email == local.Values["user_email"])
                    {
                      
                    }


                }
                Label1.Text = local.Values["user_ID"];

            }
            else
            {
                Response.Redirect("/User_Pages/User_Main_Page.aspx");
            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
         
              Label x =(Label) GridView1.Rows[GridView1.SelectedIndex].Cells[0].Controls[1];

            Response.Redirect("/User_Pages/Detailes_Control.aspx?ID=" + x.Text);


            
        }
    }
}