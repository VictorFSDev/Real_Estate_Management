<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Apartment_Control.ascx.cs" Inherits="Real_Estate_Management.Admin_Control.Apartment_Control" %>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<asp:ListView ID="ListView1" runat="server" DataSourceID="Apartment_ObjectDataSource" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">
    <EditItemTemplate>
        <li style="background-color: #FFCC66;color: #000080;">
            <asp:TextBox Visible="false" ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            Area:
            <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
            <asp:RequiredFieldValidator ValidationGroup="Apartment_insert" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="AreaTextBox"></asp:RequiredFieldValidator>

            <br />
            Apartments_Type:
            <asp:TextBox ID="Apartments_TypeTextBox" runat="server" Text='<%# Bind("Apartments_Type") %>' />
            <asp:RequiredFieldValidator ValidationGroup="Apartment_insert" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Apartments_TypeTextBox"></asp:RequiredFieldValidator>

            <br />
            Image_1:
<%--            <asp:TextBox ID="Image_1TextBox" runat="server" Text='<%# Bind("Image_1") %>' />--%>
           
            <asp:FileUpload ID="FileUpload1" runat="server" />
             <asp:RequiredFieldValidator ValidationGroup="Apartment_insert" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>

             <br />
            Image_2:
                        <asp:FileUpload ID="FileUpload2" runat="server" />

<%--            <asp:TextBox ID="Image_2TextBox" runat="server" Text='<%# Bind("Image_2") %>' />--%>
            <asp:RequiredFieldValidator ValidationGroup="Apartment_insert" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload2"></asp:RequiredFieldValidator>

            <br />
            Image_3:
                        <asp:FileUpload ID="FileUpload3" runat="server" />

<%--            <asp:TextBox ID="Image_3TextBox" runat="server" Text='<%# Bind("Image_3") %>' />--%>
            <asp:RequiredFieldValidator ValidationGroup="Apartment_insert" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload3"></asp:RequiredFieldValidator>

             <br />
            Design_Image:
             <asp:FileUpload ID="FileUpload4" runat="server" />
<%--            <asp:TextBox ID="Design_ImageTextBox" runat="server" Text='<%# Bind("Design_Image") %>' />--%>
            <asp:RequiredFieldValidator ValidationGroup="Apartment_insert" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload4"></asp:RequiredFieldValidator>

            <br />
            Descriptions:
            <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' />
             <asp:RequiredFieldValidator ValidationGroup="Apartment_insert" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DescriptionsTextBox"></asp:RequiredFieldValidator>

            <br />
            Avalable:
            <asp:TextBox ID="AvalableTextBox" runat="server" Text='<%# Bind("Avalable") %>' />
            <asp:RequiredFieldValidator ControlToValidate="AvalableTextBox" ValidationGroup="Apartment_insert" ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <br />
            <asp:TextBox ID="FK_UsersTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Users") %>' />
            
            price_per_meter
               <asp:TextBox ID="TextBox1"  runat="server" Text='<%# Bind("Price_Per_meter") %>' />

            <br />
            <asp:TextBox ID="FK_BuildingTextBox" Visible="false"  runat="server" Text='<%# Bind("FK_Building") %>' />
            <br />
            <asp:TextBox ID="FK_Purpoes_ApartmentTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Purpoes_Apartment") %>' />
            <asp:ObjectDataSource ID="Apartment_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Apartments_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Apartments_DAL" UpdateMethod="update"></asp:ObjectDataSource>

<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="USER_FK_ObjectDataSource" DataTextField="First_Name" DataValueField="ID"></asp:DropDownList>
<asp:ObjectDataSource ID="USER_FK_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Users_DAL"></asp:ObjectDataSource>

.......................................................................
<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="PurposeObjectDataSource" DataTextField="Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="PurposeObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Purpose_Apartment_DAL"></asp:ObjectDataSource>


<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="PuildingObjectDataSource" DataTextField="Descriptions" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="PuildingObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Building_DAL"></asp:ObjectDataSource>
            <br />





            <asp:Button ID="UpdateButton" runat="server"  ValidationGroup="Apartment_insert" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <InsertItemTemplate>
        <li style="">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />Area:
            <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
              <asp:RequiredFieldValidator ValidationGroup="Apartment_Update" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="AreaTextBox"></asp:RequiredFieldValidator>

            <br />Apartments_Type:
            <asp:TextBox ID="Apartments_TypeTextBox" runat="server" Text='<%# Bind("Apartments_Type") %>' />
              <asp:RequiredFieldValidator ValidationGroup="Apartment_Update" ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Apartments_TypeTextBox"></asp:RequiredFieldValidator>

            <br />Image_1:
