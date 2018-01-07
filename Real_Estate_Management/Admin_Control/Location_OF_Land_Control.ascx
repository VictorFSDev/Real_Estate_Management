
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Location_OF_Land_Control.ascx.cs" Inherits="Real_Estate_Management.Admin_Control.Location_OF_Land_Control" %>
<p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<asp:ListView ID="ListView1" runat="server" DataSourceID="Location_OF_Land_ObjectDataSource" InsertItemPosition="LastItem" DataKeyNames="ID" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">
    
    <EditItemTemplate>
        <li style="background-color: #999999;">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ValidationGroup="Location_OF_Land_Update" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <br />
            Governorate:
            <asp:TextBox ID="GovernorateTextBox" runat="server" Text='<%# Bind("Governorate") %>' />
            <asp:RequiredFieldValidator ControlToValidate="GovernorateTextBox" ValidationGroup="Location_OF_Land_Update" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ValidationGroup="Location_OF_Land_Update" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            Street_NAME:
            <asp:TextBox ID="Street_NAMETextBox" runat="server" Text='<%# Bind("Street_NAME") %>' />
            <asp:RequiredFieldValidator ControlToValidate="Street_NAMETextBox" ValidationGroup="Location_OF_Land_Update" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <br />
            Piece_Number:
            <asp:TextBox ID="Piece_NumberTextBox" runat="server" Text='<%# Bind("Piece_Number") %>' />
            <asp:RequiredFieldValidator ControlToValidate="Piece_NumberTextBox" ValidationGroup="Location_OF_Land_Update" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <br />
            <asp:TextBox ID="FK_LandTextBox" ValidationGroup="Location_OF_Land_Update" Visible="false" runat="server" Text='<%# Bind("FK_Land") %>' />
           <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Land_ObjectDataSource" DataTextField="Area" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Land_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Land_DAL"></asp:ObjectDataSource>
             <br />
            <asp:Button ID="UpdateButton" ValidationGroup="Location_OF_Land_Update" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <InsertItemTemplate>
        <li style="">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ValidationGroup="Location_OF_Land___Insert" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />Governorate:
            <asp:TextBox ID="GovernorateTextBox" runat="server" Text='<%# Bind("Governorate") %>' />
            <asp:RequiredFieldValidator ControlToValidate="GovernorateTextBox" ValidationGroup="Location_OF_Land___Insert" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ValidationGroup="Location_OF_Land___Insert" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <br />Street_NAME:
            <asp:TextBox ID="Street_NAMETextBox" runat="server" Text='<%# Bind("Street_NAME") %>' />
            <asp:RequiredFieldValidator ControlToValidate="Street_NAMETextBox" ValidationGroup="Location_OF_Land___Insert" ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />Piece_Number:
            <asp:TextBox ID="Piece_NumberTextBox" runat="server" Text='<%# Bind("Piece_Number") %>' />
            <asp:RequiredFieldValidator ControlToValidate="Piece_NumberTextBox" ValidationGroup="Location_OF_Land___Insert" ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            <asp:TextBox ID="FK_LandTextBox" Visible="false" ValidationGroup="Location_OF_Land___Insert" runat="server" Text='<%# Bind("FK_Land") %>' />
            
            
            
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Land_ObjectDataSource" DataTextField="Area" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Land_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Land_DAL"></asp:ObjectDataSource>
            
            
            
            
            
            <br />
            <asp:Button ID="InsertButton" ValidationGroup="Location_OF_Land___Insert" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemTemplate>
        <li style="background-color: #E0FFFF;color: #333333;">
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
            Piece_Number:
            
            <asp:Label ID="Piece_NumberLabel" runat="server" Text='<%# Eval("Piece_Number") %>' />

            <br />
            <asp:Label ID="FK_LandLabel" Visible="false" runat="server" Text='<%# Eval("FK_Land") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    
</asp:ListView>
<asp:ObjectDataSource ID="Location_OF_Land_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Location_OF_Land_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Location_OF_Land_DAL" UpdateMethod="update"></asp:ObjectDataSource>




