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
    public partial class announces : System.Web.UI.UserControl
    {
        int id;

        protected void Page_Load(object sender, EventArgs e)

        {

            HttpCookie local = Request.Cookies["user_server"];

            if (Request.Cookies["user_server"] != null)
            {

                local = Request.Cookies["user_server"];


                Users_DAL user = new Users_DAL();

                foreach (var item in user.select_All())
                {
                    if (item.Email == local.Values["user_email"])
                    {
                        Label1.Text = local.Values["user_ID"];
                    }


                }

            }
            else
            {
                Response.Redirect("/User_Pages/Update_To_Appartment.aspx");
            }

        }

        protected void ListView1_Load(object sender, EventArgs e)
        {
        }



        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Label2_Load(object sender, EventArgs e)
        {
            //Label x = (Label)ListView1.FindControl("Label2");
            //x.Text = "hi";
        }

        protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            //if(e.Item.ItemType==ListViewItemType.DataItem)
            //{

            //    Label x = (Label)e.Item.FindControl("IDLabel");
            //   id= Convert.ToInt16( x.Text);//important statment
            //    ViewState.Add("id", id);
            //}
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
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
        }

       

     

       

        

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow x = GridView1.SelectedRow;

            var m = x.Cells;

            foreach (DataControlFieldCell item in m)
            {
                if ("ID" == item.ContainingField.AccessibleHeaderText)
                {

                    id = Convert.ToInt16(item.Text);
                    Response.Redirect("/User_Pages/Update_To_Appartment.aspx?id=" + id);
                }

            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow x = GridView1.SelectedRow;

            var m = x.Cells;

            foreach (DataControlFieldCell item in m)
            {
                if ("ID" == item.ContainingField.AccessibleHeaderText)
                {

                    id = Convert.ToInt16(item.Text);
                    Response.Redirect("/User_Pages/Update_To_Appartment.aspx?id=" + id);
                }

            }


        }

     

        protected void GridView1_SelectedIndexChanged3(object sender, EventArgs e)
        {
      
            GridViewRow x = GridView1.SelectedRow;

            var m = x.Cells;

            foreach (DataControlFieldCell item in m)
            {
                if ("ID2" == item.ContainingField.AccessibleHeaderText)
                {

                    Label n =(Label) item.FindControl("Label2");
                    id =Convert.ToInt16( n.Text);
                    Response.Redirect("/User_Pages/Update_To_Appartment.aspx?id=" + id);
                }

            }


        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
         
        }
    }
    }
