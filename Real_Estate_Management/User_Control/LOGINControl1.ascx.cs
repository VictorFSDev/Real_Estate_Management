using Real_Estate_Management.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate_Management.User_Control
{
    public partial class LOGINControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Users_DAL USErs = new Users_DAL();
            foreach (var z in USErs.select_All())
            {
                if (z.Email == TextBox1.Text&&z.User_Password==TextBox2.Text)
                {

                    if (z.FK_Role==3)
                    {
                       

                        HttpCookie local1 = new HttpCookie("admin_server");
                        local1.Values.Add("admin_email", TextBox1.Text);
                        local1.Values.Add("admin_password", TextBox2.Text);
                        Response.Cookies.Add(local1);
                        Response.Redirect("/Admin_Pages/Apartment_Page.aspx");

                    }
                    else if (z.FK_Role == 1)
                    {
                        HttpCookie local = new HttpCookie("user_server");
                        local.Values.Add("user_email", TextBox1.Text);
                        local.Values.Add("user_password", TextBox2.Text);
                        local.Values.Add("user_ID", z.ID.ToString());
                        Response.Cookies.Add(local);
                   
                      
                        Response.Redirect("User_Main_Page.aspx");
                    }
                }
                else { Label3.Text = "wrong"; }

            }
                   
            




        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/User_Pages/SIGNUP.aspx");

        }
    }
}