using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class  Room_Type_DAL
    {


        public List<Room_Type_DATA> select_All()
        {
            List<Room_Type_DATA> Room_Type_list = new List<Room_Type_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Room_Type", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Room_Type_DATA Room_Type = new Room_Type_DATA();

                Room_Type.ID = (int)rdr["ID"];
                Room_Type.Room_Type_Name =rdr["Room_Type_Name"].ToString();
                Room_Type_list.Add(Room_Type);
            }
            con.Close();


            return Room_Type_list;

        }



        public Room_Type_DATA select_Item(int ID)
        {
            Room_Type_DATA Room_Type = new Room_Type_DATA();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_Item_Room_Type", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                Room_Type.ID = (int)rdr["ID"];
                Room_Type.Room_Type_Name = rdr["Room_Type_Name"].ToString();



            }
            con.Close();

            return Room_Type;

        }
        public void insert(Room_Type_DATA Room_Type)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Room_Type", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Room_Type_Name", Room_Type.Room_Type_Name);
         
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Room_Type_DATA Room_Type)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Room_Type", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Room_Type.ID);
            cmd.Parameters.AddWithValue("Room_Type_Name", Room_Type.Room_Type_Name);


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Room_Type_DATA Room_Type)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Room_Type", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Room_Type.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }

    }
}