using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Who_See_Announce_DAL
    {
        public List<Who_See_Announce_DATA> select_All()
        {

            List<Who_See_Announce_DATA> Who_See_Announce_DATA_list = new List<Who_See_Announce_DATA>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_who_See_Announce", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Who_See_Announce_DATA Who_See_Announce = new Who_See_Announce_DATA();

                Who_See_Announce.Owner_ID = (int)rdr["Owner_ID"];
                Who_See_Announce.Visitor_ID = (int)rdr["Visitor_ID"];

                Who_See_Announce.ID = (int)rdr["ID"];
                Who_See_Announce.ID_Apartment = (int)rdr["ID_Apartment"];



                Who_See_Announce_DATA_list.Add(Who_See_Announce);

            }
            con.Close();


            return Who_See_Announce_DATA_list;

        }




        public void insert(Who_See_Announce_DATA Who_See_Announce)
        {
            try
            {
                SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Insert_who_See_Announce", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Owner_ID", Who_See_Announce.Owner_ID);
                cmd.Parameters.AddWithValue("Visitor_ID", Who_See_Announce.Visitor_ID);
                cmd.Parameters.AddWithValue("ID_Apartment", Who_See_Announce.ID_Apartment);
                cmd.Parameters.AddWithValue("Owner_visitor_apartment_ID", Who_See_Announce.Owner_visitor_apartment_ID);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch { }
        }

    }
}