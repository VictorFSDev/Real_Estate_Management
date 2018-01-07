using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Land_DAL
    {
        public List<Room_Type> select_All()
        {
            List<Room_Type> Land_list = new List<Room_Type>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Room_Type Land= new Room_Type();

                Land.Area =Convert.ToDouble( rdr["Area"]);
                Land.Avalable = Convert.ToByte(rdr["Avalable"]);
                Land.Descriptions = rdr["Descriptions"].ToString();
                Land.Design_Image = rdr["Design_Image"].ToString();
                Land.FK_Users = (int)rdr["FK_Users"];
                Land.ID = (int)rdr["ID"]; ;
                Land.Images =rdr["Images"].ToString();
                Land.FK_Purpoes_Land = (int)rdr["FK_Purpose_Land"];

                Land_list.Add(Land);

            }
            con.Close();


            return Land_list;

        }



        public Room_Type select_Item(int ID)
        {
            Room_Type Land = new Room_Type();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_Item_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                Land.ID = (int)rdr["ID"];
                Land.Area = (int)rdr["Apartment_Number"];
                Land.Avalable = Convert.ToByte(rdr["Area"]);
                Land.Descriptions = rdr["Descriptions"].ToString();
                Land.Design_Image = rdr["Desgin_Image"].ToString();
                Land.FK_Users = (int)rdr["FK_Uers"];
                Land.Images = rdr["Images"].ToString();
                Land.FK_Purpoes_Land = (int)rdr["FK_Purpoes_Land"];




            }
            con.Close();

            return Land;

        }
        public void insert(Room_Type Land)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Area", Land.Area);
            cmd.Parameters.AddWithValue("Avalable", Land.Avalable);
            cmd.Parameters.AddWithValue("Descriptions", Land.Descriptions);
            cmd.Parameters.AddWithValue("Design_Image", Land.Design_Image);
            cmd.Parameters.AddWithValue("FK_Uers", Land.FK_Users);
            cmd.Parameters.AddWithValue("Images", Land.Images);
            cmd.Parameters.AddWithValue("FK_Purpoes_Land", Land.FK_Purpoes_Land);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Room_Type Land)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Land.ID);
            cmd.Parameters.AddWithValue("Area", Land.Area);
            cmd.Parameters.AddWithValue("Avalable", Land.Avalable);
            cmd.Parameters.AddWithValue("Descriptions", Land.Descriptions);
            cmd.Parameters.AddWithValue("Design_Image", Land.Design_Image);
            cmd.Parameters.AddWithValue("FK_Users", Land.FK_Users);
            cmd.Parameters.AddWithValue("Images", Land.Images);
            cmd.Parameters.AddWithValue("@FK_Purpose", Land.FK_Purpoes_Land);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Room_Type Land)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Land.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }







    }
}