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
    public partial class Update_To_Appartment : System.Web.UI.UserControl
    {
        int count;
        int id;
        int update_panel;
        Room_DAL room_select = new Room_DAL();
       // List<int> list_ID = new List<int>();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {


                Apartments_DATA apartment = new Apartments_DATA();
                Building_DATA building = new Building_DATA();
                Roles_DATA roles = new Roles_DATA();
                Location_OF_Building_DATA location = new Location_OF_Building_DATA();
                Purpose_Apartment_DATA purpose = new Purpose_Apartment_DATA();
                Apartments_DAL apartment_select_item = new Apartments_DAL();
                Building_DAL building_select_item = new Building_DAL();
                Roles_DAL roles_select_item = new Roles_DAL();
                Users_DAL user_select_item = new Users_DAL();
                Location_OF_Building_DAL location_select_item = new Location_OF_Building_DAL();
                Purpose_Apartment_DAL purpose_select_item = new Purpose_Apartment_DAL();
                //Room_DAL room_select = new Room_DAL();
                Room_DATA room = new Room_DATA();
                Apartments_DATA apartments = new Apartments_DATA();
                Apartments_DAL apartment_select = new Apartments_DAL();
                apartments = apartment_select.select_Item(Convert.ToInt16(Request.QueryString["id"]));
                HttpCookie local2 = Request.Cookies["user_server"];

                if (Request.QueryString["id"] != "" && apartments.FK_Users == Convert.ToInt16(local2.Values["user_ID"]))
                {
                    Users_DATA user = new Users_DATA();

                    id = Convert.ToInt16(Request.QueryString["id"]);

                    HttpCookie local = Request.Cookies["user_server"];
                    apartment = apartment_select_item.select_Item(id);
                    apartment_area.Text = apartment.Area.ToString();
                    apartment_Description.Text = apartment.Descriptions;
                    Image3.ImageUrl = "~/images/" + apartment.Image_1;
                    Image4.ImageUrl = "~/images/" + apartment.Image_2;
                    Image7.ImageUrl = "~/images/" + apartment.Image_3;
                    Image6.ImageUrl = "~/images/" + apartment.Design_Image;
                    Label4.Text = apartment.ID.ToString();

                    price.Text = apartment.Price_Per_meter.ToString();
                    apartment_type.Text = apartment.Apartments_Type;
                    building = building_select_item.select_Item(apartment.FK_Building);
                    Label3.Text = building.ID.ToString();
                    Image1.ImageUrl = "~/images/" + building.Image_1;
                    Image2.ImageUrl = "~/images/" + building.Desgin_Image;

                    List<Room_DATA> list_Rooms = room_select.select_All().Where(x => x.FK_Apartment == apartment.ID).ToList();

                  
                    for (int i = 0; i < list_Rooms.Count(); i++)
                    {
                        
                        
                        update_panel++;
                    }
                    count = update_panel;
                    ViewState.Add("count", count);
                    ViewState.Add("update_panel", update_panel);
                    building_area.Text = building.Area.ToString();
                    building_description.Text = building.Descriptions;
                    floor.Text = building.Floor_Number.ToString();
                    building_year.SelectedDate = building.Year_Of_Building;
                    //building.Image_1 = ViewState["building_img1"].ToString();
                    //  building.Desgin_Image = ViewState["building_deign"].ToString();

                    location = location_select_item.select_Item(building.FK_Location_OF_Building);
                    city.Text = location.City;
                    country.Text = location.Country;
                    government.Text = location.Governorate;
                    building_number.Text = location.Numer_of_Building.ToString();
                    street_name.Text = location.Street_NAME;
                    Label2.Text = building.FK_Location_OF_Building.ToString();





                }
                if (Page.IsPostBack == false)
                {
                    MultiView1.ActiveViewIndex = 0;


                }

                if (Request.Cookies["user_server"] != null)
                {

                    HttpCookie local = Request.Cookies["user_server"];


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

            }
            count = Convert.ToInt16(ViewState["count"]);
            update_panel = Convert.ToInt16(ViewState["update_panel"]);
            Apartments_DAL apartment_select_items = new Apartments_DAL();
            Apartments_DATA Update_apartment = new Apartments_DATA();
            id = Convert.ToInt16(Request.QueryString["id"]);
            Update_apartment = apartment_select_items.select_Item(id);


            //Room_DATA room = new Room_DATA();
            List<Room_DATA> list_Room = room_select.select_All().Where(x => x.FK_Apartment == Update_apartment.ID).ToList();
            if (Page.IsPostBack == true&& MultiView1.ActiveViewIndex == 3)
            {

                for (int i = 0; i < update_panel; i++)
            {

                    try { 
                    Panel mylable = new Panel();
                    TextBox area = new TextBox();
                    FileUpload imge1 = new FileUpload();
                    Image image = new Image();
                    TextBox Room_Name = new TextBox();
                    DropDownList FK_Room_Type = new DropDownList();
                    Button button = new Button();
                    Button cancel = new Button();
                    TextBox ID = new TextBox();
                    mylable.ID = "panal" + i;
                    button.ID = "button_ADD" + "panal" + i;
                    button.Text = "add";
                    button.Click += Button_Click;
                    cancel.ID = "button_cancel" + "panal" + i;
                    cancel.Text = "cancel";
                    cancel.Click += Cancel_Click1; ;
                    image.ID = "image" + mylable.ID;
                    area.ID = "area" + mylable.ID;
                    imge1.ID = "imge1" + mylable.ID;
                    Room_Name.ID = "Room_Name" + mylable.ID;
                    ID.ID = "ID" + mylable.ID;
                    FK_Room_Type.ID = "FK_Room_Type" + mylable.ID;

                    Room_Type_DAL room_type = new Room_Type_DAL();
                    room_type.select_All();
                    foreach (var item in room_type.select_All())
                    {
                        ListItem listitem = new ListItem();
                        listitem.Text = item.Room_Type_Name;
                        listitem.Value = item.ID.ToString();
                        FK_Room_Type.Items.Add(listitem);
                    }
                    area.Text = list_Room[i].Area.ToString();
                    Room_Name.Text = list_Room[i].Room_Name.ToString();
                    image.ImageUrl = list_Room[i].Image_1.ToString();
                    image.Height = 100;
                    image.Width = 100;
                    FK_Room_Type.SelectedValue = list_Room[i].FK_Room_Type.ToString();
                    ID.Text = list_Room[i].ID.ToString();
                    
                    mylable.Controls.Add(area);
                    mylable.Controls.Add(Room_Name);
                    mylable.Controls.Add(FK_Room_Type);
                    mylable.Controls.Add(imge1);
                    mylable.Controls.Add(ID);
                    mylable.Controls.Add(button);
                    mylable.Controls.Add(cancel);
                    mylable.Controls.Add(image);
                    
                    View4.Controls.Add(mylable);
                    ID.Visible = false;
                }
                    catch { }
        }

            if (count > update_panel)
            {

                    for (int i = update_panel; i < count; i++)
                    {

                        Panel mylable = new Panel();
                        TextBox area = new TextBox();
                        FileUpload imge1 = new FileUpload();
                        Image image = new Image();
                        TextBox Room_Name = new TextBox();
                        DropDownList FK_Room_Type = new DropDownList();
                        Button button = new Button();
                        Button cancel = new Button();
                        mylable.ID = "panal" + i;
                        button.ID = "button_ADD" + "panal" + i;
                        button.Text = "add";
                        button.Click += Button_Click;
                        cancel.ID = "button_cancel" + "panal" + i;
                        cancel.Text = "cancel";
                        cancel.Click += Cancel_Click;
                        image.ID = "image" + mylable.ID;
                        area.ID = "area" + mylable.ID;
                        imge1.ID = "imge1" + mylable.ID;
                        Room_Name.ID = "Room_Name" + mylable.ID;
                        FK_Room_Type.ID = "FK_Room_Type" + mylable.ID;

                        Room_Type_DAL room_type = new Room_Type_DAL();
                        room_type.select_All();
                        foreach (var item in room_type.select_All())
                        {
                            ListItem listitem = new ListItem();
                            listitem.Text = item.Room_Type_Name;
                            listitem.Value = item.ID.ToString();
                            FK_Room_Type.Items.Add(listitem);
                        }
                        mylable.Controls.Add(area);
                        mylable.Controls.Add(Room_Name);
                        mylable.Controls.Add(FK_Room_Type);
                        mylable.Controls.Add(imge1);
                        mylable.Controls.Add(button);
                        mylable.Controls.Add(cancel);
                        mylable.Controls.Add(image);
                        View4.Controls.Add(mylable);
                    }
                    { }
                }
            }

        }

        private void Cancel_Click1(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            string x = b.ID;
            x = x.Remove(0, 18);
            for (int i = 0; i < update_panel; i++)
            {
                if (i == Convert.ToInt16(x))
                {
                    Panel mylabl = (Panel)View4.FindControl("panal" + x);
                    View4.Controls.Remove(mylabl);
                    update_panel--;
                    ViewState.Add("update_panel", update_panel);

                }

            }
        }











        protected void apply_Click1(object sender, EventArgs e)
        {
            try {
                HttpCookie local = Request.Cookies["user_server"];
                Apartments_DATA apartment = new Apartments_DATA();
                Building_DATA building = new Building_DATA();
                Roles_DATA roles = new Roles_DATA();
                Users_DATA user = new Users_DATA();
                Location_OF_Building_DATA location = new Location_OF_Building_DATA();
                Purpose_Apartment_DATA purpose = new Purpose_Apartment_DATA();
                Apartments_DAL apartment_inset = new Apartments_DAL();
                Building_DAL building_inset = new Building_DAL();
                Roles_DAL roles_inset = new Roles_DAL();
                Users_DAL user_inset = new Users_DAL();
                Location_OF_Building_DAL location_inset = new Location_OF_Building_DAL();
                Purpose_Apartment_DAL purpose_inset = new Purpose_Apartment_DAL();


                location.ID = Convert.ToInt16(Label2.Text);
                location.City = city.Text;
                location.Country = country.Text;
                location.Governorate = government.Text;
                location.Numer_of_Building = Convert.ToInt16(building_number.Text);
                location.Street_NAME = street_name.Text;
                location_inset.update(location);

                building.ID = Convert.ToInt16(Label3.Text);
                building.Area = Convert.ToInt16(building_area.Text);
                building.Descriptions = building_description.Text;
                building.Floor_Number = Convert.ToInt16(floor.Text);
                building.Year_Of_Building = building_year.SelectedDate;
                building.Image_1 = ViewState["building_img1"].ToString();
                building.Desgin_Image = ViewState["building_deign"].ToString();
                building.FK_Location_OF_Building = location.ID;
                building_inset.update(building);

                apartment.ID = Convert.ToInt16(Label4.Text);
                apartment.Area = Convert.ToInt16(apartment_area.Text);
                apartment.Avalable = 1;
                apartment.Descriptions = apartment_Description.Text;
                apartment.Image_1 = ViewState["imge1"].ToString();
                apartment.Image_2 = ViewState["imge2"].ToString();
                apartment.Image_3 = ViewState["imge3"].ToString();
                apartment.Design_Image = ViewState["apartment_design"].ToString();
                apartment.Price_Per_meter = Convert.ToInt16(price.Text);
                apartment.Apartments_Type = apartment_type.Text;
                apartment.FK_Building = building.ID;
                apartment.FK_Purpoes_Apartment = Convert.ToInt16(apartment_purpose.SelectedValue);
                apartment.FK_Users = Convert.ToInt16(local.Values["user_ID"]);
                apartment_inset.update(apartment);

                Room_DATA room = new Room_DATA();
                Room_DAL room_update = new Room_DAL();
                List<Room_DATA> room_list = new List<Room_DATA>();
                room_list = room_update.select_All().Where(x => x.FK_Apartment == apartment.ID).ToList();
                for (int i = 0; i < update_panel; i++)
                {
                    try
                    {
                        Panel mylable = new Panel();
                        TextBox area = new TextBox();
                        FileUpload imge1 = new FileUpload();
                        Image image = new Image();
                        TextBox Room_Name = new TextBox();
                        TextBox ID = new TextBox();
                        DropDownList FK_Room_Type = new DropDownList();
                        Button button = new Button();
                        Button cancel = new Button();
                        TextBox lable_ID = new TextBox();

                        Room_Type_DAL room_type = new Room_Type_DAL();
                        room_type.select_All();
                        foreach (var item in room_type.select_All())
                        {
                            ListItem listitem = new ListItem();
                            listitem.Text = item.Room_Type_Name;
                            listitem.Value = item.ID.ToString();
                            FK_Room_Type.Items.Add(listitem);
                        }

                        mylable = (Panel)View4.FindControl("panal" + i);

                        image = (Image)mylable.FindControl("image" + mylable.ID);
                        room.Image_1 = image.ImageUrl;
                        ID.ID = "ID" + mylable.ID;
                        area = (TextBox)mylable.FindControl("Area" + mylable.ID);
                        room.Area = Convert.ToInt16(area.Text);
                        Room_Name = (TextBox)mylable.FindControl("Room_Name" + mylable.ID);
                        room.Room_Name = Room_Name.Text;
                        FK_Room_Type = (DropDownList)mylable.FindControl("FK_Room_Type" + mylable.ID);
                        room.FK_Room_Type = Convert.ToInt16(FK_Room_Type.SelectedValue);
                        room.FK_Apartment = apartment.ID;
                        ID = (TextBox)mylable.FindControl("ID" + mylable.ID);
                        room.ID = Convert.ToInt16(ID.Text);
                        //lable_ID= (TextBox)mylable.FindControl("ID" + mylable.ID);
                        //room.ID =Convert.ToInt16( lable_ID.Text);
                        //lable_ID.Visible = false;
                        //room =room_list[i];
                        room_update.update(room);
                        room_list = room_list.Where(x => x.ID != room.ID).ToList();
                    }
                    catch { }

                }
                foreach (var item in room_list)
                {
                    room_update.delete(item);


                }
                for (int i = update_panel; i < count; i++)
                {
                    Panel mylable = new Panel();
                    TextBox area = new TextBox();
                    FileUpload imge1 = new FileUpload();
                    Image image = new Image();
                    TextBox Room_Name = new TextBox();
                    DropDownList FK_Room_Type = new DropDownList();
                    Button button = new Button();
                    Button cancel = new Button();
                    mylable.ID = "IDpanal" + i;
                    button.ID = "button_ADD" + "panal" + i;
                    button.Text = "add";
                    button.Click += Button_Click;
                    cancel.ID = "button_cancel" + "panal" + i;
                    cancel.Text = "cancel";
                    cancel.Click += Cancel_Click;
                    image.ID = "image" + mylable.ID;
                    area.ID = "area" + mylable.ID;
                    imge1.ID = "imge1" + mylable.ID;
                    Room_Name.ID = "Room_Name" + mylable.ID;
                    FK_Room_Type.ID = "FK_Room_Type" + mylable.ID;

                    Room_Type_DAL room_type = new Room_Type_DAL();
                    room_type.select_All();
                    foreach (var item in room_type.select_All())
                    {
                        ListItem listitem = new ListItem();
                        listitem.Text = item.Room_Type_Name;
                        listitem.Value = item.ID.ToString();
                        FK_Room_Type.Items.Add(listitem);
                    }
                    //mylable.Controls.Add(area);
                    //mylable.Controls.Add(Room_Name);
                    //mylable.Controls.Add(FK_Room_Type);
                    //mylable.Controls.Add(imge1);
                    //mylable.Controls.Add(button);
                    //mylable.Controls.Add(cancel);
                    //mylable.Controls.Add(image);
                    //View4.Controls.Add(mylable);

                    //room.Image_1 = image.ImageUrl;
                    //room.Area = Convert.ToInt16(area.Text);
                    //room.Room_Name = Room_Name.Text;
                    //room.FK_Room_Type = Convert.ToInt16(FK_Room_Type.SelectedValue);
                    //room.FK_Apartment = apartment.ID;


                    mylable = (Panel)View4.FindControl("panal" + i);
                    area = (TextBox)mylable.FindControl("area" + mylable.ID);
                    imge1 = (FileUpload)mylable.FindControl("imge1" + mylable.ID);
                    Room_Name = (TextBox)mylable.FindControl("Room_Name" + mylable.ID);
                    FK_Room_Type = (DropDownList)mylable.FindControl("FK_Room_Type" + mylable.ID);
                    image = (Image)mylable.FindControl("image" + mylable.ID);

                    room.Area = Convert.ToInt16(area.Text);
                    room.Image_1 = image.ImageUrl;
                    room.Room_Name = Room_Name.Text;
                    room.FK_Room_Type = Convert.ToInt16(FK_Room_Type.SelectedValue);
                    room.FK_Apartment = apartment.ID;


                    // room = room_list[i];
                    room_update.insert(room);

                }

            }
            catch { };
            
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;

            ViewState.Add("apartment_design", Image6.ImageUrl.Substring(9));
            ViewState.Add("imge3", Image7.ImageUrl.Substring(9));
            ViewState.Add("imge2", Image4.ImageUrl.Substring(9));
            ViewState.Add("imge1", Image3.ImageUrl.Substring(9));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            ViewState.Add("building_deign", Image1.ImageUrl.Substring(9));

            ViewState.Add("building_img1", Image2.ImageUrl.Substring(9));
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/User_Pages/User_Main_Page.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Image3.ImageUrl = "~/images/" + imge4.PostedFile.FileName;
            if (imge4.PostedFile.FileName != "")
            {

                imge4.PostedFile.SaveAs(Server.MapPath("~/images/" + imge4.PostedFile.FileName));
            }

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Image4.ImageUrl = "~/images/" + imge5.PostedFile.FileName;
            if (imge4.PostedFile.FileName != "")
            {

                imge5.PostedFile.SaveAs(Server.MapPath("~/images/" + imge5.PostedFile.FileName));

            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Image7.ImageUrl = "~/images/" + imge6.PostedFile.FileName;
            if (imge6.PostedFile.FileName != "")
            {
                imge6.PostedFile.SaveAs(Server.MapPath("~/images/" + imge6.PostedFile.FileName));

            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Image6.ImageUrl = "~/images/" + apartment_design.PostedFile.FileName;
            if (apartment_design.PostedFile.FileName != "")
            {
                apartment_design.PostedFile.SaveAs(Server.MapPath("~/images/" + apartment_design));
            }

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Image1.ImageUrl = "~/images/" + building_img2.PostedFile.FileName;
            if (building_img2.PostedFile.FileName != "")
            {
                building_img2.PostedFile.SaveAs(Server.MapPath("~/images/" + building_img2.PostedFile.FileName));

            }

        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Image2.ImageUrl = "~/images/" + building_deign.PostedFile.FileName;
            if (building_deign.PostedFile.FileName != "")
            {
                building_deign.PostedFile.SaveAs(Server.MapPath("~/images/" + building_deign.PostedFile.FileName));
            }


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
            count = Convert.ToInt16(ViewState["count"]);
            update_panel = Convert.ToInt16(ViewState["update_panel"]);
            Apartments_DAL apartment_select_items = new Apartments_DAL();
            Apartments_DATA Update_apartment = new Apartments_DATA();
            id = Convert.ToInt16(Request.QueryString["id"]);
            Update_apartment = apartment_select_items.select_Item(id);

          
            //Room_DATA room = new Room_DATA();
            List<Room_DATA> list_Room = room_select.select_All().Where(x => x.FK_Apartment == Update_apartment.ID).ToList();
          
                for (int i = 0; i < update_panel; i++)
                {

                try
                {
                    Panel mylable = new Panel();
                    TextBox area = new TextBox();
                    FileUpload imge1 = new FileUpload();
                    Image image = new Image();
                    TextBox Room_Name = new TextBox();
                    DropDownList FK_Room_Type = new DropDownList();
                    TextBox ID = new TextBox();
                    Button button = new Button();
                    Button cancel = new Button();
                    mylable.ID = "panal" + i;
                    button.ID = "button_ADD" + "panal" + i;
                    button.Text = "add";
                    button.Click += Button_Click;
                    cancel.ID = "button_cancel_1" + "panal" + i;
                    cancel.Text = "cancel";
                    cancel.Click += Cancel_Click2;
                    image.ID = "image" + mylable.ID;
                    area.ID = "area" + mylable.ID;
                    imge1.ID = "imge1" + mylable.ID;
                    Room_Name.ID = "Room_Name" + mylable.ID;
                    FK_Room_Type.ID = "FK_Room_Type" + mylable.ID;
                    ID.ID = "ID" + mylable.ID;
                    Room_Type_DAL room_type = new Room_Type_DAL();
                    room_type.select_All();
                    foreach (var item in room_type.select_All())
                    {
                        ListItem listitem = new ListItem();
                        listitem.Text = item.Room_Type_Name;
                        listitem.Value = item.ID.ToString();
                        FK_Room_Type.Items.Add(listitem);
                    }

                    area.Text = list_Room[i].Area.ToString();
                    Room_Name.Text = list_Room[i].Room_Name.ToString();
                    image.ImageUrl = list_Room[i].Image_1.ToString();
                    image.Height = 100;
                    image.Width = 100;
                    FK_Room_Type.SelectedValue = list_Room[i].FK_Room_Type.ToString();
                    // list_ID.Add(list_Room[i].ID);
                    ID.Text = list_Room[i].ID.ToString();




                    mylable.Controls.Add(area);
                    mylable.Controls.Add(Room_Name);
                    mylable.Controls.Add(FK_Room_Type);
                    mylable.Controls.Add(imge1);
                    mylable.Controls.Add(ID);
                    mylable.Controls.Add(button);
                    mylable.Controls.Add(cancel);
                    mylable.Controls.Add(image);
                    View4.Controls.Add(mylable);
                    ID.Visible = false;
                }
                catch { }
            }
            //  ViewState.Add("list_ID", list_ID);
            if(MultiView1.ActiveViewIndex == 3)
            { apply.Visible = true; }
        }

        private void Cancel_Click2(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            string x = b.ID;
            x = x.Remove(0, 18);
            for (int i = 0; i < update_panel; i++)
            {
                if (i == Convert.ToInt16(x))
                {
                    Panel mylabl = (Panel)View4.FindControl("panal" + x);
                    View4.Controls.Remove(mylabl);
                    update_panel--;
                    ViewState.Add("update_panel", update_panel);
                   // list_ID.RemoveAt(i);

                }
            }
            //ViewState.Add("list_ID", list_ID);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            for (int i = 0; i <= count; i++)
            {
                Panel mylable = new Panel();
                TextBox area = new TextBox();
                FileUpload imge1 = new FileUpload();
                Image image = new Image();
                TextBox Room_Name = new TextBox();
                DropDownList FK_Room_Type = new DropDownList();
                Button button = new Button();
                Button cancel = new Button();
                if (i == count)
                {

                    button.ID = "button_ADD" + "panal" + i;
                    button.Text = "add";
                    button.Click += Button_Click;

                    cancel.ID = "button_cancel" + "panal" + i;
                    cancel.Text = "cancel";
                    cancel.Click += Cancel_Click;

                    mylable.ID = "panal" + i;
                    area.ID = "area" + mylable.ID;
                    Room_Name.ID = "Room_Name" + mylable.ID;
                    FK_Room_Type.ID = "FK_Room_Type" + mylable.ID;
                    Room_Type_DAL room_type = new Room_Type_DAL();
                    room_type.select_All();
                    foreach (var item in room_type.select_All())
                    {
                        ListItem listitem = new ListItem();
                        listitem.Text = item.Room_Type_Name;
                        listitem.Value = item.ID.ToString();
                        FK_Room_Type.Items.Add(listitem);
                    }
                    image.ID = "image" + mylable.ID;
                    imge1.ID = "imge1" + mylable.ID;
                    mylable.Controls.Add(area);
                    mylable.Controls.Add(Room_Name);
                    mylable.Controls.Add(FK_Room_Type);
                    mylable.Controls.Add(imge1);
                    mylable.Controls.Add(button);
                    mylable.Controls.Add(cancel);
                    cancel.Click += Cancel_Click;
                    button.Click += Button_Click;
                    mylable.Controls.Add(image);
                    View4.Controls.Add(mylable);
                }
            }
         
            count++;
            ViewState.Add("count", count);
        }

        private void Cancel_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            string x = b.ID;
            x = x.Remove(0, 18);
            for (int i = 0; i < count; i++)
            {
                if (i == Convert.ToInt16(x))
                {
                    Panel mylabl = (Panel)View4.FindControl("panal" + x);
                    View4.Controls.Remove(mylabl);
                    count--;
                    ViewState.Add("count", count);

                }
            }
        }
     

        private void Button_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            string x = b.ID;
            x = x.Remove(0, 15);
            for (int i = 0; i < count; i++)
            {
                if (i == Convert.ToInt16(x))
                {
                    Panel mylabl = (Panel)View4.FindControl("panal" + x);
                    FileUpload imge = new FileUpload();
                    Image image = new Image();
                    image.ID = "image" + mylabl.ID;
                    imge = (FileUpload)mylabl.FindControl("imge1" + mylabl.ID);
                    if (imge.FileName != "")
                    {
                        imge.PostedFile.SaveAs(Server.MapPath("~/images/" + imge.PostedFile.FileName));
                    }
                    image = (Image)mylabl.FindControl("image" + mylabl.ID);
                    image.ImageUrl = "../images/" + imge.FileName;
                    image.Height = 100;
                    image.Width = 100;
                    mylabl.Controls.Add(image);
                    View4.Controls.Add(mylabl);

                }
            }
        }
    }
}
    
