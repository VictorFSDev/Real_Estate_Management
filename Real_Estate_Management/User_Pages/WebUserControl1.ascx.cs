using Real_Estate_Management.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate_Management.User_Pages
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
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
                        Label13.Text = "Hi" + " " + item.First_Name;
                    }


                }

            }
            else
            {
                Response.Redirect("/User_Pages/User_Main_Page.aspx");
            }

            if (Page.IsPostBack)
            {
                ViewState.Add("Bulding_Max_area", Bulding_Max_area.Text);
                ViewState.Add("Bulding_Min_area", Bulding_Min_area.Text);
                ViewState.Add("Room_Max_Number", Room_Max_Number.Text);
                ViewState.Add("Room_Min_Number", Room_Min_Number.Text);
                ViewState.Add("Total_Max_Cost", Total_Max_Cost.Text);
                ViewState.Add("Total_Min_Cost", Total_Min_Cost.Text);
                // ViewState.Add("Purpose", Purpose.SelectedValue);
                // ViewState.Add("Purpose", TextBox1.Text);

                //TextBox1.Text = Purpose.SelectedItem.Value;

                ViewState.Add("Land_Max_area", Land_Max_area.Text);
                ViewState.Add("Land_Min_area", Land_Min_area.Text);
                ViewState.Add("Total_Max_Cost_Land", Total_Max_Cost_Land.Text);
                ViewState.Add("Total_Min_Cost_Land", Total_Min_Cost_Land.Text);





            }

            if (!Page.IsPostBack)
            {





                //Purpose_Apartment_DAL Purpose_item_building = new Purpose_Apartment_DAL();
                //foreach (var item in Purpose_item_building.select_All())
                //{



                //}






                //{

                //   ListItem listitem = new ListItem(item.Name, item.ID.ToString());
                //   Purpose.Items.Add(listitem);
                //}
                Type_property.Items.Add("Building");
                Type_property.Items.Add("Lands");
                MultiView1.ActiveViewIndex = 0;

                //Apartments_DAL Apartment = new Apartments_DAL();
                //List<string> list = new List<string>();
                //foreach (var item in Apartment.select_All())
                //{
                //    ListItem listitem = new ListItem(item.Apartments_Type, item.Apartments_Type);
                //    Type_Of_Building.Items.Add(listitem);
                //    foreach (var item_list in list)
                //    { if (item.Apartments_Type == item_list.ToString())
                //            Type_Of_Building.Items.Remove(listitem);


                //    }
                //    list.Add(item.Apartments_Type);
                //}
            }

            //.............................................................
            //Filter_DATA filter_obj=new Filter_DATA();
            //int n =int.Parse( Bulding_Max_area.Text);
            //     int x = Convert.ToInt16(Bulding_Miv_area.Text);
            //     int y = Convert.ToInt16(Room_Max_Number.Text);
            //    int z = Convert.ToInt16(Room_Min_Number.Text);
            //    int v = Convert.ToInt16(Total_Max_Cost.Text);
            //     int b = Convert.ToInt16(Total_Min_Cost.Text);

            //filter_obj.Filter(n,x,y,z,v,b, Location_Search_Building.Text);

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void Type_property_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Type_property.SelectedValue == "Lands")
            {
                MultiView1.ActiveViewIndex = 1;
            }
            else { MultiView1.ActiveViewIndex = 0; }
        }

        protected void Search_Button_Building_Click(object sender, EventArgs e)
        {
            //Filter_DAL filter_obj = new Filter_DAL();
            //filter_obj.Filter(100,0,100,0,100,0,"m");
            //Convert.ToInt16(Bulding_Max_area.Text), Convert.ToInt16(Bulding_Miv_area.Text), Convert.ToInt16(Room_Max_Number.Text), Convert.ToInt16(Room_Min_Number.Text), Convert.ToInt16(Total_Max_Cost.Text), Convert.ToInt16(Total_Min_Cost.Text), Location_Search_Building.Text);
            Bulding_Max_area.Text = ViewState["Bulding_Max_area"].ToString();
            Bulding_Min_area.Text = ViewState["Bulding_Min_area"].ToString();
            Room_Max_Number.Text = ViewState["Room_Max_Number"].ToString();
            Room_Min_Number.Text = ViewState["Room_Min_Number"].ToString();
            Total_Max_Cost.Text = ViewState["Total_Max_Cost"].ToString();
            Total_Min_Cost.Text = ViewState["Total_Min_Cost"].ToString();
            Total_Min_Cost.Text = ViewState["Total_Min_Cost"].ToString();
            // string x= ViewState["Purpose"].ToString();
            //Purpose.SelectedValue =  ViewState["Purpose"].ToString();
            ///TextBox1.Text = ViewState["Purpose"].ToString();
            // TextBox1.Text = Purpose.SelectedItem.Value;

        }

        protected void Search_Button_Land_Click(object sender, EventArgs e)
        {
            Land_Max_area.Text = ViewState["Land_Max_area"].ToString();
            Land_Min_area.Text = ViewState["Land_Min_area"].ToString();
            Total_Max_Cost_Land.Text = ViewState["Total_Max_Cost_Land"].ToString();
            Total_Min_Cost_Land.Text = ViewState["Total_Min_Cost_Land"].ToString();


            MultiView1.ActiveViewIndex = 1;
        }

        protected void Bulding_Max_area_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Filter_Object_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["user_server"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("/User_Pages/Login_Webpage.aspx");
        }

    }
}