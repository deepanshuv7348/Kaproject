<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="kavita" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link rel="stylesheet" type="text/css" href="logs.css"/>
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
          <a href="Inventoryview.aspx">
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
         <%-- <a href="#">
            <i class='bx bx-message'></i>
            <span class="links_name">Messages</span>
          </a>
        </li>
       
        <li>
          <a href="#">
            <i class='bx bx-cog'></i>
            <span class="links_name">Setting</span>
          </a>--%>
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
        <span class="dashboard">Login</span>
      </div>
      <%--<div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>--%>
      <div class="profile-details">
        <img src="megan.png" alt=""/>
        <span class="admin_name">Kavita singht</span>
      <%--<i class='bx bx-chevron-down'></i>--%>
      </div>
    </nav>

    <div class="home-content">
      <div class="overview-boxes"></div>
    </div>
        </section>
  
       <section class="container">
       
            <section class="row justify-content-center">
                <section class="col-12 col-md-7">
                    <form class="form-container" runat="server">
                        <div class="form-group" >
                          
                              
                          <%--  <div class="text-center-text-primary td"><i class="fa-solid fa-user"></i> Login Page</div>--%>
                            <div class="form-group">
                                <label>Email</label>
                                <div>
                                <asp:TextBox ID="txtEamil" runat="server"  Width="280px"  placeholder="Plz Enter Email"  Height="40px"></asp:TextBox>
                     <%-- <asp:RegularExpressionValidator ID="Email"  runat="server"  ForeColor="red" ErrorMessage="Please enter Email"  ControlToValidate="txtEmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
   
                       --%>  </div>
                              </div> 

                            <div class="form-group">
                                <label>Password</label>
                                <div>
                                <asp:TextBox ID="txtPassword" runat="server" placeholder=" plz  Enter Password" Width="280px" Height="40px"></asp:TextBox>
                       <asp:RequiredFieldValidator  ID="Password" runat="server" ForeColor="red" ErrorMessage="Please enter Password" ControlToValidate="txtPassword" validationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RequiredFieldValidator>
                                
      </div>

                             

     </div>
 

                             <asp:Button ID="LOGIN" runat="server" Text="LOGIN"   cssclass="btn btn-primary"  height="40px" Width="290px" onClick="LOGIN_Click"/>
                   
                        <div class="register-link"><p>Don't have an account?<a href="Registration.aspx">Register now</a></p></div>
                        
                      </div>
                       
                         </form>
               
                   
                </section>
               </section>
           </section>
     
    
   
       </body>
    
    </html>
