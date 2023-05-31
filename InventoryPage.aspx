<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InventoryPage.aspx.cs" Inherits="InventoryPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
     <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/> 
   
    <link rel="stylesheet" href="Invento.css"/>
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
       <%-- <li>--%>
          <%--<a href="#">
            <i class='bx bx-message'></i>
            <span class="links_name">Messages</span>
          </a>
        </li>
       
        <li>
          <a href="#">
            <i class='bx bx-cog'></i>
            <span class="links_name">Setting</span>
          </a>
        </li>--%>
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
        <span class="dashboard">Inventory</span>
      </div>
     <%-- <div class="search-box">
        <input type="text" placeholder="Search..."/>
        <i class='bx bx-search' ></i>
      </div>--%>
      <div class="profile-details">
        <img src="megan.png" alt=""/>
        <span class="admin_name">Kavita singh</span>
     <%-- <i class='bx bx-chevron-down'></i>--%>
      </div>
    </nav>  
       </section>
    
    
      <div class="container">
   <%-- <h3>Inventory Page</h3>--%>
          
      <form class="row g-4 col-g-5 " runat="server">
          
     <div class="col-5">
   <asp:TextBox  ID="txtInventoryName" runat="server" Width="500px" height="45px" placeholder="InventoryName"></asp:TextBox>
<asp:requiredfieldvalidator  ValidationGroup="InventoryName"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator5" controltovalidate="txtInventoryName" runat="server" errormessage="Please enter InventoryName"></asp:requiredfieldvalidator>

<asp:RegularExpressionValidator  ID="InventoryName" runat="server" ForeColor="red" ErrorMessage="Please enter InventoryName" ControlToValidate="txtInventoryName" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator>



        </div>   
      <div class="col-md-5">
    <asp:TextBox ID="txtInventorylengh" Width="500px" height="45px" runat="server" placeholder="Inventorylengh"></asp:TextBox>
<asp:requiredfieldvalidator  ValidationGroup="Inh"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator6" controltovalidate="txtInventorylengh" runat="server" errormessage="Please enter InventoryName"></asp:requiredfieldvalidator>

<asp:RegularExpressionValidator  ID="RegularExpressionValidator1" runat="server" ForeColor="red" ErrorMessage="Please enter  Inventorylengh" ControlToValidate="txtInventoryName" ValidationExpression="([a-zA-Z]{6}[a-zA-Z0-9]{2}([a-zA-Z0-9]{3})?)"></asp:RegularExpressionValidator>



  </div>
        <div class="col-md-5">
       <asp:TextBox ID="txtInventoryheight" runat="server" Width="500px" height="45px" placeholder="Inventoryheight"></asp:TextBox>
            <asp:requiredfieldvalidator  ValidationGroup="Inv"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator1" controltovalidate="txtInventoryheight" runat="server" errormessage="Please enter Inventoryheight"></asp:requiredfieldvalidator>

            <asp:RegularExpressionValidator  ID="RegularExpressionValidator2" runat="server" ForeColor="red" ErrorMessage="Please enter Inventoryheight" ControlToValidate="txtInventoryheight" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator>
</div>

           
           <div class="col-md-5">
           <asp:TextBox ID="txtInventoryArea" runat="server" Width="500px" height="45px" placeholder="InventoryArea"></asp:TextBox>
          <asp:requiredfieldvalidator  ValidationGroup="Iarea"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator2" controltovalidate="txtInventoryArea" runat="server" errormessage="Please enter InventoryArea"></asp:requiredfieldvalidator>
               <asp:RegularExpressionValidator  ID="RegularExpressionValidator3" runat="server" ForeColor="red" ErrorMessage="Please enter InventoryArea" ControlToValidate="txtInventoryArea" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator>


          </div>
          <div class="col-md-5">
          <asp:TextBox ID="txtReport"  Width="500px" height="40px" runat="server" placeholder="Report"></asp:TextBox>
               
<asp:requiredfieldvalidator  ValidationGroup="Report"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator3" controltovalidate="txtReport" runat="server" errormessage="Please enter Report"></asp:requiredfieldvalidator>


            <asp:RegularExpressionValidator  ID="RegularExpressionValidator4" runat="server" ForeColor="red" ErrorMessage="Please enter Report " ControlToValidate="txtReport" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator>

