<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SIGN_UP_UserControl1.ascx.cs" Inherits="Real_Estate_Management.User_Control.SIGN_UP_UserControl1" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Signup / Registration form using Material Design - Demo by W3lessons</title>
  <!-- CORE CSS-->
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">

<style type="text/css">
    .field-validation-error{ color: red; font-weight: bold; }

html,
body {
    height: 100%;
}
html {
    display: table;
    margin: auto;
}
body {
    display: table-cell;
    vertical-align: middle;
}
.margin {
  margin: 0 !important;
}
</style>
  
</head>
 <body class="blue">
<div id="login-page" class="row">

    <div class="col s12 z-depth-6 card-panel">
      <form class="login-form">


        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i>
                <label for="username" class="center-align">first name</label>
                <asp:TextBox ID="first_name" runat="server"  type="text" class="validate "></asp:TextBox>
              <asp:RequiredFieldValidator CssClass="field-validation-error"  ID="RequiredFieldValidator1" runat="server" ControlToValidate="first_name" ErrorMessage="enter first name"></asp:RequiredFieldValidator>

          </div>
        </div>

        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i>
                <label for="username" class="center-align">last name</label>
                <asp:TextBox ID="last_name" runat="server"></asp:TextBox>
              </div>
            </div>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2"  CssClass="field-validation-error" runat="server" ControlToValidate="last_name" ErrorMessage="enter lastname"></asp:RequiredFieldValidator>
   <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-communication-email prefix"></i>
            <label for="email" class="center-align">Email</label>  
           <asp:TextBox ID="email" runat="server"></asp:TextBox>
       
          </div>
        </div>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="field-validation-error" runat="server" ControlToValidate="email" ErrorMessage="enter email"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="field-validation-error" runat="server" ControlToValidate="email" ErrorMessage="wrong email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
               <label for="password">Password</label>
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
             </div> 
         </div> 
<asp:RequiredFieldValidator ID="RequiredFieldValidator4"  CssClass="field-validation-error" runat="server" ControlToValidate="password" ErrorMessage="password is Required "></asp:RequiredFieldValidator>

 <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <label for="password-again">Re-type password</label>
      <asp:TextBox ID="confirm_password" runat="server" OnTextChanged="confirm_password_TextChanged"></asp:TextBox>

    </div>
        </div>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  CssClass="field-validation-error" runat="server" ControlToValidate="confirm_password" ErrorMessage="enter your password"></asp:RequiredFieldValidator>

<asp:CompareValidator ID="CompareValidator1" runat="server"  CssClass="field-validation-error" ControlToCompare="password" ControlToValidate="confirm_password" ErrorMessage="wrong password"></asp:CompareValidator>


  <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <label for="password-again">phone</label>
            <asp:TextBox ID="phone" runat="server" MaxLength="12"></asp:TextBox>
          </div>
        </div>

<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  CssClass="field-validation-error" ControlToValidate="phone" ErrorMessage="enter phone number"></asp:RequiredFieldValidator>


<div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <label for="password-again">country</label>
<asp:TextBox ID="country" runat="server"></asp:TextBox>
              </div>
    </div>
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"  CssClass="field-validation-error" ControlToValidate="country" ErrorMessage="enter your country"></asp:RequiredFieldValidator>


          <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <label for="password-again">government</label>

<asp:TextBox ID="government" runat="server"></asp:TextBox>

              </div>
              </div>
<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"  CssClass="field-validation-error" ControlToValidate="government" ErrorMessage="enter your government"></asp:RequiredFieldValidator>


          <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <label for="password-again">City</label>
<asp:TextBox ID="city" runat="server"></asp:TextBox>
               </div>
              </div> 
<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"  CssClass="field-validation-error" ControlToValidate="city" ErrorMessage="enter your city"></asp:RequiredFieldValidator>
  <div class="row margin">
          <div class="input-field col s12">
                <i class="mdi-action-lock-outline prefix"></i>
              <br />
<label for="password-again"  >Gender</label>
     <asp:RadioButtonList ID="Gender" runat="server">
    <asp:ListItem Selected="True">male</asp:ListItem>
    <asp:ListItem>female</asp:ListItem>
</asp:RadioButtonList>
              </div>

  </div>

     <div class="row">
          <div class="input-field col s12">
              <asp:LinkButton ID="LinkButton1"  class="btn waves-effect waves-light col s12" OnClick="Button1_Click" runat="server">Create Account</asp:LinkButton>

          </div>
        </div>
      </form>
   
    </div>
  </div>




  <!-- ================================================
    Scripts
    ================================================ -->

  <!-- jQuery Library -->
 <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!--materialize js-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>



  <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-27820211-3', 'auto');
  ga('send', 'pageview');

</script><script src="//load.sumome.com/" data-sumo-site-id="1cf2c3d548b156a57050bff06ee37284c67d0884b086bebd8e957ca1c34e99a1" async="async"></script>
     <script src="../Design/item_template/js/bootstrap.min.js"></script>
     <link href="../Design/item_template/css/bootstrap.min.css" rel="stylesheet" />

</body>

</html>