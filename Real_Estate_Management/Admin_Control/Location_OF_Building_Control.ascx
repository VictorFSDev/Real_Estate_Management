<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Location_OF_Building_Control.ascx.cs" Inherits="Real_Estate_Management.Admin_Control.Location_OF_Building_Control" %>
<p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="Location_OF_Building_ObjectDataSource" InsertItemPosition="LastItem">

    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
             <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ValidationGroup="Location__Update" ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            Governorate:
            <asp:TextBox ID="GovernorateTextBox" runat="server" Text='<%# Bind("Governorate") %>' />
            <asp:RequiredFieldValidator ControlToValidate="GovernorateTextBox" ValidationGroup="Location__Update" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            City:
             <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
             <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ValidationGroup="Location__Update" ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>
             <br />
             Street_NAME:
            <asp:TextBox ID="Street_NAMETextBox" runat="server" Text='<%# Bind("Street_NAME") %>' />
         <asp:RequiredFieldValidator ControlToValidate="Street_NAMETextBox" ValidationGroup="Location__Update" ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            
             <br />
            Numer_of_Building:
            <asp:TextBox ID="Numer_of_BuildingTextBox" runat="server" Text='<%# Bind("Numer_of_Building") %>' />
            <br />
               <asp:RequiredFieldValidator ControlToValidate="Numer_of_BuildingTextBox" ValidationGroup="Location__Update" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <asp:Button ID="UpdateButton" ValidationGroup="Location__Update" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <InsertItemTemplate>
        <li style="">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />Country:
            <asp:RequiredFieldValidator ControlToValidate="IDTextBox" ValidationGroup="Location__Insert" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />Governorate:
           
            <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ValidationGroup="Location__Insert" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <asp:TextBox ID="GovernorateTextBox" runat="server" Text='<%# Bind("Governorate") %>' />
             <asp:RequiredFieldValidator ControlToValidate="GovernorateTextBox" ValidationGroup="Location__Insert" ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <br />City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />Street_NAME:
            <asp:TextBox ID="Street_NAMETextBox" runat="server" Text='<%# Bind("Street_NAME") %>' />
             <asp:RequiredFieldValidator ControlToValidate="Street_NAMETextBox" ValidationGroup="Location__Insert" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            
             <br />Numer_of_Building:
           
             <asp:TextBox ID="Numer_of_BuildingTextBox" runat="server" Text='<%# Bind("Numer_of_Building") %>' />
             <asp:RequiredFieldValidator ControlToValidate="Numer_of_BuildingTextBox" ValidationGroup="Location__Insert" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            <asp:Button ID="InsertButton" ValidationGroup="Location__Insert" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">
            <asp:Label ID="IDLabel" Visible="false" runat="server" Text='<%# Eval("ID") %>' />
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
            Street_NAME:
            <asp:Label ID="Street_NAMELabel" runat="server" Text='<%# Eval("Street_NAME") %>' />
            <br />
            Numer_of_Building:
            <asp:Label ID="Numer_of_BuildingLabel" runat="server" Text='<%# Eval("Numer_of_Building") %>' />
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
<asp:ObjectDataSource ID="Location_OF_Building_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Location_OF_Building_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Location_OF_Building_DAL" UpdateMethod="update"></asp:ObjectDataSource>

