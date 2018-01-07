using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Search_Land_DAL
    {



        public List<Search_Land_DATA> Filter(
 int Land_Max_Area, int Land_Min_Area, int Total_Max_Cost_Land, int Total_Min_Cost_Land, string location,int Purpose)
        {
            List<Search_Land_DATA> Search_Land_List = new List<Search_Land_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Search_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Land_Max_Area", Land_Max_Area);//Building_Max_Area);

            cmd.Parameters.AddWithValue("Land_Min_Area", Land_Min_Area);
            cmd.Parameters.AddWithValue("Total_Max_Cost", Total_Max_Cost_Land);
            cmd.Parameters.AddWithValue("Total_Min_Cost", Total_Min_Cost_Land);
            cmd.Parameters.AddWithValue("Purpose", Purpose);


            cmd.Parameters.AddWithValue("location", location);//location);

            SqlDataReader rdr;



            con.Open();
            cmd.ExecuteNonQuery();


            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Search_Land_DATA Search_Land = new Search_Land_DATA();

                Search_Land.Area = (Double)rdr["Area"];
                Search_Land.Images = rdr["Images"].ToString();
                Search_Land.All_Cost = (Double)rdr["All_Cost"];
                Search_Land.Country = rdr["Country"].ToString();
                Search_Land.Governorate = rdr["Governorate"].ToString();
                Search_Land.City = rdr["City"].ToString();
                //Search_Land.Location = rdr["@location"].ToString();

                Search_Land_List.Add(Search_Land);

            }
            con.Close();


            return Search_Land_List;

        }






    }
}