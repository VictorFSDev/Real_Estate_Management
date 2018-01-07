<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User_Main_page_Control1.ascx.cs" Inherits="Real_Estate_Management.User_Control.User_Main_page_Control1" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>1 Col Portfolio - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="../Design/item_template/css/1-col-portfolio.css" rel="stylesheet">
    <link href="../Design/item_template/css/bootstrap.css" rel="stylesheet" />
    <link href="../Design/item_template/css/bootstrap.min.css" rel="stylesheet" />
  <style>

      .col-sm-2 col-form-label col-form-label-sm 
      {
          width:800px !important;
      }
      #Purpose{
          width:100px !important;

      }

      </style>

</head>
<body>

    <a style="margin-top: -90px;" href="#" class="btn btn-info btn-lg">
        <span class="glyphicon glyphicon-user" style="color: white;"></span>
        <asp:Label Style="color: white;" ID="Label13" runat="server" Text="Label"></asp:Label>
    </a>

    <asp:DropDownList ID="Type_property" Visible="false" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Type_property_SelectedIndexChanged">
    </asp:DropDownList>





    <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
        <asp:View ID="Building_Unit_View" runat="server">

            <div class="container" style="background-color: #EB6C73; margin-bottom:50px;padding:30px;">
                <form>
      
                    <div class="form-group row">
                        <asp:Label for="lgFormGroupInput" class="col-sm-2 col-form-label col-form-label-sm" ID="Label1" runat="server" Text="Bulding_Max_area"></asp:Label>
                        <div class="col-sm-2">
                            <asp:TextBox ID="Bulding_Max_area" class="form-control form-control-sm" runat="server" TextMode="Number" OnTextChanged="Bulding_Max_area_TextChanged"></asp:TextBox>

                        </div>
              
                        <asp:Label ID="Label2" runat="server" Text="Bulding_Miv_area" for="smFormGroupInput" class="col-sm-2 col-form-label col-form-label-sm"></asp:Label>

                        <div class="col-sm-2">
                            <asp:TextBox ID="Bulding_Min_area" class="form-control form-control-sm" TextMode="Number" runat="server"></asp:TextBox>
                        </div>
                         <div class="col-sm-2">
                             <asp:DropDownList CssClass="form-control"  ID="Purpose" runat="server" DataSourceID="Purpose_ObjectDataSource" DataTextField="Name" DataValueField="ID">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="Purpose_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Purpose_Apartment_DAL"></asp:ObjectDataSource>
