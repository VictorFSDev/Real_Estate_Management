using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Real_Estate_Management.DATA;
using System.Data.SqlClient;
using System.Data;

namespace Real_Estate_Management.DAL
{
    public class Apartments_DAL
    {

  virtual      public List<Apartments_DATA> select_All()
        {
            
            List<Apartments_DATA> Apartments_DATA_list = new List<Apartments_DATA>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Apartments", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Apartments_DATA Apartments_DATA = new Apartments_DATA();

                Apartments_DATA.Apartments_Type = rdr["Apartments_Type"].ToString(); ;
                Apartments_DATA.Area =Convert.ToDouble( rdr["Area"]) ;
                Apartments_DATA.Avalable =Convert.ToByte( rdr["Avalable"]) ;
                Apartments_DATA.Descriptions = rdr["Descriptions"].ToString();
                Apartments_DATA.Design_Image = rdr["Design_Image"].ToString(); 
                Apartments_DATA.FK_Building = (int)rdr["FK_Building"]; 
                Apartments_DATA.FK_Users = (int)rdr["FK_Users"];
                Apartments_DATA.ID = (int)rdr["ID"];
                Apartments_DATA.Image_1 = rdr["Image_1"].ToString(); 
                Apartments_DATA.Image_2 = rdr["Image_2"].ToString();
                Apartments_DATA.Image_3 = rdr["Image_3"].ToString();
                Apartments_DATA.FK_Purpoes_Apartment = (int)rdr["FK_Purpoe_Apartment"];

                Apartments_DATA_list.Add(Apartments_DATA);

            }
            con.Close();


            return Apartments_DATA_list;

        }



        public Apartments_DATA select_Item(int ID)
        {
            Apartments_DATA Apartment = new Apartments_DATA();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_Item_Apartments", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                Apartment.ID = (int)rdr["ID"];
                Apartment.Apartments_Type = rdr["Apartments_Type"].ToString();
                Apartment.Area =(Double) rdr["Area"];

                Apartment.Avalable =Convert.ToByte( rdr["Avalable"]);

                Apartment.Descriptions = rdr["Descriptions"].ToString();

                Apartment.Design_Image = rdr["Design_Image"].ToString();

                Apartment.FK_Building = (int)rdr["FK_Building"];

                Apartment.FK_Users = (int)rdr["FK_Users"];
                Apartment.Image_1 = rdr["Image_1"].ToString();

                Apartment.Image_2 = rdr["Image_2"].ToString();

                Apartment.Image_3 = rdr["Image_3"].ToString();
                 Apartment.FK_Purpoes_Apartment = (int)rdr["FK_Purpoe_Apartment"];
                Apartment.Price_Per_meter = (Double)rdr["Price_Per_meter"];


            }
            con.Close();

            return Apartment;

        }
        public void insert(Apartments_DATA Apartment)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Apartments", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Apartments_Type", Apartment.Apartments_Type);

            cmd.Parameters.AddWithValue("Area", Apartment.Area);

            cmd.Parameters.AddWithValue("Avalable", Apartment.Avalable);

            cmd.Parameters.AddWithValue("Descriptions", Apartment.Descriptions);

            cmd.Parameters.AddWithValue("Design_Image", Apartment.Design_Image);

            cmd.Parameters.AddWithValue("FK_Building", Apartment.FK_Building);

            cmd.Parameters.AddWithValue("FK_Users", Apartment.FK_Users);

            cmd.Parameters.AddWithValue("Image_1", Apartment.Image_1);

            cmd.Parameters.AddWithValue("Image_2", Apartment.Image_2);
            cmd.Parameters.AddWithValue("Image_3", Apartment.Image_3);
            cmd.Parameters.AddWithValue("FK_Purpoe_Apartment", Apartment.FK_Purpoes_Apartment);
            cmd.Parameters.AddWithValue("Price_Per_meter", Apartment.Price_Per_meter);


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Apartments_DATA Apartment)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Apartments", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Apartment.ID);
            cmd.Parameters.AddWithValue("Apartments_Type", Apartment.Apartments_Type);

            cmd.Parameters.AddWithValue("Area", Apartment.Area);

            cmd.Parameters.AddWithValue("Avalable", Apartment.Avalable);

            cmd.Parameters.AddWithValue("Descriptions", Apartment.Descriptions);

            cmd.Parameters.AddWithValue("Design_Image", Apartment.Design_Image);

            cmd.Parameters.AddWithValue("FK_Building", Apartment.FK_Building);

            cmd.Parameters.AddWithValue("FK_Users", Apartment.FK_Users);

            cmd.Parameters.AddWithValue("Image_1", Apartment.Image_1);

            cmd.Parameters.AddWithValue("Image_2", Apartment.Image_2);
            cmd.Parameters.AddWithValue("Image_3", Apartment.Image_3);
            cmd.Parameters.AddWithValue("FK_Purpoe_Apartment", Apartment.FK_Purpoes_Apartment);
            cmd.Parameters.AddWithValue("Price_Per_meter", Apartment.Price_Per_meter);

            

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Apartments_DATA Apartment)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Apartments", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Apartment.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }


    }
}
