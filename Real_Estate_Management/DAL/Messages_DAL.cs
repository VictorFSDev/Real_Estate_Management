using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Messages_DAL
    {





        public List<Messages_DATA> select_All()
        {
            List<Messages_DATA> Messages_DATA_list = new List<Messages_DATA>();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Messages", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Messages_DATA Messages = new Messages_DATA();

                Messages.FK_Users_Message_Recipient = (int)rdr["FK_Users_Message_Recipient"];
                Messages.FK_Users_Message_sender = (int)rdr["FK_Users_Message_sender"];
                Messages.ID = (int)rdr["ID"];
                Messages.Message = rdr["Messages"].ToString();
                Messages.The_Time = Convert.ToDateTime( rdr["The_Time"]);
                Messages.First_Name = rdr["First_Name"].ToString();
                Messages.Last_Name = rdr["Last_Name"].ToString();


                Messages_DATA_list.Add(Messages);

            }
            con.Close();


            return Messages_DATA_list;

        }



        public Messages_DATA select_Item(int ID)
        {
            Messages_DATA Messages = new Messages_DATA();
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_Item_Messages", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            SqlDataReader rdr;

            con.Open();
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {

                Messages.FK_Users_Message_Recipient = (int)rdr["FK_Users_Message_Recipient"];
                Messages.FK_Users_Message_sender = (int)rdr["FK_Users_Message_sender"];
                Messages.ID = (int)rdr["ID"];
                Messages.Message = rdr["Message"].ToString();
                Messages.The_Time = Convert.ToDateTime(rdr["The_Time"]);


            }
            con.Close();

            return Messages;

        }
        public void insert(Messages_DATA Messsages)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Messages", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("FK_Users_Message_Recipient", Messsages.FK_Users_Message_Recipient);

            cmd.Parameters.AddWithValue("FK_Users_Message_sender", Messsages.FK_Users_Message_sender);


            cmd.Parameters.AddWithValue("Messages", Messsages.Message);

            cmd.Parameters.AddWithValue("The_Time", Messsages.The_Time);


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void update(Messages_DATA Messsages)
        {
            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Messages", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("FK_Users_Message_Recipient", Messsages.FK_Users_Message_Recipient);

            cmd.Parameters.AddWithValue("FK_Users_Message_sender", Messsages.FK_Users_Message_sender);

            cmd.Parameters.AddWithValue("ID", Messsages.ID);

            cmd.Parameters.AddWithValue("Messages", Messsages.Message);

            cmd.Parameters.AddWithValue("The_Time", Messsages.The_Time);




            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete(Messages_DATA Messages)
        {

            SqlConnection con = new SqlConnection(" Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Messages", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", Messages.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }





























    }
}