<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ADD_new_apartment.ascx.cs" Inherits="Real_Estate_Management.User_Control.ADD_new_apartment" %>
<!DOCTYPE html>


<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>1 Col Portfolio - Start Bootstrap Templatetle>1 Col Portfolio - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="../Design/item_template/css/1-col-portfolio.css" rel="stylesheet">
    <link href="../Design/item_template/css/bootstrap.css" rel="stylesheet" />
    <link href="../Design/item_template/css/bootstrap.min.css" rel="stylesheet" />
    <style>
            .field-validation-error{ color: red; font-weight: bold; }

        .col-sm-2 col-form-label col-form-label-sm {
            width: 800px !important;
        }

        #Purpose {
            width: 100px !important;
        }
    </style>

</head>
<body>

    <a style="margin-top: -90px;" href="#" class="btn btn-info btn-lg">
        <span class="glyphicon glyphicon-user" style="color: white;"></span>
        <asp:Label ID="Label1" Style="color: white;" runat="server" Text="Label"></asp:Label>

    </a>
    <asp:MultiView ID="MultiView1" runat="server" ViewStateMode="Enabled">
        <asp:View ID="View1" runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton Font-Size="Larger" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back</asp:LinkButton>
            <form>

                <div class="form-group row">
                    <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">area</label>
                    <div class="col-sm-2">
                        <asp:TextBox ID="apartment_area" runat="server" class="form-control form-control-sm" ViewStateMode="Enabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="add" CssClass="field-validation-error" ID="RequiredFieldValidator1" ControlToValidate="apartment_area" runat="server" ErrorMessage="enter area"></asp:RequiredFieldValidator>
                    </div>

                </div>

                <div class="form-group row">
                    <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">apartment type</label>
                    <div class="col-sm-2">
                        <asp:TextBox ID="apartment_type" class="form-control form-control-sm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="add" CssClass="field-validation-error" ID="RequiredFieldValidator2" ControlToValidate="apartment_type" runat="server" ErrorMessage="enter apartment type"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="form-group row">
                    <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">Description</label>
                    <div class="col-sm-2">
                        <asp:TextBox ID="apartment_Description" class="form-control form-control-sm" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="field-validation-error" ValidationGroup="add" ID="RequiredFieldValidator3" ControlToValidate="apartment_Description" runat="server" ErrorMessage="enter Description"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="smFormGroupInput"style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">floor</label>
                    <div class="col-sm-2">
                        <asp:TextBox ID="floor" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="field-validation-error" ValidationGroup="add" ID="RequiredFieldValidator4" ControlToValidate="floor" runat="server" ErrorMessage="enter floor"></asp:RequiredFieldValidator>
                   
                         </div>
                </div>


                <div class="form-group row">
                    <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">apartment number</label>
                    <div class="col-sm-2">

                        <asp:TextBox ID="TextBox5" runat="server" class="form-control form-control-sm"></asp:TextBox>
