using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Users_DAL
    {
        public List<Users_DATA> select_All()
        {
            List<Users_DATA> Users_DATA_list = new List<Users_DATA>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Users", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Users_DATA Users_DATA= new Users_DATA();

                Users_DATA.City = rdr["City"].ToString(); 
                Users_DATA.Country =rdr["Country"].ToString();
                Users_DATA.Email = rdr["Email"].ToString();
                Users_DATA.First_Name = rdr["First_Name"].ToString();
                Users_DATA.FK_Role =(int) rdr["FK_Role"]; ;
                Users_DATA.Gender = rdr["Gender"].ToString();
                Users_DATA.Governorate = rdr["Governorate"].ToString();
                Users_DATA.ID =(int) rdr["ID"]; ;
                Users_DATA.Last_Name = rdr["Last_Name"].ToString();
                Users_DATA.Phone_Number =(int) rdr["Phone_Number"] ;
                Users_DATA.User_Password = rdr["User_Password"].ToString();
                Users_DATA.image = rdr["img"].ToString();

                Users_DATA_list.Add(Users_DATA);

            }
            con.Close();


            return Users_DATA_list;

        }



        public Users_DATA select_Item(int ID)
        {
            Users_DATA Users_DATA = new Users_DATA();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_Item_Users", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {

                Users_DATA.City = rdr["City"].ToString();
                Users_DATA.Country = rdr["Country"].ToString();
                Users_DATA.Email = rdr["Email"].ToString();
                Users_DATA.First_Name = rdr["First_Name"].ToString();
                Users_DATA.FK_Role = (int)rdr["FK_Role"]; ;
                Users_DATA.Gender = rdr["Gender"].ToString();
                Users_DATA.Governorate = rdr["Governorate"].ToString();
                Users_DATA.ID = (int)rdr["ID"]; ;
                Users_DATA.Last_Name = rdr["Last_Name"].ToString();
                Users_DATA.Phone_Number = (int)rdr["Phone_Number"];
                Users_DATA.User_Password = rdr["User_Password"].ToString();
                Users_DATA.image = rdr["img"].ToString();


            }
            con.Close();

            return Users_DATA;

        }
        public void insert(Users_DATA Users)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Users", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("City", Users.City);

            cmd.Parameters.AddWithValue("Country", Users.Country);

            cmd.Parameters.AddWithValue("Email", Users.Email);

            cmd.Parameters.AddWithValue("First_Name", Users.First_Name);

            cmd.Parameters.AddWithValue("FK_Role", Users.FK_Role);

            cmd.Parameters.AddWithValue("Gender", Users.Gender);

            cmd.Parameters.AddWithValue("Governorate", Users.Governorate);

            cmd.Parameters.AddWithValue("Last_Name", Users.Last_Name);
            cmd.Parameters.AddWithValue("Phone_Number", Users.Phone_Number);
            cmd.Parameters.AddWithValue("User_Password", Users.User_Password);



            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Users_DATA Users)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Users", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Users.ID);
            cmd.Parameters.AddWithValue("City", Users.City);

            cmd.Parameters.AddWithValue("Country", Users.Country);

            cmd.Parameters.AddWithValue("Email", Users.Email);

            cmd.Parameters.AddWithValue("First_Name", Users.First_Name);

            cmd.Parameters.AddWithValue("FK_Role", Users.FK_Role);

            cmd.Parameters.AddWithValue("Gender", Users.Gender);

            cmd.Parameters.AddWithValue("Governorate", Users.Governorate);

            cmd.Parameters.AddWithValue("Last_Name", Users.Last_Name);
            cmd.Parameters.AddWithValue("Phone_Number", Users.Phone_Number);
            cmd.Parameters.AddWithValue("User_Password", Users.User_Password);



            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Users_DATA Users)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Users", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Users.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }


















    }
}