<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

  
 <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <title> Dashboard </title>
    <link rel="stylesheet" href="style1.css"/>
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'/>
    <%-- <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
   
  


   
</head>
<body>
 
<form runat="server">

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
         <%-- <a href="#">
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
        <span class="dashboard">Dashboard</span>
      </div>
    <%--  <div class="search-box">
        <input type="text" placeholder="Search..."/>
        <i class='bx bx-search' ></i>
      </div>--%>
      <div class="profile-details">
        <img src="megan.png" alt=""/>
        <span class="admin_name">Kavita singh</span>
      <%--<i class='bx bx-chevron-down'></i>--%>
      </div>
    </nav>

    <div class="home-content">
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Registration</div>
             <%--<i class="fa fa-user box-icon"></i>--%>
                <asp:label ID="txtRegisterpage"  cssclass="txt"  runat="server"></asp:label>
            <div class="indicator">
             <%-- <i class='fa fa-user box-icon'></i>--%>
             <%-- <span class="text">Up from yesterday</span>--%>
            </div>
          </div>
       <%--  <i class='fa fa-user box-icon'></i>--%>
        </div>
        <div class="box">
          <div class="right-side">
             <div class="box-topic">Inventory</div>
             <%--<i class="fa fa-user box-icon"></i>--%>
                <asp:label ID="txtInventory"  cssclass="txt"  runat="server"></asp:label>
            <div class="indicator">
              
            </div>
          </div>
       <%--  <i class='fa fa-users box-icon'></i>--%>
        </div>
        <div class="box">
          <div class="right-side">
             <div class="box-topic">Sales Booking</div>
             <%--<i class="fa fa-user box-icon"></i>--%>
                <asp:label ID="txtSalesBooking"  cssclass="txt"  runat="server"></asp:label>
            <div class="indicator">
              
            </div>
          </div>
      <%--  <i class='fa fa-tasks box-icon'></i>--%>
        </div>
       
         
      </div>
    </div>
 
   </section>

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
  </script>
    </form>


</body>
</html>
