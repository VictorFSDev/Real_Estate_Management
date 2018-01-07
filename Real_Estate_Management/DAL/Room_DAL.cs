using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Room_DAL
    {





        public List<Room_DATA> select_All()
        {
            List<Room_DATA> Room_DATA_list = new List<Room_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Room", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Room_DATA Room = new Room_DATA();

                Room.Area =(Double) rdr["Area"];
                Room.FK_Apartment =(int) rdr["FK_Apartment"];
                Room.FK_Room_Type =(int) rdr["FK_Room_Type"];
                Room.ID =(int) rdr["ID"];
                Room.Image_1 = rdr["Image_1"].ToString() ;
                Room.Room_Name = rdr["Room_Name"].ToString();
             

                Room_DATA_list.Add(Room);

            }
            con.Close();


            return Room_DATA_list;

        }



        public Room_DATA select_Item(int ID)
        {
            Room_DATA Room = new Room_DATA();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_Item_Room", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {

                Room.Area = (Double)rdr["Area"];
                Room.FK_Apartment = (int)rdr["FK_Apartment"];
                Room.FK_Room_Type = (int)rdr["FK_Room_Type"];
                Room.ID = (int)rdr["ID"];
                Room.Image_1 = rdr["Image_1"].ToString();
                Room.Room_Name = rdr["Room_Name"].ToString();


            }
            con.Close();

            return Room;

        }
        public void insert(Room_DATA room)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Room", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("Area", room.Area);

            cmd.Parameters.AddWithValue("FK_Apartment", room.FK_Apartment);

            cmd.Parameters.AddWithValue("FK_Room_Type", room.FK_Room_Type);

            cmd.Parameters.AddWithValue("Image_1", room.Image_1);

            cmd.Parameters.AddWithValue("Room_Name", room.Room_Name);


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Room_DATA room)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Room", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Area", room.Area);

            cmd.Parameters.AddWithValue("FK_Apartment", room.FK_Apartment);

            cmd.Parameters.AddWithValue("FK_Room_Type", room.FK_Room_Type);

            cmd.Parameters.AddWithValue("ID", room.ID);

            cmd.Parameters.AddWithValue("Image_1", room.Image_1);

            cmd.Parameters.AddWithValue("Room_Name", room.Room_Name);



            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Room_DATA Room)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Room", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Room.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }






















    }
}