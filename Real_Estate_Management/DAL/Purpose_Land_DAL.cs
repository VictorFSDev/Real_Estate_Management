using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Purpose_Land_DAL
    {

        public List<Purpose_Land_DATA> select_All()
        {
            List<Purpose_Land_DATA> Purpose_Land_list = new List<Purpose_Land_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Purpose_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Purpose_Land_DATA Purpose_Land = new Purpose_Land_DATA();

                Purpose_Land.Name = rdr["Name"].ToString();
                Purpose_Land.ID =(int) rdr["ID"];
                Purpose_Land_list.Add(Purpose_Land);
            }
            con.Close();


            return Purpose_Land_list;

        }



        public Purpose_Land_DATA select_Item(int ID)
        {
            Purpose_Land_DATA Purpose_Land = new Purpose_Land_DATA();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_Item_Purpose_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                Purpose_Land.Name = rdr["Name"].ToString();




            }
            con.Close();

            return Purpose_Land;

        }
        public void insert(Purpose_Land_DATA Purpose_Land)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Purpose_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Name", Purpose_Land.Name);


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Purpose_Land_DATA Purpose_Land)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Purpose_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Purpose_Land.ID);
            cmd.Parameters.AddWithValue("Name", Purpose_Land.Name);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Purpose_Land_DATA Purpose_Land)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Purpose_Land", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Purpose_Land.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }

    }
}