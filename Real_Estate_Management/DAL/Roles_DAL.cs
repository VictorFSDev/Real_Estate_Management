using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Roles_DAL
    {
        public List<Roles_DATA> select_All()
        {
            List<Roles_DATA> Roles_List = new List<Roles_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Roles", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Roles_DATA Roles = new Roles_DATA();
                Roles.ID = (int)rdr["ID"];
                Roles.Role_Name = rdr["Role_Name"].ToString();
                Roles_List.Add(Roles);
            }
            con.Close();


            return Roles_List;

        }



        public Roles_DATA select_Item(int ID)
        {
            Roles_DATA Roles = new Roles_DATA();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_Item_Roles", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                Roles.ID = (int)rdr["ID"];
                Roles.Role_Name = rdr["Name"].ToString();




            }
            con.Close();

            return Roles;

        }
        public void insert(Roles_DATA Roles)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Roles", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Role_Name", Roles.Role_Name);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Roles_DATA Roles)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Roles", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Roles.ID);

            cmd.Parameters.AddWithValue("Role_Name", Roles.Role_Name);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Roles_DATA Roles)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Roles", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Roles.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }
    }
}