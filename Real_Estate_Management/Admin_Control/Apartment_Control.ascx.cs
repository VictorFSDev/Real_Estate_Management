using Real_Estate_Management.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate_Management.Admin_Control
{
    public partial class Apartment_Control : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["admin_server"] != null)
            {

                HttpCookie local = Request.Cookies["admin_server"];


                Users_DAL user = new Users_DAL();

                foreach (var item in user.select_All())
                {
                    if (item.Email == local.Values["admin_email"])
                    {
                        Label1.Text = "Hi" + " " + item.First_Name;
                    }


                }

            }
            else
            {
                Response.Redirect("/User_Pages/Login_Webpage.aspx");
            }

        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            DropDownList dropdown = (DropDownList)ListView1.InsertItem.FindControl("DropDownList1");
            e.Values["FK_Users"] = dropdown.SelectedValue;
            FileUpload file1 = (FileUpload)ListView1.InsertItem.FindControl("FileUpload1");
            e.Values["Image_1"] = file1.FileName;
            FileUpload file2 = (FileUpload)ListView1.InsertItem.FindControl("FileUpload2");
            e.Values["Image_2"] = file2.FileName;
            FileUpload file3 = (FileUpload)ListView1.InsertItem.FindControl("FileUpload3");
            e.Values["Image_3"] = file3.FileName;
            FileUpload file4= (FileUpload)ListView1.InsertItem.FindControl("FileUpload4");
            e.Values["Design_Image"] = file4.FileName;

            DropDownList dropdown2 = (DropDownList)ListView1.InsertItem.FindControl("DropDownList2");
            e.Values["FK_Purpoes_Apartment"] = dropdown2.SelectedValue;

            DropDownList dropdown3 = (DropDownList)ListView1.InsertItem.FindControl("DropDownList3");
            e.Values["FK_Building"] = dropdown3.SelectedValue;
        }

        protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            DropDownList dropdown = (DropDownList)ListView1.EditItem.FindControl("DropDownList1");
            e.NewValues["FK_Users"] = dropdown.SelectedValue;
            FileUpload file = (FileUpload)ListView1.EditItem.FindControl("FileUpload2");
            e.NewValues["Image_1"] = file.FileName;

            FileUpload file2 = (FileUpload)ListView1.EditItem.FindControl("FileUpload2");
            e.NewValues["Image_2"] = file2.FileName;
            FileUpload file3 = (FileUpload)ListView1.EditItem.FindControl("FileUpload3");
            e.NewValues["Image_3"] = file3.FileName;
            FileUpload file4 = (FileUpload)ListView1.EditItem.FindControl("FileUpload4");
            e.NewValues["Design_Image"] = file4.FileName;


            DropDownList dropdown2 = (DropDownList)ListView1.EditItem.FindControl("DropDownList2");
            e.NewValues["FK_Purpoes_Apartment"] = dropdown2.SelectedValue;
            DropDownList dropdown3 = (DropDownList)ListView1.EditItem.FindControl("DropDownList3");
            e.NewValues["FK_Building"] = dropdown3.SelectedValue;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["admin_server"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("/User_Pages/Login_Webpage.aspx");
        }
    }
}