using Real_Estate_Management.DAL;
using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Real_Estate_Management.User_Control
{
    public partial class ADD_new_apartment : System.Web.UI.UserControl
    {
      
            int count;
            int id;
            protected void Page_Init(object sender, EventArgs e)
            {

                Page.EnableEventValidation = false;
            }

            protected void Page_Load(object sender, EventArgs e)
            {
                count = Convert.ToInt16(ViewState["count"]);
                //for (int i = 0; i < count; i++)
                //{
                //    TextBox mylable = new TextBox();
                //    mylable.ID = "" + i;
                //    View4.Controls.Add(mylable);
                //}
                for (int i = 0; i < count; i++)
                {
                    Panel mylable = new Panel();
                    TextBox area = new TextBox();
                    FileUpload imge1 = new FileUpload();
                    Image image = new Image();
                    TextBox Room_Name = new TextBox();
                Label Room_Name_lab = new Label();
                Label area_lab = new Label();
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
                image.Height = 100;
                image.Width = 100;
                area.ID = "area" + mylable.ID;
                    imge1.ID = "imge1" + mylable.ID;
                    Room_Name.ID = "Room_Name" + mylable.ID;
                    FK_Room_Type.ID = "FK_Room_Type" + mylable.ID;
                Room_Name_lab.Text = "room name";
                area_lab.Text = "room area";
                Room_Name_lab.ControlStyle.ForeColor = System.Drawing.Color.Blue;
                area_lab.ControlStyle.ForeColor = System.Drawing.Color.Blue;
                Room_Type_DAL room_type = new Room_Type_DAL();
                    room_type.select_All();
                    foreach (var item in room_type.select_All())
                    {
                        ListItem listitem = new ListItem();
                        listitem.Text = item.Room_Type_Name;
                        listitem.Value = item.ID.ToString();
                        FK_Room_Type.Items.Add(listitem);
                    }
                mylable.Controls.Add(area_lab);
                mylable.Controls.Add(area);
                mylable.Controls.Add(Room_Name_lab);
                mylable.Controls.Add(Room_Name);
                    mylable.Controls.Add(FK_Room_Type);
                    mylable.Controls.Add(imge1);
                    mylable.Controls.Add(button);
                    mylable.Controls.Add(cancel);
                    mylable.Controls.Add(image);
                    View4.Controls.Add(mylable);
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


            protected void apply_Click1(object sender, EventArgs e)
            {
                HttpCookie local = Request.Cookies["user_server"];
                Apartments_DATA apartment = new Apartments_DATA();
                Building_DATA building = new Building_DATA();
                Roles_DATA roles = new Roles_DATA();
                Users_DATA user = new Users_DATA();
                Location_OF_Building_DATA location = new Location_OF_Building_DATA();
                Purpose_Apartment_DATA purpose = new Purpose_Apartment_DATA();
                Room_DATA room = new Room_DATA();

                Apartments_DAL apartment_inset = new Apartments_DAL();
                Building_DAL building_inset = new Building_DAL();
                Roles_DAL roles_inset = new Roles_DAL();
                Users_DAL user_inset = new Users_DAL();
                Location_OF_Building_DAL location_inset = new Location_OF_Building_DAL();
                Purpose_Apartment_DAL purpose_inset = new Purpose_Apartment_DAL();
                Room_DAL room_insert = new Room_DAL();

                location.City = city.Text;
                location.Country = country.Text;
                location.Governorate = government.Text;
                location.Numer_of_Building = Convert.ToInt16(building_number.Text);
                location.Street_NAME = street_name.Text;
                location_inset.insert(location);

                building.Area = Convert.ToInt16(building_area.Text);
                building.Descriptions = building_description.Text;
                building.Floor_Number = Convert.ToInt16(floor.Text);
                building.Year_Of_Building = building_year.SelectedDate;
                building.Image_1 = ViewState["building_img1"].ToString();
                building.Desgin_Image = ViewState["building_deign"].ToString();
                building.FK_Location_OF_Building = location_inset.select_All().Last().ID;
                building_inset.insert(building);
                building = building_inset.select_All().Last();

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
                apartment_inset.insert(apartment);
                apartment = apartment_inset.select_All().Last();
                count = Convert.ToInt16(ViewState["count"]);
                for (int i = 0; i < count; i++)
                {
                    Panel mylable = new Panel();
                    TextBox area = new TextBox();
                    FileUpload imge1 = new FileUpload();
                    Image image = new Image();
                    TextBox Room_Name = new TextBox();
                    DropDownList FK_Room_Type = new DropDownList();


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
                    room_insert.insert(room);


                   
                }
            Response.Redirect("/User_Pages/announc.aspx");
        }

            protected void Button1_Click(object sender, EventArgs e)
            {
                MultiView1.ActiveViewIndex = 1;
                //imge1.PostedFile.SaveAs(Server.MapPath("~/images/" + imge1.PostedFile.FileName));
                //imge2.PostedFile.SaveAs(Server.MapPath("~/images/" + imge2.PostedFile.FileName));
                //imge3.PostedFile.SaveAs(Server.MapPath("~/images/" + imge3.PostedFile.FileName));
                // apartment_design.PostedFile.SaveAs(Server.MapPath("~/images/" + apartment_design.PostedFile.FileName));

                ViewState.Add("imge1",   Image3.ImageUrl.Substring(9));
                ViewState.Add("imge2",  Image4.ImageUrl.Substring(9));
                ViewState.Add("imge3", Image7.ImageUrl.Substring(9));
                ViewState.Add("apartment_design", Image6.ImageUrl.Substring(9));

            }

            protected void Button2_Click(object sender, EventArgs e)
            {
                MultiView1.ActiveViewIndex = 2;
                // building_img1.PostedFile.SaveAs(Server.MapPath("~/images/" + building_img1.PostedFile.FileName));
                //building_deign.PostedFile.SaveAs(Server.MapPath("~/images/" + building_deign.PostedFile.FileName));

                ViewState.Add("building_img1",  Image1.ImageUrl.Substring(9));
                ViewState.Add("building_deign", Image2.ImageUrl.Substring(9));
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

            protected void imge1_DataBinding(object sender, EventArgs e)
            {

            }

            protected void Button4_Click(object sender, EventArgs e)
            {
                MultiView1.ActiveViewIndex = 3;
            apply.Visible = true;
            }

            protected void Button5_Click(object sender, EventArgs e)
            {
                //for (int i = 0; i <= count; i++)
                //{
                //    if (i == count)
                //    {
                //        TextBox mylable = new TextBox();
                //        mylable.ID = "" + count;
                //        View4.Controls.Add(mylable);
                //    }
                //}
                //kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk

                for (int i = 0; i <= count; i++)
            {
                Label Room_Name_lab = new Label();
                Label area_lab = new Label();
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
                    Room_Name_lab.Text = "room name";
                    area_lab.Text = "room area";
                    Room_Name_lab.ControlStyle.ForeColor = System.Drawing.Color.Blue;
                    area_lab.ControlStyle.ForeColor = System.Drawing.Color.Blue;

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
                    image.Height=100;
                    image.Width = 100;

                        imge1.ID = "imge1" + mylable.ID;
                    mylable.Controls.Add(area_lab);

                    mylable.Controls.Add(area);

                    mylable.Controls.Add(Room_Name_lab);
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
                    //else
                    //{
                    //    mylable.ID = "panal" + i;
                    //    image = (Image)View4.FindControl("image" + mylable.ID);
                    //    //image.ID = "image" + mylable.ID;
                    //    mylable.Controls.Add(image);
                    //    View4.Controls.Add(mylable);
                    //}
                }
                //kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
                count++;
                ViewState.Add("count", count);

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
                        image.Height = 200;
                        image.Width = 200;
                        mylabl.Controls.Add(image);
                        View4.Controls.Add(mylabl);

                    }
                }
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

            protected void View4_Init(object sender, EventArgs e)
            {

            }

            protected void imge1_DataBinding1(object sender, EventArgs e)
            {

            }

            protected void Button6_Click(object sender, EventArgs e)
            {
                Image3.ImageUrl = "~/images/" + imge1.FileName;
                imge1.PostedFile.SaveAs(Server.MapPath("~/images/" + imge1.PostedFile.FileName));


            }

            protected void Button7_Click(object sender, EventArgs e)
            {
                Image4.ImageUrl = "~/images/" + imge2.FileName;
                imge2.PostedFile.SaveAs(Server.MapPath("~/images/" + imge2.PostedFile.FileName));
            }

            protected void Button8_Click(object sender, EventArgs e)
            {
                Image7.ImageUrl = "~/images/" + imge3.FileName;
                imge3.PostedFile.SaveAs(Server.MapPath("~/images/" + imge3.PostedFile.FileName));
            }

            protected void Button9_Click(object sender, EventArgs e)
            {
                Image6.ImageUrl = "~/images/" + apartment_design.FileName;
              apartment_design.PostedFile.SaveAs(Server.MapPath("~/images/" + apartment_design.PostedFile.FileName));

            }

            protected void Button10_Click(object sender, EventArgs e)
            {
                Image1.ImageUrl = "~/images/" + building_img1.FileName;
               building_img1.PostedFile.SaveAs(Server.MapPath("~/images/" + building_img1.PostedFile.FileName));

            }

            protected void Button11_Click(object sender, EventArgs e)
            {
                Image2.ImageUrl = "~/images/" + building_deign.FileName;
               building_deign.PostedFile.SaveAs(Server.MapPath("~/images/" + building_deign.PostedFile.FileName));

            }
        }
    }
