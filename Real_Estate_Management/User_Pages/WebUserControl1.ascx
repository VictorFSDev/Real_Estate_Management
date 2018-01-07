<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="Real_Estate_Management.User_Pages.WebUserControl1" %>
<p>
    <asp:DropDownList ID="Type_property" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Type_property_SelectedIndexChanged">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button" runat="server" OnClick="Button1_Click" Text="Log out" />
</p>
<asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
    <asp:View ID="Building_Unit_View" runat="server">
        <asp:DropDownList ID="Purpose" runat="server" DataSourceID="Purpose_ObjectDataSource" DataTextField="Name" DataValueField="ID">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="Purpose_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Purpose_Apartment_DAL"></asp:ObjectDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Bulding_Max_area"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Bulding_Max_area" runat="server" OnTextChanged="Bulding_Max_area_TextChanged"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Bulding_Miv_area"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Bulding_Min_area" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Room_Max_Number"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Room_Max_Number" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Room_Min_Number"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Room_Min_Number" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Total_Max_Cost"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Total_Max_Cost" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Total_Min_Cost"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Total_Min_Cost" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Location_Search_Building"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Location_Search_Building" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Search_Button_Building" runat="server" Text="Search" OnClick="Search_Button_Building_Click" style="height: 26px" />
        <br />
        <br />
        <asp:ListView ID="ListView2" runat="server" DataSourceID="Filter_Object_ObjectDataSource">
            
            
            <AlternatingItemTemplate>
                <li style="background-color: #FFF8DC;">All_Cost:
                    <asp:Label ID="All_CostLabel" runat="server" Text='<%# Eval("All_Cost") %>' />
                    <br />
                    Area:
                    <asp:Label ID="AreaLabel" runat="server" Text='<%# Eval("Area") %>' />
                    <br />
                    Image_1:
                    <asp:Label ID="Image_1Label" runat="server" Text='<%# Eval("Image_1") %>' />
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
                    Room_number:
                    <asp:Label ID="Room_numberLabel" runat="server" Text='<%# Eval("Room_number") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #008A8C; color: #FFFFFF;">All_Cost:
                    <asp:TextBox ID="All_CostTextBox" runat="server" Text='<%# Bind("All_Cost") %>' />
                    <br />
                    Area:
                    <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
                    <br />
                    Image_1:
                    <asp:TextBox ID="Image_1TextBox" runat="server" Text='<%# Bind("Image_1") %>' />
                    <br />
                    Country:
                    <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    Governorate:
                    <asp:TextBox ID="GovernorateTextBox" runat="server" Text='<%# Bind("Governorate") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Room_number:
                    <asp:TextBox ID="Room_numberTextBox" runat="server" Text='<%# Bind("Room_number") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">All_Cost:
                    <asp:TextBox ID="All_CostTextBox" runat="server" Text='<%# Bind("All_Cost") %>' />
                    <br />
                    Area:
                    <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
                    <br />
                    Image_1:
                    <asp:TextBox ID="Image_1TextBox" runat="server" Text='<%# Bind("Image_1") %>' />
                    <br />
                    Country:
                    <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    Governorate:
                    <asp:TextBox ID="GovernorateTextBox" runat="server" Text='<%# Bind("Governorate") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Room_number:
                    <asp:TextBox ID="Room_numberTextBox" runat="server" Text='<%# Bind("Room_number") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #DCDCDC; color: #000000;">All_Cost:
                    <asp:Label ID="All_CostLabel" runat="server" Text='<%# Eval("All_Cost") %>' />
                    <br />
                    Area:
                    <asp:Label ID="AreaLabel" runat="server" Text='<%# Eval("Area") %>' />
                    <br />
                    
                    Image_1:
                    
                    <asp:Label ID="Image_1Label" runat="server" Text='<%# Eval("Image_1") %>' />

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
                    Room_number:
                    <asp:Label ID="Room_numberLabel" runat="server" Text='<%# Eval("Room_number") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            
            
            
            <SelectedItemTemplate>
                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">All_Cost:
                    <asp:Label ID="All_CostLabel" runat="server" Text='<%# Eval("All_Cost") %>' />
                    <br />
                    Area:
                    <asp:Label ID="AreaLabel" runat="server" Text='<%# Eval("Area") %>' />
                    <br />
                    Image_1:
                    <asp:Label ID="Image_1Label" runat="server" Text='<%# Eval("Image_1") %>' />
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
                    Room_number:
                    <asp:Label ID="Room_numberLabel" runat="server" Text='<%# Eval("Room_number") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
            
            
            
        </asp:ListView>
        <asp:ObjectDataSource ID="Filter_Object_ObjectDataSource" runat="server" SelectMethod="Filter" TypeName="Real_Estate_Management.DAL.filter_DAL2">
            <SelectParameters>
                <asp:ControlParameter ControlID="Bulding_Max_area" Name="Building_Max_Area" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Bulding_Min_area" Name="Building_Min_Area" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Room_Max_Number" Name="Room_Max_Number" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Room_Min_Number" Name="Room_Min_Number" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Total_Max_Cost" Name="Total_Max_Cost" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Total_Min_Cost" Name="Total_Min_Cost" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Location_Search_Building" DefaultValue=" " Name="location" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Purpose" DefaultValue="" Name="Purpose" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:View>
    <asp:View ID="Land_View" runat="server">
        <asp:DropDownList ID="Purpose_Of_Land" runat="server" DataSourceID="Purpose_Of_Land_ObjectDataSource" DataTextField="Name" DataValueField="ID">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="Purpose_Of_Land_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Purpose_Apartment_DAL"></asp:ObjectDataSource>
        <br />
        &nbsp;
        <asp:Label ID="Label8" runat="server" Text="Land_Max_area"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Land_Max_area" runat="server"></asp:TextBox>
        <br />
        &nbsp;
        <asp:Label ID="Label9" runat="server" Text="Land_Min_area"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Land_Min_area" runat="server"></asp:TextBox>
        <br />
        &nbsp;
        <asp:Label ID="Label10" runat="server" Text="Total_Max_Cost_Land"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Total_Max_Cost_Land" runat="server"></asp:TextBox>
        <br />
        &nbsp;
        <asp:Label ID="Label11" runat="server" Text="Total_Min_Cost_Land"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Total_Min_Cost_Land" runat="server"></asp:TextBox>
        <br />
        &nbsp;
        <asp:Label ID="Label12" runat="server" Text="Location_Search_Land"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Location_Search_Land" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Search_Button_Land" runat="server" Text="Search" OnClick="Search_Button_Land_Click" />
        <br />
        <br />
        <br />
        <asp:ListView ID="ListView3" runat="server" DataSourceID="Land_ObjectDataSource">
            <AlternatingItemTemplate>
                <li style="background-color: #FAFAD2;color: #284775;">All_Cost:
                    <asp:Label ID="All_CostLabel" runat="server" Text='<%# Eval("All_Cost") %>' />
                    <br />
                    Area:
                    <asp:Label ID="AreaLabel" runat="server" Text='<%# Eval("Area") %>' />
                    <br />
                    Images:
                    <asp:Label ID="ImagesLabel" runat="server" Text='<%# Eval("Images") %>' />
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
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #FFCC66;color: #000080;">All_Cost:
                    <asp:TextBox ID="All_CostTextBox" runat="server" Text='<%# Bind("All_Cost") %>' />
                    <br />
                    Area:
                    <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
                    <br />
                    Images:
                    <asp:TextBox ID="ImagesTextBox" runat="server" Text='<%# Bind("Images") %>' />
                    <br />
                    Country:
                    <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    Governorate:
                    <asp:TextBox ID="GovernorateTextBox" runat="server" Text='<%# Bind("Governorate") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">All_Cost:
                    <asp:TextBox ID="All_CostTextBox" runat="server" Text='<%# Bind("All_Cost") %>' />
                    <br />
                    Area:
                    <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
                    <br />
                    Images:
                    <asp:TextBox ID="ImagesTextBox" runat="server" Text='<%# Bind("Images") %>' />
                    <br />
                    Country:
                    <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    Governorate:
                    <asp:TextBox ID="GovernorateTextBox" runat="server" Text='<%# Bind("Governorate") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #FFFBD6;color: #333333;">All_Cost:
                    <asp:Label ID="All_CostLabel" runat="server" Text='<%# Eval("All_Cost") %>' />
                    <br />
                    Area:
                    <asp:Label ID="AreaLabel" runat="server" Text='<%# Eval("Area") %>' />
                    <br />
                    
                    <asp:Label ID="ImagesLabel" Visible="false" runat="server" Text='<%# Eval("Images") %>' />
                    
                    <img alt="" src="../images/<%# Eval("Images") %>" height="200" width="200" />
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
            <SelectedItemTemplate>
                <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">All_Cost:
                    <asp:Label ID="All_CostLabel" runat="server" Text='<%# Eval("All_Cost") %>' />
                    <br />
                    Area:
                    <asp:Label ID="AreaLabel" runat="server" Text='<%# Eval("Area") %>' />
                    <br />
                    Images:
                    <asp:Label ID="ImagesLabel" runat="server" Text='<%# Eval("Images") %>' />
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
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="Land_ObjectDataSource" runat="server" SelectMethod="Filter" TypeName="Real_Estate_Management.DAL.Search_Land_DAL">
            <SelectParameters>
                <asp:ControlParameter ControlID="Land_Max_area" Name="Land_Max_Area" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Land_Min_area" Name="Land_Min_Area" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Total_Max_Cost_Land" Name="Total_Max_Cost_Land" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Total_Min_Cost_Land" DefaultValue="" Name="Total_Min_Cost_Land" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Location_Search_Land" DefaultValue="_" Name="location" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Purpose_Of_Land" DefaultValue="" Name="Purpose" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <br />
        <br />
        <br />
        <br />
    </asp:View>
</asp:MultiView>

<p>
    &nbsp;</p>

<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>