</div>
          <div class="col-md-5">
           <asp:TextBox ID="txtInventoryCode" runat="server" Width="500px" height="45px" placeholder="InventoryCode"></asp:TextBox>
   <asp:requiredfieldvalidator  ValidationGroup="InventoryCode"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator4" controltovalidate="txtInventoryCode" runat="server" errormessage="Please enter InventoryCode"></asp:requiredfieldvalidator>
           
<asp:RegularExpressionValidator  ID="RegularExpressionValidator5" runat="server" ForeColor="red" ErrorMessage="Please enter InventoryCode" ControlToValidate="txtInventoryCode" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator>
</div>

              
          <div class="col-md-5">
     <asp:TextBox ID="txtChangePassword" runat="server" Width="500px" height="45px" placeholder="ChangePassword"/>
    <asp:requiredfieldvalidator  ValidationGroup="Password"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator9" controltovalidate="txtChangePassword" runat="server" errormessage="Please enter 10 digit PO No"></asp:requiredfieldvalidator>

              <asp:RegularExpressionValidator  ID="RegularExpressionValidator6" runat="server" ForeColor="red" ErrorMessage="Please enter ChangePassword  " ControlToValidate="txtChangePassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>
            
</div>


  
           <div class="col-md-5">
    <asp:TextBox ID="txtTranasaction" runat="server" Width="500px" height="45px" placeholder="Tranasaction"></asp:TextBox>
                <asp:RequiredFieldValidator  ID="RequiredFieldValidator10" runat="server" ForeColor="red"  ErrorMessage="Please enter Tranasaction"  ControlToValidate="txtTranasaction"  ></asp:RequiredFieldValidator>


    <asp:RegularExpressionValidator  ID="RegularExpressionValidator7" runat="server" ForeColor="red" ErrorMessage="Please enter Tranasaction  " ControlToValidate="txtTranasaction" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>
            
   
              </div>
     <div class="col-md-5">
    <asp:TextBox ID="txtMasters" runat="server" Width="500px" height="45px" placeholder="Masters"></asp:TextBox>
         <asp:requiredfieldvalidator  ValidationGroup="Master"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator7" controltovalidate="txtMasters" runat="server" errormessage="Please enter Masters"></asp:requiredfieldvalidator>


            <asp:RegularExpressionValidator  ID="RequiredFieldValidator8" runat="server" ForeColor="red"  ErrorMessage="Please enter Masters"  ControlToValidate="txtMasters"  ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>

         
</div>

  
           <div class="col-md-5">
              
       <asp:DropDownList ID="RentParDay" placeholder="Rant Par Day"  width="500" height="45px" runat="server">
       <asp:ListItem text="RentParDay" value="40000"></asp:ListItem>
             <asp:ListItem text="500" value="500"></asp:ListItem>
                <asp:ListItem text="8000" value="8000"></asp:ListItem>
                <asp:ListItem text="1100" value="1100"></asp:ListItem>
                <asp:ListItem text="1300" value="1300"></asp:ListItem></asp:DropDownList>
</div>
 <div class="col-md-5">
  <asp:DropDownList ID="Location" placeholder="Location" Width="1020px" height="45px" runat="server">
               <asp:ListItem text="Location" value=""></asp:ListItem>
             <asp:ListItem text="Mumbai" value="Mumbai"></asp:ListItem>
                <asp:ListItem text="Delhi" value="Delhi"></asp:ListItem>
                <asp:ListItem text="Noida" value="Noida"></asp:ListItem></asp:DropDownList>
     </div>
   
     

                
     <div>    
     
        
        <asp:Button ID="submit" Text="Submit" runat="server" Class="btn btn-primary" Width="250px" height="35px" OnClick="submit_Click"  OnClientClick="Confirmation"/>
         <asp:Button ID="Update" Text="Update" runat="server" Class="btn btn btn-primary" BackColor="green"  Width="250" Height="35px" Visible="false" OnClick="Update_Click"/>
         <%-- <asp:Button ID="Delete" Text="Delete" runat="server" Class="btn btn btn-primary" Width="250" Height="35px" OnClick="Delete_Click" />--%>
          <asp:Button ID="Cancel" Text="Cancel" runat="server" Class="btn btn btn-primary" Width="250" Height="35px" OnClick="Cancel_Click" />
          
      </div>
      </form>
          </div>
    
      </body>
</html>
