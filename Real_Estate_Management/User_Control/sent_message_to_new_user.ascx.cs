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
    public partial class sent_message_to_new_user : System.Web.UI.UserControl
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
                        Label1.Text = "from " + item.First_Name;
                    }


                }

            }
            else
            {
                Response.Redirect("/User_Pages/User_Main_Page.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie local = Request.Cookies["user_server"];
            Apartments_DAL apartment = new Apartments_DAL();
            Apartments_DATA a = apartment.select_Item(Convert.ToInt16(Request.QueryString["ID"]));
            Messages_DATA message = new Messages_DATA();
            Messages_DAL sent_message = new Messages_DAL();
            message.Message = TextBox1.Text;
            message.The_Time = DateTime.Now;
            message.FK_Users_Message_Recipient =Convert.ToInt16( local.Values["user_ID"]);
            message.FK_Users_Message_sender = a.FK_Users;
            if (message.FK_Users_Message_sender != message.FK_Users_Message_Recipient&& message.Message!="")
            {
                sent_message.insert(message);
            }


        }
    }
}