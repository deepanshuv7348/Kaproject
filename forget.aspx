<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <fieldset style ="width:300px; height:150px; margin-top:250px;">
    <legend>Enter Password </legend>
     <asp:TextBox ID="txtpassword" placeholder="password" runat="server"
            Width="180px"  Height="30px" ></asp:TextBox>
       <asp:RequiredFieldValidator  ID="Password" runat="server" ForeColor="pink" ErrorMessage="Please enter Password" ControlToValidate="txtPassword"  ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RequiredFieldValidator>
 
        <br />  
        <br />
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click"
           Width="180px" BackColor="Pink" height="30px" />
            <br />
           
    </fieldset>
    </div>

    </form>
</body>
</html>
