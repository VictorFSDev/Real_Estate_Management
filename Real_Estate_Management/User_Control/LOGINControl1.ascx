<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LOGINControl1.ascx.cs" Inherits="Real_Estate_Management.User_Control.LOGINControl1" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login form</title>
    <script src="../Design/login/index.js" type="text/javascript"></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">


    <link rel="stylesheet" href="../Design/login/style.css">
</head>
<body>
    <div class="form">
          <div class="forceColor"></div>
        <div class="topbar">
            <div class="spanColor"></div>
            <asp:TextBox type="text" placeholder="Email" class="input" ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div class="topbar">
            <div class="spanColor"></div>
            <asp:TextBox type="password" class="input" ID="TextBox2" runat="server" Style="margin-left: 4px" placeholder="Password"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" class="submit" runat="server" OnClick="Button1_Click" Text="Login" />

    </div>

    <asp:LinkButton ID="LinkButton1" class="signup" runat="server" OnClick="LinkButton1_Click" OnClientClick="kml">Sign Up</asp:LinkButton>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>

</html>
<asp:Label ID="Label3" runat="server"></asp:Label>
<script src="js/index.js"></script>
--%>
<%--<body>
  <div class="menu">
  <ul class="mainmenu clearfix">
    <li class="menuitem">Well</li>
    <li class="menuitem">how</li>
    <li class="menuitem">about</li>
    <li class="menuitem">that?</li>
  </ul>
</div>
<div class="form">
  <div class="forceColor"></div>
  <div class="topbar">
    <div class="spanColor"></div>
    <input type="text" class="input" id="password" placeholder="Email"/>
  </div>
    <div class="topbar">
    <div class="spanColor"></div>
    <input type="password" class="input" id="password" placeholder="Password"/>
  </div>
  <button class="submit" id="submit" >Login</button>
</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>--%>