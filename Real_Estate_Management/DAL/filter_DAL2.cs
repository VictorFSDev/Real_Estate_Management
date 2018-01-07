using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class filter_DAL2
    {

        public List<Search_Filter_DATA> Filter(
 int Building_Max_Area, int Building_Min_Area, int Room_Max_Number, int Room_Min_Number,
 int Total_Max_Cost, int Total_Min_Cost, string location, int Purpose)
        {
            List<Search_Filter_DATA> Filter_DATA_list = new List<Search_Filter_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Search2", con);
            cmd.CommandType = CommandType.StoredProcedure;
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

                Filter_DATA_list.Add(Search_Filter);

            }
            con.Close();

            Filter_DATA_list = Filter_DATA_list.Where
                (x => ((((x.All_Cost < Total_Max_Cost) & (x.All_Cost > Total_Min_Cost))
                || ((x.All_Cost < Total_Max_Cost) & (Total_Min_Cost == 0))
                || ((x.All_Cost > Total_Min_Cost) & (Total_Max_Cost == 0)))

                &&
               (((x.Area < Building_Max_Area) & (x.Area > Building_Min_Area))
               || ((x.Area < Building_Max_Area) & (Building_Min_Area == 0))
               || ((x.Area > Building_Min_Area) & (Building_Max_Area == 0)))
               &&
               (((x.Room_number < Room_Max_Number) | (x.Room_number > Room_Min_Number))
               || ((x.Area < Room_Max_Number) & (Room_Min_Number == 0))
               || ((x.Area > Building_Min_Area) & (Room_Max_Number == 0)))
                && 
                (location==" "
                ||x.City.Contains(location)
                ||x.Country.Contains(location)
                ||x.Governorate.Contains(location)
                )
                
               
                
                
                )).ToList();

         




                return Filter_DATA_list;

            }












        }
    }
