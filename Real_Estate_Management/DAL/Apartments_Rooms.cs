using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Apartments_Rooms
    {
        public List<Room_DATA> select_All(int id)
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

                Room.Area = (Double)rdr["Area"];
                Room.FK_Apartment = (int)rdr["FK_Apartment"];
                Room.FK_Room_Type = (int)rdr["FK_Room_Type"];
                Room.ID = (int)rdr["ID"];
                Room.Image_1 = rdr["Image_1"].ToString();
                Room.Room_Name = rdr["Room_Name"].ToString();
                Room_Type_DAL room_type = new Room_Type_DAL();
                Room.Room_Type_Name = room_type.select_All().SingleOrDefault(x => x.ID == Room.FK_Room_Type).Room_Type_Name.ToString();

                Room_DATA_list.Add(Room);

            }
            con.Close();
            Room_DATA_list = Room_DATA_list.Where(x => x.FK_Apartment == id).ToList();

            return Room_DATA_list;

        }

    }
}