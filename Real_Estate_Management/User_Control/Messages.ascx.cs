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
    public partial class Messages : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie local = Request.Cookies["user_server"];

            if (Request.Cookies["user_server"] != null)
            {


               TextBox1.Text= local.Values["user_ID"];
                Users_DAL user = new Users_DAL();

                foreach (var item in user.select_All())
                {
                    if (item.Email == local.Values["user_email"])
                    {
                        Label1.Text = "Hi" + " " + item.First_Name;
                    }


                }

            }
            else
            {
                Response.Redirect("/User_Pages/User_Main_Page.aspx");
            }

            if (Page.IsPostBack == false)
            {
                Messages_DAL get_message = new Messages_DAL();
                var messages = get_message.select_All();
                Users_DAL usres = new Users_DAL();
                List<Users_DATA> all_users = usres.select_All();
                List<Users_DATA> Users_Message_Recipient = new List<Users_DATA>();
                foreach (var item in messages)
                {
                    if (Users_Message_Recipient.All(x=>x.ID!=item.FK_Users_Message_Recipient && (Convert.ToInt16(local.Values["user_ID"]) == item.FK_Users_Message_Recipient|| Convert.ToInt16(local.Values["user_ID"])==item.FK_Users_Message_sender)))
                    {
                        Users_Message_Recipient.Add(all_users.Single(x => x.ID == item.FK_Users_Message_Recipient));
                    }
                }
               

                foreach (var item in Users_Message_Recipient)
                {
                    if (Convert.ToInt16( local.Values["user_ID"]) != item.ID)
                    {
                        ListItem n = new ListItem();
                        n.Text = item.First_Name;
                        n.Value = item.ID.ToString();
                        ListBox1.Items.Add(n);
                    }
                }

            }
            }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {

            e.Values["FK_Users_Message_sender"] = ListBox1.SelectedValue;
            HttpCookie local = Request.Cookies["user_server"];

            e.Values["FK_Users_Message_Recipient"] = local.Values["user_ID"]; ;


           
            e.Values["The_Time"] = DateTime.Now; ;
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListView1_DataBound(object sender, EventArgs e)
        {
            
        }
    }
}