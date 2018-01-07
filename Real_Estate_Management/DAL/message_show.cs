using Real_Estate_Management.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Real_Estate_Management.DAL
{
    public class message_show
    {
        public List<Messages_DATA> get_message(int id, int id_owner)
        {
            Messages_DAL get_message = new Messages_DAL();
            List<Messages_DATA> messages = get_message.select_All();
            List<Messages_DATA> returned_messages = new List<Messages_DATA>();
            foreach (var item in messages)
            {
                if ((id_owner == item.FK_Users_Message_sender && id == item.FK_Users_Message_Recipient)
                    ||
                    (id == item.FK_Users_Message_sender && id_owner == item.FK_Users_Message_Recipient)
                    )
                {
                    if(id_owner== item.FK_Users_Message_sender)
                    {
                        item.css_style1 = "row msg_container base_sent";


                    }
                    else
                    {
                        item.css_style1 = "row msg_container base_receive";

                    }
                    Users_DAL user = new Users_DAL();
                    item.img = user.select_Item(item.FK_Users_Message_sender).image;
                    returned_messages.Add(item);

                }

            }


            return returned_messages;
        }

        public void insert(Messages_DATA message)
        {
            
               Messages_DAL insert_messagge = new Messages_DAL();
            insert_messagge.insert(message);




        }
    }
}