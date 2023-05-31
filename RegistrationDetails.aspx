<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationDetails.aspx.cs" Inherits="RegistrationDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'/>
     <link   href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
   <link   rel="stylesheet" type="text/css" href="Salvi.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
        <%--<li>--%>
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
        <span class="dashboard"> Registration Details</span>
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
    <form id="form1" runat="server">
          
         <div>
            <asp:ListView ID="ListView1" runat="server">

                <LayoutTemplate>  
              <table border="1">  
                  <tr>
                       </td>
                      <th>Name</th>  
                      <th>FatherName</th>  
                      <th>MotherName</th>  
                      <th>Password</th>
                      <th>PhoneNumber</th>
                      <th>Email</th>
                      <th>Address</th>
                     <th>Login</th>
                   
                      
                       </tr>
                  
                  <tr runat="server" id="itemPlaceholder"></tr>  
                  </table>  
          </LayoutTemplate> 
           
          <ItemTemplate> 
              <tr>
              <td> 
                  
                
                  <%# Eval("Name") %>  
                 
              </td>  
              <td>  
                  <%# Eval("FatherName") %>  
              </td>  
              <td>  
                  <%# Eval("MotherName") %>  
              </td>  
              <td>  
                  <%# Eval("Password")%>  

              </td>
                  <td>
               <%# Eval("PhoneNumber")%>  

              </td>
                  
                  
                   <td><%# Eval("Email") %>
                  </td>
                   <td>
                      <%# Eval("Address") %>
                  </td>
                   
                      
                  
                  
                  <td><asp:button ID="Login" text="Login" runat="server"  cssclass="btn btn-primary "  Onclick="Login_Click"/></td>
                 <%--<asp:Button ID="Delete" Text="Delete" runat="server" cssclass="btn btn-primary  "/>--%>
                   </ItemTemplate>  
            </asp:ListView>
         </div>   
      
       </form>
        
   
</body>
</html>



  