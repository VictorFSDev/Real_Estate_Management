using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Location_OF_Building_DAL
    {

        public List<Location_OF_Building_DATA> select_All()
        {
            List<Location_OF_Building_DATA> Location_OF_Building_list = new List<Location_OF_Building_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Location_OF_Building", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Location_OF_Building_DATA Location_OF_Building = new Location_OF_Building_DATA();

                Location_OF_Building.City = rdr["City"].ToString(); 
                Location_OF_Building.Country = rdr["Country"].ToString();
                Location_OF_Building.Governorate = rdr["Governorate"].ToString();
                Location_OF_Building.ID =(int) rdr["ID"];
                Location_OF_Building.Numer_of_Building = (long)(rdr["Numer_of_Building"]) ;
                Location_OF_Building.Street_NAME = rdr["Street_NAME"].ToString(); 
                Location_OF_Building_list.Add(Location_OF_Building);

            }
            con.Close();


            return Location_OF_Building_list;

        }



        public Location_OF_Building_DATA select_Item(int ID)
        {
            Location_OF_Building_DATA Location_OF_Building = new Location_OF_Building_DATA();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_Item_Location_OF_Building", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                Location_OF_Building.City = rdr["City"].ToString();
                Location_OF_Building.Country = rdr["Country"].ToString();
                Location_OF_Building.Governorate = rdr["Governorate"].ToString();
                Location_OF_Building.Numer_of_Building = (long)(rdr["Numer_of_Building"]);
                Location_OF_Building.Street_NAME = rdr["Street_NAME"].ToString();


            }
            con.Close();

            return Location_OF_Building;

        }
        public void insert(Location_OF_Building_DATA Location_OF_Building)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Location_OF_Building", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("City", Location_OF_Building.City);

            cmd.Parameters.AddWithValue("Country", Location_OF_Building.Country);

            cmd.Parameters.AddWithValue("Governorate", Location_OF_Building.Governorate);

            cmd.Parameters.AddWithValue("Numer_of_Building", Location_OF_Building.Numer_of_Building);

            cmd.Parameters.AddWithValue("Street_NAME", Location_OF_Building.Street_NAME);

            


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Location_OF_Building_DATA Location_OF_Building)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Location_OF_Building", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Location_OF_Building.ID);
            cmd.Parameters.AddWithValue("City", Location_OF_Building.City);

            cmd.Parameters.AddWithValue("Country", Location_OF_Building.Country);

            cmd.Parameters.AddWithValue("Governorate", Location_OF_Building.Governorate);

            cmd.Parameters.AddWithValue("Numer_of_Building", Location_OF_Building.Numer_of_Building);

            cmd.Parameters.AddWithValue("Street_NAME", Location_OF_Building.Street_NAME);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Location_OF_Building_DATA Location_OF_Building)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Location_OF_Building", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Location_OF_Building.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }







    }
}