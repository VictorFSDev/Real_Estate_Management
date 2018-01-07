<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Users_Control.ascx.cs" Inherits="Real_Estate_Management.Admin_Control.Users_Control" %>


<p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>


<asp:ListView ID="ListView1" runat="server" DataSourceID="Room_ObjectDataSource" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">
   
    
   
    <EditItemTemplate>
        <li style="background-color: #FFCC66;color: #000080;">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            
        
            <br />
            First_Name:
            <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("First_Name") %>' />
            <asp:RequiredFieldValidator ValidationGroup="User_" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="First_NameTextBox"></asp:RequiredFieldValidator>

            <br />
            Last_Name:
            <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("Last_Name") %>' />
            
                        <asp:RequiredFieldValidator ValidationGroup="User_update" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Last_NameTextBox"></asp:RequiredFieldValidator>
<br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                       <asp:RequiredFieldValidator ValidationGroup="User_update" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>

             <br />
            Phone_Number:
            <asp:TextBox ID="Phone_NumberTextBox" runat="server" Text='<%# Bind("Phone_Number") %>' />
                       <asp:RequiredFieldValidator ValidationGroup="User_update" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Phone_NumberTextBox"></asp:RequiredFieldValidator>

             <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                                   <asp:RequiredFieldValidator ValidationGroup="User_update" ID="RequiredFieldValidator17" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="CountryTextBox"></asp:RequiredFieldValidator>

            <br />
            Governorate:
            <asp:TextBox ID="GovernorateTextBox" runat="server" Text='<%# Bind("Governorate") %>' />
                       <asp:RequiredFieldValidator ValidationGroup="User_update" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="GovernorateTextBox"></asp:RequiredFieldValidator>

              <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                      <asp:RequiredFieldValidator ValidationGroup="User_update" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="CityTextBox"></asp:RequiredFieldValidator>

              <br />
            Gender:
             <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                                   <asp:RequiredFieldValidator ValidationGroup="User_update" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="GenderTextBox"></asp:RequiredFieldValidator>

            <br />
            User_Password:
            <asp:TextBox ID="User_PasswordTextBox" runat="server" Text='<%# Bind("User_Password") %>' />
    <asp:RequiredFieldValidator ValidationGroup="User_update" ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="User_PasswordTextBox"></asp:RequiredFieldValidator>

             <br />
            
            <asp:TextBox ID="FK_RoleTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Role") %>' />
          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Role_ObjectDataSource" DataTextField="Role_Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Role_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Roles_DAL"></asp:ObjectDataSource>
            
              <br />
            <asp:Button ID="UpdateButton" runat="server" ValidationGroup="Building_Update" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <InsertItemTemplate>
        <li style="">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            First_Name:
            <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("First_Name") %>' />
                       <asp:RequiredFieldValidator ValidationGroup="User_update" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="First_NameTextBox"></asp:RequiredFieldValidator>

             <br />
            Last_Name:
            <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("Last_Name") %>' />
           
                        <asp:RequiredFieldValidator ValidationGroup="User_update" ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Last_NameTextBox"></asp:RequiredFieldValidator>

             <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                       <asp:RequiredFieldValidator ValidationGroup="User_update" ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>

            
             <br />
            Phone_Number:
            <asp:TextBox ID="Phone_NumberTextBox" runat="server" Text='<%# Bind("Phone_Number") %>' />
                       <asp:RequiredFieldValidator ValidationGroup="User_insert" ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Phone_NumberTextBox"></asp:RequiredFieldValidator>

            
             <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                        <asp:RequiredFieldValidator ValidationGroup="User_insert" ID="RequiredFieldValidator13" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="CountryTextBox"></asp:RequiredFieldValidator>

            <br />
            Governorate:
            
           <asp:TextBox ID="GovernorateTextBox" runat="server" Text='<%# Bind("Governorate") %>' />
           
                        <asp:RequiredFieldValidator ValidationGroup="User_insert" ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="GovernorateTextBox"></asp:RequiredFieldValidator>
 <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
           
                        <asp:RequiredFieldValidator ValidationGroup="User_insert" ID="RequiredFieldValidator14" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="CityTextBox"></asp:RequiredFieldValidator>

             <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
           
                        <asp:RequiredFieldValidator ValidationGroup="User_insert" ID="RequiredFieldValidator15" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="GenderTextBox"></asp:RequiredFieldValidator>

             <br />
            User_Password:
            <asp:TextBox ID="User_PasswordTextBox" runat="server" Text='<%# Bind("User_Password") %>' />
            
                        <asp:RequiredFieldValidator ValidationGroup="User_insert" ID="RequiredFieldValidator16" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="User_PasswordTextBox"></asp:RequiredFieldValidator>

            <br />
           
            <asp:TextBox ID="FK_RoleTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Role") %>' />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Role_ObjectDataSource" DataTextField="Role_Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Role_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Roles_DAL"></asp:ObjectDataSource>
            
            <br />
            <asp:Button ID="InsertButton" runat="server" ValidationGroup="User_insert"  CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemTemplate>
        <li style="background-color: #FFFBD6;color: #333333;">
            <asp:Label ID="IDLabel" Visible="false" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            First_Name:
            <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
            <br />
            Last_Name:
            <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Phone_Number:
            <asp:Label ID="Phone_NumberLabel" runat="server" Text='<%# Eval("Phone_Number") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
            <br />
            Governorate:
            <asp:Label ID="GovernorateLabel" runat="server" Text='<%# Eval("Governorate") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            <br />
            User_Password:
            <asp:Label ID="User_PasswordLabel" runat="server" Text='<%# Eval("User_Password") %>' />
            <br />
            <asp:Label ID="FK_RoleLabel" Visible="false" runat="server" Text='<%# Eval("FK_Role") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    
    
    
</asp:ListView>
<asp:ObjectDataSource ID="Room_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Users_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Users_DAL" UpdateMethod="update"></asp:ObjectDataSource>










