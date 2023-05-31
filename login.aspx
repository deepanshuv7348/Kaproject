<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>Login Page</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
   
    <link rel="stylesheet" type="text/css" href="Styles.css"/>
</head>
<body>
    <div class="form" runat="server">
        <div class="imogi">
    <i class="fa-solid fa-user fa-beat"></i>
           
            <p>Login to your account</p>
        </div>
    <form runat="server">
        <asp:TextBox ID="txtUserName" runat="server"  placeholder="username"></asp:TextBox>
         <asp:RequiredFieldValidator  ID="UserName" runat="server" ForeColor="pink" ErrorMessage="Please enter username" ControlToValidate="txtUserName" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RequiredFieldValidator>
 
        <asp:TextBox ID="txtpassword" runat="server"     placeholder="password" ></asp:TextBox>
        <asp:RequiredFieldValidator  ID="Password" runat="server" ForeColor="pink" ErrorMessage="Please enter Password" ControlToValidate="txtPassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RequiredFieldValidator>
  
        <asp:Button ID="Submit" Text="LOGIN" runat="server" BackColor="LightPink" OnClick="Submit_Click"></asp:Button>
       <%--<div class="login-link"><p1>Forget Password ?<a href="forget.aspx">Click-Me</a></p1></div>--%>
        <div class="social">
          <i class="fa-brands fa-instagram"></i>
             <i class="fa-brands fa-facebook"></i>
            <i class="fa-brands fa-square-whatsapp"></i>
            <i class="fa-brands fa-twitter"></i>
</div>    
    </form>
    </div>
</body>
</html>
    
