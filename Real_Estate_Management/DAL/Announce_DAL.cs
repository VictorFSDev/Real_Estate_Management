using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class Announce_DAL
    {
         public List<Announce_DATA> select_All(int user_ID)
        {

            List<Announce_DATA> Announce_DATA_list = new List<Announce_DATA>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Real_Estate_Management;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select_All_Apartments", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rdr;

            con.Open();

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Announce_DATA announe = new Announce_DATA();

                announe.Apartments_Type = rdr["Apartments_Type"].ToString(); ;
                announe.Area = Convert.ToDouble(rdr["Area"]);
                announe.Avalable = Convert.ToByte(rdr["Avalable"]);
                announe.Descriptions = rdr["Descriptions"].ToString();
                announe.Design_Image = rdr["Design_Image"].ToString();
                announe.FK_Building = (int)rdr["FK_Building"];
                announe.FK_Users = (int)rdr["FK_Users"];
                announe.ID = (int)rdr["ID"];
                announe.Image_1 = rdr["Image_1"].ToString();
                announe.Image_2 = rdr["Image_2"].ToString();
                announe.Image_3 = rdr["Image_3"].ToString();
                announe.FK_Purpoes_Apartment = (int)rdr["FK_Purpoe_Apartment"];
                Announce_DATA_list.Add(announe);

            }
            con.Close();

           Announce_DATA_list = Announce_DATA_list.Where(x => x.FK_Users == user_ID).ToList();
            Who_See_Announce_DAL d = new Who_See_Announce_DAL();
         List<Who_See_Announce_DATA> ob = new List<Who_See_Announce_DATA>();
            ob = d.select_All();
            foreach(var item in Announce_DATA_list)
            {
                item.views_numbers = ob.Where(x => x.Owner_ID == item.FK_Users&&x.ID_Apartment==item.ID).Count();



            }


                return Announce_DATA_list;

        }

    }
}