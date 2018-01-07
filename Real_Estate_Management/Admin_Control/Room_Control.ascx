<p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<asp:ListView ID="ListView1" runat="server" DataSourceID="Room_ObjectDataSource" InsertItemPosition="LastItem" DataKeyNames="ID" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">
   
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            <asp:TextBox ID="FK_ApartmentTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Apartment") %>' />
            <br />
            Area:
            <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
             <asp:RequiredFieldValidator ControlToValidate="AreaTextBox" ValidationGroup="Room_Update" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            Image_1:
<%--            <asp:TextBox ID="Image_1TextBox" runat="server" Text='<%# Bind("Image_1") %>' />--%>
                <asp:FileUpload ID="FileUpload1" runat="server" />

             <asp:RequiredFieldValidator ControlToValidate="FileUpload1" ValidationGroup="Room_Update" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <br />
            Room_Name:
            <asp:TextBox ID="Room_NameTextBox" runat="server" Text='<%# Bind("Room_Name") %>' />
             <asp:RequiredFieldValidator ControlToValidate="Room_NameTextBox" ValidationGroup="Room_Update" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            <asp:TextBox ID="FK_Room_TypTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Room_Type") %>' />
           
            
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Room_Type_ObjectDataSource" DataTextField="Room_Type_Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Room_Type_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Room_Type_DAL"></asp:ObjectDataSource>
            



            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Apartment_ObjectDataSource1" DataTextField="Descriptions" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Apartment_ObjectDataSource1" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Apartments_DAL"></asp:ObjectDataSource>






            
             <br />
            <asp:Button ID="UpdateButton" ValidationGroup="Room_Update" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <InsertItemTemplate>
        <li style="">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            <asp:TextBox ID="FK_ApartmentTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Apartment") %>' />
            <br />Area:
            <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
             <asp:RequiredFieldValidator ControlToValidate="AreaTextBox" ValidationGroup="Room_Insert" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />Image_1:
                            <asp:FileUpload ID="FileUpload1" runat="server" />

<%--            <asp:TextBox ID="Image_1TextBox" runat="server" Text='<%# Bind("Image_1") %>' />--%>
             <asp:RequiredFieldValidator ControlToValidate="FileUpload1" ValidationGroup="FileUpload1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />Room_Name:
            <asp:TextBox ID="Room_NameTextBox" runat="server" Text='<%# Bind("Room_Name") %>' />
                       <asp:RequiredFieldValidator ControlToValidate="Room_NameTextBox" ValidationGroup="Room_Insert" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            <asp:TextBox ID="FK_Room_TypTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Room_Type") %>' />
          
  


            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Room_type_ObjectDataSource1" DataTextField="Room_Type_Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Room_type_ObjectDataSource1" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Room_Type_DAL"></asp:ObjectDataSource>







            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Apartment_ObjectDataSource1" DataTextField="Descriptions" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Apartment_ObjectDataSource1" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Apartments_DAL"></asp:ObjectDataSource>


            
            
              <br />
            <asp:Button ID="InsertButton" ValidationGroup="Room_Insert" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
           
            <asp:Label ID="FK_ApartmentLabel" Visible="false" runat="server" Text='<%# Eval("FK_Apartment") %>' />
            <br />
            Area:
            <asp:Label ID="AreaLabel" runat="server" Text='<%# Eval("Area") %>' />
            <br />
            <asp:Label ID="Image_1Label" Visible="false" runat="server" Text='<%# Eval("Image_1") %>' />
             <img alt="" src="../images/<%# Eval("Image_1") %>" height="200" width="200" />

            <br />
            Room_Name:
            <asp:Label ID="Room_NameLabel" runat="server" Text='<%# Eval("Room_Name") %>' />
            <br />
            <asp:Label ID="FK_Room_TypLabel" Visible="false" runat="server" Text='<%# Eval("FK_Room_Type") %>' />
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
<asp:ObjectDataSource ID="Room_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Room_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Room_DAL" UpdateMethod="update"></asp:ObjectDataSource>






























<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Room_Control.ascx.cs" Inherits="Real_Estate_Management.Admin_Control.Room_Control" %>

