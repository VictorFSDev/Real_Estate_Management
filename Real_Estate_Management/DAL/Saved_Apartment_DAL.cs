using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Saved_Apartment_DAL
    {
        public List<Saved_Apartment_DATA> select_All()
        {

            List<Saved_Apartment_DATA> Saved_Apartments_DATA_list = new List<Saved_Apartment_DATA>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Saved_Apartment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Saved_Apartment_DATA Saved_Apartments_DATA = new Saved_Apartment_DATA();


                Saved_Apartments_DATA.ID = (int)rdr["ID"];
                Saved_Apartments_DATA.ID_User = (int)rdr["ID_User"];
                Saved_Apartments_DATA.Apartment_ID = (int)rdr["Apartment_ID"];


                Saved_Apartments_DATA_list.Add(Saved_Apartments_DATA);

            }
            con.Close();
            return Saved_Apartments_DATA_list;
        }


         public List<Apartments_DATA> select_All_saved_Apartments( int ID)
        {

            List<Saved_Apartment_DATA> Saved_Apartments_DATA_list = new List<Saved_Apartment_DATA>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Saved_Apartment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Saved_Apartment_DATA Saved_Apartments_DATA = new Saved_Apartment_DATA();


                Saved_Apartments_DATA.ID = (int)rdr["ID"];
                Saved_Apartments_DATA.ID_User = (int)rdr["ID_User"];
                Saved_Apartments_DATA.Apartment_ID = (int)rdr["Apartment_ID"];


                Saved_Apartments_DATA_list.Add(Saved_Apartments_DATA);

            }
            con.Close();
            Apartments_DAL select_apartment = new Apartments_DAL();
            Apartments_DATA apartment = new Apartments_DATA();
            List<Apartments_DATA> list = select_apartment.select_All();
            List<Apartments_DATA> returned_list = new List<Apartments_DATA>();
            if (Saved_Apartments_DATA_list.Count!=0)
            {


                foreach (var item in Saved_Apartments_DATA_list)
                {
                    if (item.ID_User==ID)
                    {

                       var m= list.Where(x =>item.Apartment_ID==x.ID&&x.FK_Users!=ID).ToList();
                        foreach(var it in m)
                        { returned_list.Add(it); }

                    }

                   

                }
            }
            return returned_list;



        }
        public void insert(Saved_Apartment_DATA Saved_Apartment)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Saved_Apartment", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("ID_User", Saved_Apartment.ID_User);

            cmd.Parameters.AddWithValue("Apartment_ID", Saved_Apartment.Apartment_ID);




            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void delete(Saved_Apartment_DATA Saved_Apartment)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Saved_Apartment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Saved_Apartment.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }



    }
}