<asp:RequiredFieldValidator CssClass="field-validation-error" ValidationGroup="add" ID="RequiredFieldValidator6" ControlToValidate="TextBox5" runat="server" ErrorMessage="enter apartment number"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="form-group row">
                    <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">price</label>
                    <div class="col-sm-2">

                        <asp:TextBox ID="price" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="field-validation-error" ValidationGroup="add" ID="RequiredFieldValidator5" ControlToValidate="price" runat="server" ErrorMessage="enter price"></asp:RequiredFieldValidator>
                    
                    </div>

                </div>
                <div class="form-group row">
                    <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">purpose</label>
                    <div class="col-sm-2">

                        <asp:DropDownList ID="apartment_purpose" CssClass="form-control" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name" DataValueField="ID">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Purpose_Apartment_DAL"></asp:ObjectDataSource>


                    </div>
                </div>



                <div class="form-group row">
                    <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">img</label>
                    <div class="col-sm-2">
                        <asp:Image ID="Image3" runat="server" Height="100px" Width="100px" />

                        <asp:FileUpload ID="imge1" runat="server" OnDataBinding="imge1_DataBinding1" ViewStateMode="Enabled" />
                      

                          <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Upload" />

                    </div>

                </div>


                <div class="form-group row">
                    <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">img</label>
                    <div class="col-sm-2">
                        <asp:Image ID="Image4" runat="server" Height="100px" Width="100px" />

                        <asp:FileUpload ID="imge2" runat="server" />

                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Upload" />


                    </div>
                </div>


                <div class="form-group row">
                    <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">img</label>
                    <div class="col-sm-2">

                        <asp:Image ID="Image7" runat="server" Height="100px" Width="100px" />

                        <asp:FileUpload ID="imge3" runat="server" />

                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Upload" />
                    </div>
                </div>


                <div class="form-group row">
                    <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">img</label>
                    <div class="col-sm-2">
                        <asp:Image ID="Image6" runat="server" Height="100px" Width="100px" />
                        <asp:FileUpload ID="apartment_design" runat="server" />

                        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Upload" />
                    </div>
                </div>
                <asp:Button ValidationGroup="add" ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" />

            </form>
        </asp:View>
        <asp:View ID="View2" runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" style="font-size:xx-large; color:crimson;" runat="server" OnClick="LinkButton2_Click">back</asp:LinkButton>

            <div class="form-group row">
                <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">Area</label>
                <div class="col-sm-2">
                    <asp:TextBox ID="building_area" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="building_area" runat="server" ErrorMessage="enter building  Area"></asp:RequiredFieldValidator>

                </div>
            </div>

            <div class="form-group row">
                <label for="smFormGroupInput" style="font-size:x-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">building description</label>
                <div class="col-sm-2">

                    <asp:TextBox ID="building_description" runat="server" class="form-control form-control-sm"></asp:TextBox>
               
                        <asp:RequiredFieldValidator CssClass="field-validation-error" ID="RequiredFieldValidator11" ControlToValidate="building_description" runat="server" ErrorMessage="enter building description"></asp:RequiredFieldValidator>
                     </div>
            </div>

            <div class="form-group row">
                <label for="smFormGroupInput" style="font-size:x-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">year of building</label>
                <div class="col-sm-2">
                    <asp:Calendar ID="building_year" runat="server"></asp:Calendar>
                </div>
            </div>
            <div class="form-group row">
                <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">img</label>
                <div class="col-sm-2">
                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />

                    <asp:FileUpload ID="building_img1" runat="server" />

                    <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Upload" />
                </div>
            </div>
            <div class="form-group row">
                <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">img</label>
                <div class="col-sm-2">
                    <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" />

                    <asp:FileUpload ID="building_deign" runat="server" />
                    <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Upload" />
                </div>
            </div>

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Next" />

        </asp:View>
        <asp:View ID="View3" runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton  ID="LinkButton3" style="font-size:xx-large; color:crimson;" runat="server" OnClick="LinkButton3_Click">back</asp:LinkButton>

            <div class="form-group row">
                <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">country</label>
                <div class="col-sm-2">

                    <asp:TextBox ID="country" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="field-validation-error" ID="RequiredFieldValidator14" ControlToValidate="country" runat="server" ErrorMessage="enter country"></asp:RequiredFieldValidator>
               
                     </div>
            </div>
            <div class="form-group row">
                <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">government</label>
                <div class="col-sm-2">

                    <asp:TextBox ID="government" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="field-validation-error" ID="RequiredFieldValidator15" ControlToValidate="government" runat="server" ErrorMessage="enter government"></asp:RequiredFieldValidator>
                
                </div>
            </div>
            <div class="form-group row">
                <label for="smFormGroupInput" class="col-sm-2 col-form-label col-form-label-sm">city</label>
                <div class="col-sm-2">


                    <asp:TextBox ID="city" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="field-validation-error" ID="RequiredFieldValidator16" ControlToValidate="city" runat="server" ErrorMessage="enter city"></asp:RequiredFieldValidator>
                
                </div>
            </div>

            <div class="form-group row">
                <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">street name</label>
                <div class="col-sm-2">

                    <asp:TextBox ID="street_name" class="form-control form-control-sm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="field-validation-error" ID="RequiredFieldValidator17" ControlToValidate="street_name" runat="server" ErrorMessage="enter street name"></asp:RequiredFieldValidator>
                
                </div>
            </div>

            <div class="form-group row">
                <label for="smFormGroupInput" style="font-size:xx-large; color:crimson;" class="col-sm-2 col-form-label col-form-label-sm">building number</label>
                <div class="col-sm-2">

                    <asp:TextBox ID="building_number" class="form-control form-control-sm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="field-validation-error" ID="RequiredFieldValidator18" ControlToValidate="building_number" runat="server" ErrorMessage="enter building number"></asp:RequiredFieldValidator>
              
                      </div>
            </div>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Next" />
            <br />
        </asp:View>
        <asp:View ID="View4" runat="server" OnInit="View4_Init">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" CssClass="danger"  OnClick="Button5_Click" Text="ADD Room" Width="165px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:View>

    </asp:MultiView>

    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button CssClass="btn-warning" ID="apply" runat="server" OnClick="apply_Click1" Text="Apply" Height="39px" Visible="False" Width="166px" />
            </p>

</body>
</html>

<script src="../Design/item_template/js/bootstrap.js"></script>
<script src="../Design/item_template/js/bootstrap.min.js"></script>
<script src="../Design/item_template/js/jquery.js"></script>