<%--            <asp:TextBox ID="Image_1TextBox" runat="server" Text='<%# Bind("Image_1") %>' />--%>
                  <asp:FileUpload ID="FileUpload1" runat="server" />
             <asp:RequiredFieldValidator ValidationGroup="Apartment_Update" ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>

             <br />Image_2:
            <%--<asp:TextBox ID="Image_2TextBox" runat="server" Text='<%# Bind("Image_2") %>' />--%>
            <asp:FileUpload ID="FileUpload2" runat="server" />
             <br />Image_3:
           <%-- <asp:TextBox ID="Image_3TextBox" runat="server" Text='<%# Bind("Image_3") %>' />--%>
                      <asp:RequiredFieldValidator ValidationGroup="Apartment_Update" ID="RequiredFieldValidator13" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload2"></asp:RequiredFieldValidator>
            <br />
              <asp:FileUpload ID="FileUpload3" runat="server" />
                   <asp:RequiredFieldValidator ValidationGroup="Apartment_Update" ID="RequiredFieldValidator14" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload3"></asp:RequiredFieldValidator>

            <br />Design_Image:
                         <asp:FileUpload ID="FileUpload4" runat="server" />

           <%-- <asp:TextBox ID="Design_ImageTextBox" runat="server" Text='<%# Bind("Design_Image") %>' />--%>
           <asp:RequiredFieldValidator ValidationGroup="Apartment_Update" ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload4"></asp:RequiredFieldValidator>

              <br />Descriptions:
            <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' />
            <br />Avalable:
            <asp:TextBox ID="AvalableTextBox" runat="server" Text='<%# Bind("Avalable") %>' />
            <asp:RequiredFieldValidator ValidationGroup="Apartment_Update" ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="AvalableTextBox"></asp:RequiredFieldValidator>
            <br />
 price_per_meter
               <asp:TextBox ID="TextBox1"  runat="server" Text='<%# Bind("Price_Per_meter") %>' />

            <br />
            <asp:TextBox ID="FK_UsersTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Users") %>' />
            <br />
         <asp:TextBox ID="TextBox2"  runat="server" Text='<%# Bind("FK_Building") %>' />

            <br />
            <asp:TextBox ID="FK_BuildingTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Building") %>' />
            <br />
          
              <asp:TextBox ID="FK_Purpoes_ApartmentTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Purpoes_Apartment") %>' />
           <asp:ObjectDataSource ID="Apartment_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Apartments_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Apartments_DAL" UpdateMethod="update"></asp:ObjectDataSource>

<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="USER_FK_ObjectDataSource" DataTextField="First_Name" DataValueField="ID"></asp:DropDownList>
<asp:ObjectDataSource ID="USER_FK_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Users_DAL"></asp:ObjectDataSource>

<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="PurposeObjectDataSource" DataTextField="Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="PurposeObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Purpose_Apartment_DAL"></asp:ObjectDataSource>


<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="PuildingObjectDataSource" DataTextField="Descriptions" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="PuildingObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Building_DAL"></asp:ObjectDataSource>
             <br />
            <asp:Button ID="InsertButton" runat="server" ValidationGroup="Apartment_Update"  CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemTemplate>
        <li style="background-color: #FFFBD6;color: #333333;">
            <asp:Label ID="IDLabel" Visible="false"  runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Area:
            <asp:Label ID="AreaLabel"  runat="server" Text='<%# Eval("Area") %>' />
            <br />
            Apartments_Type:
            <asp:Label ID="Apartments_TypeLabel" runat="server" Text='<%# Eval("Apartments_Type") %>' />
            <br />
            <asp:Label ID="Image_1Label" Visible="false" runat="server" Text='<%# Eval("Image_1") %>' />
                              <img alt="" src="../images/<%# Eval("Image_1") %>" height="200" width="200" />

            <br />
            <asp:Label ID="Image_2Label" Visible="false" runat="server" Text='<%# Eval("Image_2") %>' />
                              <img alt="" src="../images/<%# Eval("Image_2") %>" height="200" width="200" />

            <br />
            <asp:Label ID="Image_3Label" Visible="false" runat="server" Text='<%# Eval("Image_3") %>' />
                              <img alt="" src="../images/<%# Eval("Image_3") %>" height="200" width="200" />

            <br />
            Design_Image:
<%--            <asp:Label ID="Design_ImageLabel" runat="server" Text='<%# Eval("Design_Image") %>' />--%>
           <img alt="" src="../images/<%# Eval("Design_Image") %>" height="200" width="200" />

             <br />
            Descriptions:
            <asp:Label ID="DescriptionsLabel" runat="server" Text='<%# Eval("Descriptions") %>' />
            <br />
            Avalable:
            <asp:Label ID="AvalableLabel" runat="server" Text='<%# Eval("Avalable") %>' />
            <br />
            <asp:Label ID="FK_UsersLabel" Visible="false" runat="server" Text='<%# Eval("FK_Users") %>' />
            <br />
            <asp:Label ID="FK_BuildingLabel" Visible="false" runat="server" Text='<%# Eval("FK_Building") %>' />
            <br />
            <asp:Label ID="FK_Purpoes_ApartmentLabel" Visible="false" runat="server" Text='<%# Eval("FK_Purpoes_Apartment") %>' />
            <br />
            <asp:Label ID="Label1" Text='<%# Eval("FK_Purpoes_Apartment") %>' Visible="false" runat="server"  ></asp:Label>
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
<asp:ObjectDataSource ID="Apartment_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Apartments_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Apartments_DAL" UpdateMethod="update"></asp:ObjectDataSource>


<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="PurposeObjectDataSource" DataTextField="Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="PurposeObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Purpose_Apartment_DAL"></asp:ObjectDataSource>


<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="PuildingObjectDataSource" DataTextField="Descriptions" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="PuildingObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Building_DAL"></asp:ObjectDataSource>
            
      

