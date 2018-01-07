using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class filter_DAL
    {

        public List<Search_Filter_DATA> Filter(
 int Building_Max_Area, int Building_Min_Area, int Room_Max_Number, int Room_Min_Number, int Total_Max_Cost, int Total_Min_Cost, string location, int Purpose)
        {
            List<Search_Filter_DATA> Filter_DATA_list = new List<Search_Filter_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Search", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Building_Max_Area", Building_Max_Area);//Building_Max_Area);

            cmd.Parameters.AddWithValue("Building_Min_Area",Building_Min_Area);

            cmd.Parameters.AddWithValue("Room_Max_Number",Room_Max_Number);

            cmd.Parameters.AddWithValue("Room_Min_Number", Room_Min_Number);

            cmd.Parameters.AddWithValue("Total_Max_Cost", Total_Max_Cost);

            cmd.Parameters.AddWithValue("Total_Min_Cost", Total_Min_Cost);
            cmd.Parameters.AddWithValue("Purpose", Purpose);

            cmd.Parameters.AddWithValue("location", location);

            SqlDataReader rdr;



            con.Open();
            cmd.ExecuteNonQuery();
           
           
            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Search_Filter_DATA Search_Filter = new Search_Filter_DATA();

                Search_Filter.Area = (Double)rdr["Area"];
                Search_Filter.Image_1 = rdr["Image_1"].ToString();
                Search_Filter.All_Cost = (Double)rdr["All_Cost"];
                Search_Filter.Country = rdr["Country"].ToString();
                Search_Filter.Governorate = rdr["Governorate"].ToString();
                Search_Filter.City = rdr["City"].ToString();
                Search_Filter.Room_number = (int)rdr["Room_number"];
                Search_Filter.ID = (int)rdr["ID"];


                Filter_DATA_list.Add(Search_Filter);

            }
            con.Close();


            return Filter_DATA_list;

        }





        






    }
}