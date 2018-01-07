using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Building_DAL
    {
        public List<Building_DATA> select_All()
        {
            List<Building_DATA> Building_DATA_list = new List<Building_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Building", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Building_DATA Building= new Building_DATA();

                Building.Apartment_Number =(int) rdr["Apartment_Number"] ;
                Building.Area = Convert.ToDouble(rdr["Area"]);
                Building.Descriptions = rdr["Descriptions"].ToString();
                Building.Desgin_Image = rdr["Desgin_Image"].ToString();
                Building.FK_Location_OF_Building = (int)rdr["FK_Location_OF_Building"] ;
                Building.Floor_Number = (int)rdr["Floor_Number"]; ;
                Building.ID = (int)rdr["ID"];
                Building.Image_1 = rdr["Image_1"].ToString();
                Building.Year_Of_Building =Convert.ToDateTime( rdr["Year_Of_Building"]) ;
                Building_DATA_list.Add(Building);

            }
            con.Close();


            return Building_DATA_list;

        }



        public Building_DATA select_Item(int ID)
        {
            Building_DATA Building = new Building_DATA();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_Item_Building", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                Building.ID = (int)rdr["ID"];
                Building.Apartment_Number =(int) rdr["Apartment_Number"] ;
                Building.Area = Convert.ToDouble(rdr["Area"]);
                Building.Descriptions = rdr["Descriptions"].ToString();
                Building.Desgin_Image = rdr["Desgin_Image"].ToString();
                Building.FK_Location_OF_Building = (int)rdr["FK_Location_OF_Building"] ;
                Building.Floor_Number = (int)rdr["Floor_Number"]; ;
                Building.ID = (int)rdr["ID"];
                Building.Image_1 = rdr["Image_1"].ToString();
                Building.Year_Of_Building =Convert.ToDateTime( rdr["Year_Of_Building"]) ;
               


            }
            con.Close();

            return Building;

        }
        public void insert(Building_DATA Building)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Building", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Apartment_Number", Building.Apartment_Number);
            cmd.Parameters.AddWithValue("Area", Building.Area);
            cmd.Parameters.AddWithValue("Descriptions", Building.Descriptions);
            cmd.Parameters.AddWithValue("Design_Image", Building.Desgin_Image);
            cmd.Parameters.AddWithValue("FK_Location_OF_Building", Building.FK_Location_OF_Building);
            cmd.Parameters.AddWithValue("Floor_Number", Building.Floor_Number);
            cmd.Parameters.AddWithValue("Image_1", Building.Image_1);
            cmd.Parameters.AddWithValue("Year_Of_Building", Building.Year_Of_Building);


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Building_DATA Building)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Building", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Building.ID);
            cmd.Parameters.AddWithValue("Apartment_Number", Building.Apartment_Number);
            cmd.Parameters.AddWithValue("Area", Building.Area);
            cmd.Parameters.AddWithValue("Descriptions", Building.Descriptions);
            cmd.Parameters.AddWithValue("Design_Image", Building.Desgin_Image);
            cmd.Parameters.AddWithValue("FK_Location_OF_Building", Building.FK_Location_OF_Building);
            cmd.Parameters.AddWithValue("Floor_Number", Building.Floor_Number);
            cmd.Parameters.AddWithValue("Image_1", Building.Image_1);
            cmd.Parameters.AddWithValue("Year_Of_Building", Building.Year_Of_Building);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Building_DATA Building)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Building", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Building.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }


    }
}





















