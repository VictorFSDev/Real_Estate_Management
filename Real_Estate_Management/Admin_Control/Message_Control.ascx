<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Message_Control.ascx.cs" Inherits="Real_Estate_Management.Admin_Control.Message_Control" %>
<p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="Messages_ObjectDataSource" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">
    
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
             <asp:TextBox ID="FK_Users_Message_RecipientTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Users_Message_Recipient") %>' />
            <br />
            <asp:TextBox ID="FK_Users_Message_senderTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Users_Message_sender") %>' />
            <br />
            The_Time:
            <asp:TextBox ID="The_TimeTextBox" runat="server" Text='<%# Bind("The_Time") %>' />
            <asp:RequiredFieldValidator ControlToValidate="The_TimeTextBox" ValidationGroup="Message_Update" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <br />
            Message:
            <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
            <asp:RequiredFieldValidator ControlToValidate="MessageTextBox" ValidationGroup="Message_Update" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

           <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Message_Recipient_ObjectDataSource" DataTextField="First_Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Message_Recipient_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Users_DAL"></asp:ObjectDataSource>
<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Message_sender_ObjectDataSource" DataTextField="First_Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Message_sender_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Users_DAL"></asp:ObjectDataSource> 
            <br />
            <asp:Button ID="UpdateButton" ValidationGroup="Message_Update" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <InsertItemTemplate>
        <li style="">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            <asp:TextBox ID="FK_Users_Message_RecipientTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Users_Message_Recipient") %>' />
            <br />
            <asp:TextBox ID="FK_Users_Message_senderTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Users_Message_sender") %>' />
            <br />The_Time:
             <asp:TextBox ID="The_TimeTextBox" runat="server" Text='<%# Bind("The_Time") %>' />
            <asp:RequiredFieldValidator ControlToValidate="The_TimeTextBox" ValidationGroup="Message_Insert" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />Message:
            <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
            <asp:RequiredFieldValidator ControlToValidate="MessageTextBox" ValidationGroup="Message_Insert" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Message_Recipient_ObjectDataSource" DataTextField="First_Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Message_Recipient_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Users_DAL"></asp:ObjectDataSource>
<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Message_sender_ObjectDataSource" DataTextField="First_Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Message_sender_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Users_DAL"></asp:ObjectDataSource>
             <br />
            <asp:Button ID="InsertButton" ValidationGroup="Message_Insert" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">
            <asp:Label ID="IDLabel" Visible="false" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            <asp:Label ID="FK_Users_Message_RecipientLabel" Visible="false" runat="server" Text='<%# Eval("FK_Users_Message_Recipient") %>' />
            <br />
            <asp:Label ID="FK_Users_Message_senderLabel" Visible="false" runat="server" Text='<%# Eval("FK_Users_Message_sender") %>' />
            <br />
            The_Time:
            <asp:Label ID="The_TimeLabel" runat="server" Text='<%# Eval("The_Time") %>' />
            <br />
            Message:
            <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    
</asp:ListView>
<asp:ObjectDataSource ID="Messages_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Messages_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Messages_DAL" UpdateMethod="update"></asp:ObjectDataSource>




