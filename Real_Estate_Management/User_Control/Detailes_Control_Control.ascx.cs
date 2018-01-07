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
    public partial class Detailes_Control_Control : System.Web.UI.UserControl
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
                        Label1.Text = item.First_Name;
                    }


                }




                Apartments_DAL apartment = new Apartments_DAL();
                Apartments_DATA a = apartment.select_Item(Convert.ToInt16(Request.QueryString["ID"]));
                Area.Text = a.Area.ToString();
                Disription.Text = a.Descriptions;
                //price_per_meter.Text = a.Price_Per_meter.ToString();
                Design_img.ImageUrl = "../images/" + a.Design_Image;
                Image1.ImageUrl = "../images/" + a.Image_1;
                Image2.ImageUrl = "../images/" + a.Image_2;
                Image3.ImageUrl = "../images/" + a.Image_3;
                Design_img1.ImageUrl = "../images/" + a.Design_Image;
                Image4.ImageUrl = "../images/" + a.Image_1;
                Image5.ImageUrl = "../images/" + a.Image_2;
                Image6.ImageUrl = "../images/" + a.Image_3;

                Total_Price.Text = (a.Price_Per_meter * a.Area).ToString();
               // price_per_meter.Text = a.Price_Per_meter.ToString();
                Building_DAL b = new Building_DAL();
                Building_DATA d = new Building_DATA();
                d = b.select_All().SingleOrDefault(x => x.ID == a.FK_Building);
                Location_OF_Building_DAL location = new Location_OF_Building_DAL();
                Location_OF_Building_DATA l = new Location_OF_Building_DATA();
                l = location.select_All().SingleOrDefault(x => x.ID == d.FK_Location_OF_Building);
                Country.Text = l.Country;
                City.Text = l.City;
                Govern.Text = l.Governorate;

                List<Room_DATA> room = new List<Room_DATA>();
                Room_DAL room_Dal = new Room_DAL();
                room = room_Dal.select_All().Where(x => x.FK_Apartment == a.ID).ToList();

                Who_See_Announce_DAL who_see_announce_Insert = new Who_See_Announce_DAL();
                Who_See_Announce_DATA who_see_announce = new Who_See_Announce_DATA();
                who_see_announce.Owner_ID = a.FK_Users;
                who_see_announce.Visitor_ID = Convert.ToInt16(local.Values["user_ID"]);
                who_see_announce.ID_Apartment = a.ID;
                who_see_announce.Owner_visitor_apartment_ID = (who_see_announce.Visitor_ID.ToString() + who_see_announce.ID_Apartment.ToString() +
                 who_see_announce.ID_Apartment.ToString());
                if (who_see_announce.Visitor_ID != who_see_announce.Owner_ID) {
                    who_see_announce_Insert.insert(who_see_announce);
                }
            }

            else
            {
                Response.Redirect("/User_Pages/User_Main_Page.aspx");
            }
            } 

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../User_Pages/sent_message_to_new_user.aspx?ID=" + Convert.ToInt16(Request.QueryString["ID"]));
        }
    }

}