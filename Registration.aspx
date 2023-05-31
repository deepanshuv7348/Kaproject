<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'/>
   <%-- <meta name="viewport" content="width=device-width, initial-scale=1.0"/>--%>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
   
    <link rel="stylesheet" type="text/css" href="Reg.css"/>
    <title></title>
   
</head>
<body>

    
    
    <div class="sidebar">
    <div class="logo-details">
      
      <span class="logo_name">I & S.B.S</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="Main.aspx" class="active">
            <i class='bx bx-grid-alt'></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="Registration.aspx">
            <i class='fa fa-user icons'></i>
            <span class="links_name">Registration</span>
          </a>
        </li>
           <li>
          <a href="RegistrationDetails.aspx">
            <i class='fa fa-user icons'></i>
            <span class="links_name">Registration Details</span>
          </a>
        </li>
        <li>
          <a href="Inventorypage.aspx">
            <i class='fa fa-tasks icons'></i>
            <span class="links_name">Inventory</span>
          </a>
        </li>
        <li>
          <a href="InventoryviewPage.aspx">
            <i class='fa fa-tasks icons'></i>
            <span class="links_name">Inventory Details</span>
          </a>
        </li>
        <li>
          <a href="Salbooking.aspx">
            <i class='fa fa-book icons'></i>
            <span class="links_name">Sales Booking</span>
          </a>
        </li>
        <li>
          <a href="Salesbookingviewpage.aspx">
            <i class='fa fa-book icons'></i>
            <span class="links_name">Salesbooking Details</span>
          </a>
        </li>
        <li>
          <a href="Formdate.aspx">
            <i class='fa fa-book icons'></i>
            <span class="links_name">SearchBooking</span>
          </a>
        </li>
        <li>
         
        </li>
       
        <li>
         
        </li>
        <li class="log_out">
          <a href="login.aspx">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
    <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Registration</span>
      </div>
     <%-- <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>--%>
      <div class="profile-details">
        <img src="megan.png" alt=""/>
        <span class="admin_name">Kavita singh</span>
     <%-- <i class='bx bx-chevron-down'></i>--%>
      </div>
    </nav>
</section>
  
     <section class="container">
        <section class="row justify-content-lg-start">
            <section class="col-md-12">
                <form class="form-container" runat="server">
                    <div class="form-group">
                       <%--<div class="text-center-text-primary td"><i class="fa-solid fa-registered">   Registration</i></div>
                        --%>
                         <div class="form-group">
                             <div>
   </div>
   
       <label for="inputFatherName" class="form-label">Name</label>

      
    <asp:TextBox ID="txtName"  class="form-control"  runat="server"></asp:TextBox>
 <asp:requiredfieldvalidator  ValidationGroup="Name"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator4" controltovalidate="txtName" runat="server" errormessage="Please enter Name"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator  ValidationGroup="Name" Style="color: red"  ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Please enter Name" ID="Name" runat="Server" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator><br />
</div>
</div>
   
  
    <div class="form-group">
    <label for="inputFatherName" class="form-label">FatherName</label>
    <asp:TextBox ID="txtFatherName"  class="form-control"  runat="server"></asp:TextBox>
 <asp:requiredfieldvalidator ValidationGroup="FatherName" style="color: red" display="Dynamic" id="FatherName" controltovalidate="txtFatherName" runat="server" errormessage="Please enter FatherName"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator ValidationGroup="FatherName" Style="color: red" ControlToValidate="txtFatherName" Display="Dynamic" ErrorMessage="Please enter FatherName" ID="RegularExpressionValidator3" runat="Server" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator><br/>

</div>
   
  <div class="form-group">
    <label for="inputFatherName" class="form-label">MotherName</label>
    <asp:TextBox ID="txtMotherName"  class="form-control"  runat="server"></asp:TextBox>
    
       <asp:requiredfieldvalidator ValidationGroup="MotherName" style="color: red" display="Dynamic" id="MotherName" controltovalidate="txtMotherName" runat="server" errormessage="Please enter MotherName"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator ValidationGroup="MotherName" Style="color: red" ControlToValidate="txtMotherName" Display="Dynamic" ErrorMessage="Please enter MotherName" ID="RegularExpressionValidator2" runat="Server" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator><br/>

      </div>
   
  <div class="form-group">
    <label for="inputPassword" class="form-label">Password</label>
     <asp:TextBox ID="txtPassword"  class="form-control"  runat="server"></asp:TextBox>

 <asp:requiredfieldvalidator ValidationGroup="Pa" style="color: red" display="Dynamic" id="Password1" controltovalidate="txtPassword" runat="server" errormessage="Please enter Password"></asp:requiredfieldvalidator>
  <asp:RegularExpressionValidator ValidationGroup="Pa" Style="color: red"  ControlToValidate="txtPassword"  Display="Dynamic"  ErrorMessage="Please enter Password" ID="Password" runat="Server" ValidationExpression="@^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$"></asp:RegularExpressionValidator><br/>

      </div>

   
  <div class="form-group">
    <label for="inputPhoneNumber" class="form-label">PhoneNumber</label>
     <asp:TextBox ID="txtPhoneNumber"  class="form-control"  runat="server"></asp:TextBox>
<asp:requiredfieldvalidator ValidationGroup="Pho" style="color: red" display="Dynamic" id="PhoneNumber" controltovalidate="txtPhoneNumber" runat="server" errormessage="Enter numbers only till 10 digit"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator ValidationGroup="Pho" Style="color: red" ControlToValidate="txtPhoneNumber" Display="Dynamic" ErrorMessage="Enter numbers only till 10 digit" ID="Pho" runat="Server" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator><br/>


 
      </div>
  <div class="form-group">
    <label for="inputFatherName" class="form-label">Email</label>
   <asp:TextBox ID="TxtEmail"  class="form-control"  runat="server"></asp:TextBox>
       <asp:requiredfieldvalidator ValidationGroup="Ema" style="color: red" display="Dynamic" id="Requiredfieldvalidator2" controltovalidate="TxtEmail" runat="server" errormessage="Plz enter Valid Email"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator ValidationGroup="Em" Style="color: red" ControlToValidate="TxtEmail" Display="Dynamic" ErrorMessage="Plz enter vaild email" ID="Email" runat="Server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br/>
 </div>
  <div class="form-group">
    <label for="inputAddress" class="form-label">Address</label>
    <asp:TextBox ID="txtAddress"  class="form-control"  runat="server"></asp:TextBox>
    
      <asp:requiredfieldvalidator ValidationGroup="Add" style="color: red" display="Dynamic" id="Requiredfieldvalidator1" controltovalidate="txtAddress" runat="server" errormessage="Please enter address"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator ValidationGroup="Add" Style="color: red" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Please enter Address" ID="ADDress" runat="Server" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator><br/>

</div>
<div>
                        

       <asp:Button ID="Register" runat="server" Text="Register" cssclass="btn-btn-primary"  BackColor="skyblue"  height="30px" Width="300px" colour="blue"  Onclick="Register_Click"/>
 
                   
       <asp:Button ID="Cancel" runat="server" Text="Cancel" cssclass="btn-btn-primary"  BackColor="SkyBlue"  height="30px" Width="300px" colour="blue"  Onclick="Cancel_Click"/>
       <div class="login-link"><p>Already have a account?<a href="loginpage.aspx">Login now</a></p>
        </div>            
                    
        </div>               
  </form>
               
       </section>
          </section>
         </section>
          
   
       </body>
</html>




