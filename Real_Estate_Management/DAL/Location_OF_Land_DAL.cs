using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Location_OF_Land_DAL
    {




        public List<Location_OF_Land_DATA> select_All()
        {
            List<Location_OF_Land_DATA> Location_OF_Land_list = new List<Location_OF_Land_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Location_OF_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Location_OF_Land_DATA Location_OF_Land = new Location_OF_Land_DATA();

                Location_OF_Land.City = rdr["City"].ToString();
                Location_OF_Land.Country = rdr["Country"].ToString();
                Location_OF_Land.Governorate = rdr["Governorate"].ToString();
                Location_OF_Land.ID = (int)rdr["ID"];
                Location_OF_Land.Piece_Number = (long)(rdr["Piece_Number"]);
                Location_OF_Land.Street_NAME = rdr["Street_NAME"].ToString();
                Location_OF_Land_list.Add(Location_OF_Land);
                Location_OF_Land.FK_Land = (int)rdr["FK_Land"];


            }
            con.Close();


            return Location_OF_Land_list;

        }



        public Location_OF_Land_DATA select_Item(int ID)
        {
            Location_OF_Land_DATA Location_OF_Land = new Location_OF_Land_DATA();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Location_OF_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {

                Location_OF_Land.City = rdr["City"].ToString();
                Location_OF_Land.Country = rdr["Country"].ToString();
                Location_OF_Land.Governorate = rdr["Governorate"].ToString();
                Location_OF_Land.ID = (int)rdr["ID"];
                Location_OF_Land.Piece_Number = (long)(rdr["Numer_of_Building"]);
                Location_OF_Land.Street_NAME = rdr["Street_NAME"].ToString();
                Location_OF_Land.FK_Land = (int)rdr["FK_Land"];


            }
            con.Close();

            return Location_OF_Land;

        }
        public void insert(Location_OF_Land_DATA Location_OF_Land)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Location_OF_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("City", Location_OF_Land.City);

            cmd.Parameters.AddWithValue("Country", Location_OF_Land.Country);

            cmd.Parameters.AddWithValue("Governorate", Location_OF_Land.Governorate);

            cmd.Parameters.AddWithValue("FK_Land", Location_OF_Land.FK_Land);

            cmd.Parameters.AddWithValue("Street_NAME", Location_OF_Land.Street_NAME);
            cmd.Parameters.AddWithValue("Piece_Number", Location_OF_Land.Piece_Number);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Location_OF_Land_DATA Location_OF_Land)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Location_OF_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("City", Location_OF_Land.City);
            cmd.Parameters.AddWithValue("Country", Location_OF_Land.Country);
            cmd.Parameters.AddWithValue("Governorate", Location_OF_Land.Governorate);
            cmd.Parameters.AddWithValue("FK_Land", Location_OF_Land.FK_Land);
            cmd.Parameters.AddWithValue("Street_NAME", Location_OF_Land.Street_NAME);
            cmd.Parameters.AddWithValue("Piece_Number", Location_OF_Land.Piece_Number);
            cmd.Parameters.AddWithValue("ID", Location_OF_Land.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Location_OF_Land_DATA Location_OF_Land)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Location_OF_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Location_OF_Land.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }









    }
}