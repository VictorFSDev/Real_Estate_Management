using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Purpose_Apartment_DAL
    {

        public List<Purpose_Apartment_DATA> select_All()
        {
            List<Purpose_Apartment_DATA> Purpose_Apartment_List = new List<Purpose_Apartment_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Purpose_Apartment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Purpose_Apartment_DATA Purpose_Apartment = new Purpose_Apartment_DATA();

                Purpose_Apartment.ID = (int)rdr["ID"];
                Purpose_Apartment.Name = rdr["Name"].ToString();
                Purpose_Apartment_List.Add(Purpose_Apartment);
            }
            con.Close();


            return Purpose_Apartment_List;

        }



        public Purpose_Apartment_DATA select_Item(int ID)
        {
            Purpose_Apartment_DATA Purpose_Apartment = new Purpose_Apartment_DATA();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_Item_Purpose_Apartment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                    Purpose_Apartment.Name = rdr["Name"].ToString();




            }
            con.Close();

            return Purpose_Apartment;

        }
        public void insert(Purpose_Apartment_DATA Purpose_Apartment)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Purpose_Apartment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Name", Purpose_Apartment.Name);
            
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Purpose_Apartment_DATA Purpose_Apartment)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Purpose_Apartment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Purpose_Apartment.ID);
            cmd.Parameters.AddWithValue("Name", Purpose_Apartment.Name);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Purpose_Apartment_DATA Purpose_Apartment)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Purpose_Apartment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Purpose_Apartment.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }

    }
}