</div>
                    </div>

                    <div class="form-group row">

                        <label for="smFormGroupInput" class="col-sm-2 col-form-label col-form-label-sm">Room_Max_Number</label>
                        <div class="col-sm-2">
                            <asp:TextBox ID="Room_Max_Number" class="form-control form-control-sm" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                  
                        <label for="smFormGroupInput" class="col-sm-2 col-form-label col-form-label-sm">Room_Min_Number</label>
                        <div class="col-sm-2">
                            <asp:TextBox ID="TextBox1" class="form-control form-control-sm" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="smFormGroupInput" class="col-sm-2 col-form-label col-form-label-sm">Room_Min_Number</label>
                        <div class="col-sm-2">
                            <asp:TextBox ID="Room_Min_Number" class="form-control form-control-sm" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                   
                        <label for="smFormGroupInput" class="col-sm-2 col-form-label col-form-label-sm">Total_Max_Cost</label>
                        <div class="col-sm-2">
                            <asp:TextBox ID="Total_Max_Cost" class="form-control form-control-sm" TextMode="Number" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="smFormGroupInput" class="col-sm-2 col-form-label col-form-label-sm">Total_Min_Cost</label>
                        <div class="col-sm-2">
                            <asp:TextBox ID="Total_Min_Cost" runat="server" class="form-control form-control-sm" TextMode="Number"></asp:TextBox>
                        </div>
              
                        <label for="smFormGroupInput" class="col-sm-2 col-form-label col-form-label-sm">Location_Search_Building</label>
                        <div class="col-sm-2">
                         <asp:TextBox ID="Location_Search_Building" class="form-control form-control-sm" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <asp:Button ID="Search_Button_Building" class="btn btn-success" runat="server" Text="Search" OnClick="Search_Button_Building_Click" />

                </form>
            </div>
            <asp:ListView ID="ListView2" runat="server" DataSourceID="Filter_Object_ObjectDataSource" OnSelectedIndexChanged="ListView2_SelectedIndexChanged">




                <EditItemTemplate>
                    <li style="background-color: #FFCC66; color: #000080;">ID:
                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                        <br />
                        All_Cost:
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
                    <li style="">ID:
                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                        <br />
                        All_Cost:
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
                    <div class="row" style="background-color:rgba(250, 175, 26, 0.75); border: solid; border-color: darkgrey; border-width: 2px; padding-top: 10px; padding-bottom: 10px; width: 95%; margin-left: 10px;">
                        <div class="col-md-6" style="margin-left:100px;"  >
                            <a href="#">
                                <img alt="" src="../images/<%#Eval("Image_1") %>" height="200" width="350" />
                                <asp:Label ID="Label17" Visible="false" runat="server" Text='<%# Eval("Image_1") %>' />
                            </a>
                        </div>
                        <div class="col-md-5">
                            <asp:Label ID="IDLabel" runat="server" Visible="false" Text='<%# Eval("ID") %>' />
                            <br />
                            <img src="../images/currency-2022440_960_720.png" height="30" width="30" />
                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("All_Cost") %>' />
                            <br />
                            <img src="../images/map-512.png" height="30" width="30" />
                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("Area") %>' />
                            <br />
                            <img src="../images/joede-location-symbol.png" height="30" width="30" />
                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("Country") %>' />,
                    <asp:Label ID="Label19" runat="server" Text='<%# Eval("Governorate") %>' />,
                    <asp:Label ID="Label20" runat="server" Text='<%# Eval("City") %>' />
                            <br />
                            <img   src="../images/bed_filled1600.png" height="30" width="30" />

                    <asp:Label ID="Label21" runat="server" Text='<%# Eval("Room_number") %>' />
                            <br /> <br />
                            <asp:LinkButton CommandName="select" ID="LinkButton1" class="btn btn-primary" runat="server">save<span class="glyphicon glyphicon-chevron-right"></span></asp:LinkButton>

                            <a href="Detailes_Control.aspx?ID=<%# Eval("ID") %>">more</a>

                        </div>
                    </div>

                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
          <%--      <SelectedItemTemplate>
                    <div class="row" style="border: solid; border-color: darkgrey; border-width: 2px; padding-top: 10px; padding-bottom: 10px; width: 95%; margin-left: 10px;">
                        <div class="col-md-7">
                            <a href="#">
                                <img alt="" src="<%# Eval("Image_1") %>" height="150" width="150" />
                                <asp:Label ID="Label17" Visible="false" runat="server" Text='<%# Eval("Image_1") %>' />
                            </a>
                        </div>
                        <div class="col-md-5">
                            <asp:Label ID="IDLabel" runat="server" Visible="false" Text='<%# Eval("ID") %>' />
                            <br />
                            All_Cost:
                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("All_Cost") %>' />
                            <br />
                            Area:
                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("Area") %>' />
                            <br />
                            Country:
                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("Country") %>' />
                            <br />
                            Governorate:
                    <asp:Label ID="Label19" runat="server" Text='<%# Eval("Governorate") %>' />
                            <br />
                            City:
                    <asp:Label ID="Label20" runat="server" Text='<%# Eval("City") %>' />
                            <br />
                            Room_number:
                    <asp:Label ID="Label21" runat="server" Text='<%# Eval("Room_number") %>' />
                            <br />
                            <asp:LinkButton CommandName="select" ID="LinkButton1" class="btn btn-primary" runat="server">save<span class="glyphicon glyphicon-chevron-right"></span></asp:LinkButton>

                            <a href="Detailes_Control.aspx?ID=<%# Eval("ID") %>">more</a>

                        </div>
                    </div>

                </SelectedItemTemplate>--%>




            </asp:ListView>
            <asp:ObjectDataSource ID="Filter_Object_ObjectDataSource" runat="server" SelectMethod="Filter" TypeName="Real_Estate_Management.DAL.filter_DAL">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Bulding_Max_area" Name="Building_Max_Area" PropertyName="Text" Type="Int32" DefaultValue="" />
                    <asp:ControlParameter ControlID="Bulding_Min_area" Name="Building_Min_Area" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="Room_Max_Number" Name="Room_Max_Number" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="Room_Min_Number" Name="Room_Min_Number" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="Total_Max_Cost" Name="Total_Max_Cost" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="Total_Min_Cost" Name="Total_Min_Cost" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="Location_Search_Building" DefaultValue="_" Name="location" PropertyName="Text" Type="String" />
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
                    <li style="background-color: #FAFAD2; color: #284775;">All_Cost:
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
                    <li style="background-color: #FFCC66; color: #000080;">All_Cost:
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
                    <li style="background-color: #FFFBD6; color: #333333;">All_Cost:
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
                    <div style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="background-color: #FFCC66; font-weight: bold; color: #000080;">All_Cost:
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
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
            <br />
            <br />
            <br />
            <br />
        </asp:View>
    </asp:MultiView>


    <script src="../Design/item_template/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../Design/item_template/bootstrap.min.js"></script>


</body>
</html>
<script src="../Design/item_template/js/bootstrap.js"></script>
<script src="../Design/item_template/js/bootstrap.min.js"></script>
<script src="../Design/item_template/js/jquery.js"></script>
