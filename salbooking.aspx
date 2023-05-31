<%@ Page Language="C#" AutoEventWireup="true" CodeFile="salbooking.aspx.cs" Inherits="salbooking" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'/>
    <link   href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
   
    <link   rel="stylesheet" type="text/css" href="sal.css"/>
    <title></title>
</head>
<body>
     <%--<div id="mySidenav" class="sidenav">
        <p class="logo"><span></span>Admin</p>
        <a href="homepage.html" class="icon-a"><i class="fa fa-dashboard icons"></i> Dashboard</a>
        <a href="Registration.aspx" class="icon-a"><i class="fa fa-user icons"></i> Registration Page</a>
       
       <a href="InventoryPage.aspx" class="icon-a"><i class="fa fa-tasks icons"></i> Inventory Page</a>
           <a href="InventoryviewPage.aspx" class="icon-a"><i class="fa fa-sharp fa-solid fa-database"></i> Inventoryview Page</a>
        <a href="salbooking.aspx" class="icon-a"><i class="fa fa-book icons"></i>  Sales Booking</a>
       <a href="salesbookingviewpage.aspx" class="icon-a"><i class="fa fa-sharp fa-solid fa-database"></i> Salesbookingview Page</a>
           <a href="formdate.aspx" class="icon-a"><i class="fa fa-sharp fa-solid fa-database"></i>  SalesbookingSearch page</a>

       
        <a href="login.aspx" class="icon-a"><i class="fa-solid fa-right-from-bracket fa-beat"></i>   Logout</a>


       
    </div> 
     <div id="main">    

        <div class="head">
            <div class="col-div-6">
               
                <span style="font-size:30px;cursor:pointer; color: white;" class="nav">☰ Dashboard</span>
                
            </div>

            <div class="col-div-6">
                <div class="profile">

                    <img src="megan.png" class="pro-img" />
                    <p>Kavita Singh <span></span></p>
                </div>
            </div>
              <div class="clearfix"></div>
        </div>

        <div class="clearfix"></div>
        </div>
    
    --%>
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
        <span class="dashboard"> Sales Booking</span>
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
       
   <%-- <h3>Sales Booking form</h3>--%>
   <form class="row g-1 col-g-2 col-md-12 rm" runat="server">
 <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
    <div class="col-5">
   <label for="inputBrand" class="form-label">Brand</label>
    <asp:TextBox ID="txtBrand" runat="server"  width="530px" forcolour="red"  Height="34px"></asp:TextBox>
<asp:requiredfieldvalidator  ValidationGroup="Brand"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator4" controltovalidate="txtBrand" runat="server" errormessage="Please enter Name"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator  ValidationGroup="Brand"  Style="color: red"  ControlToValidate="txtBrand" Display="Dynamic" ErrorMessage="Please enter BrandName" ID="Name" runat="Server" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator>
</div>
<div class="col-md-5">
      
    <label for="inputAgency" class="form-label">Agency</label>
      <asp:TextBox ID="txtAgency" runat="server" width="530px" Height="34px" ></asp:TextBox>
    <asp:requiredfieldvalidator  ValidationGroup="Agency"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator1" controltovalidate="txtAgency" runat="server" errormessage="Please enter Agency"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator  ValidationGroup="Agency" Style="color: red"  ControlToValidate="txtAgency" Display="Dynamic" ErrorMessage="Please enter Agency" ID="RegularExpressionValidator1" runat="Server" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator>
</div>



        <div class="col-md-5">
    <label for="inputClient" class="form-label">Client</label>
            <asp:TextBox ID="txtClient" runat="server" width="530px" Height="34px"></asp:TextBox>
            <asp:requiredfieldvalidator  ValidationGroup="Clien"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator2" controltovalidate="txtClient" runat="server" errormessage="Please enter Clien"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator  ValidationGroup="Agency" Style="color: red"  ControlToValidate="txtClient" Display="Dynamic" ErrorMessage="Please enter Client" ID="RegularExpressionValidator2" runat="Server" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RegularExpressionValidator>
</div>
            
<div class="col-md-5">
<label for="inputCardReat" class="form-label">Card Rate</label>
<asp:TextBox ID="txtCardRate" runat="server" width="530px" Height="34px"></asp:TextBox>
<asp:requiredfieldvalidator  ValidationGroup="Card"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator3" controltovalidate="txtCardRate" runat="server" errormessage="Please enter CardRate"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator  ValidationGroup="Card" Style="color: red"  ControlToValidate="txtCardRate" Display="Dynamic" ErrorMessage="Please enter CardRate" ID="RegularExpressionValidator3" runat="Server" ValidationExpression="d{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator>
</div>
<div class="col-md-5">
    <label for="inputSealingRate" class="form-label">Sealing Rate</label>
    <asp:TextBox ID="txtSealingRate" runat="server" width="530px" Height="34px"></asp:TextBox>
 <asp:requiredfieldvalidator  ValidationGroup="Card"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator5" controltovalidate="txtSealingRate" runat="server" errormessage="Please enter Sealing Rate"></asp:requiredfieldvalidator>
<asp:RegularExpressionValidator  ValidationGroup="Card" Style="color: red"  ControlToValidate="txtSealingRate" Display="Dynamic" ErrorMessage="Please enter Sealing Rate" ID="RegularExpressionValidator4" runat="Server" ValidationExpression="d{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator>
</div>
 <div class="col-md-5">
    <label for="inputStartDate"class="form-label">Start Date</label>
   <asp:TextBox ID="startDate" runat="server"   Width="530px"  Height="34px"></asp:TextBox>
           <cc1:calendarextender ID="txt_CalendarExtender1" runat="server"  Format="dd/MM/yyyy"  TargetControlID="StartDate"></cc1:calendarextender>
               </div>  

       <div class="col-md-5">
    <label for="inputEndDate" class="form-label">End Date</label>
   <asp:TextBox ID="EndDate" runat="server" width="530px" Height="34px"></asp:TextBox>
<cc1:calendarextender ID="Calendarextender1" runat="server"  Format="dd/MM/yyyy"  TargetControlID="EndDate"></cc1:calendarextender>
                 </div>
<div class="col-md-5">
    <label for="inputBookingType" class="form-label">Booking Type</label><br/>

        <asp:DropDownList ID="BookingType" runat="server" Height="34px" Width="530px">
            <asp:ListItem text="Select Type" value="1"></asp:ListItem>
             <asp:ListItem text="Online" value="Online"></asp:ListItem>
                <asp:ListItem text="Offline" value="Offline"></asp:ListItem></asp:DropDownList>
</div>
 <div class="col-md-5">
    <label for="inputPONO" class="form-label">PO NO</label>
 <asp:TextBox ID="txtPONO" runat="server" width="530px" Height="34px"></asp:TextBox>
     <asp:requiredfieldvalidator  ValidationGroup="PONO"  style="color: red"  display="Dynamic" id="Requiredfieldvalidator6" controltovalidate="txtPONO" runat="server" errormessage="Please enter 10 digit PO No"></asp:requiredfieldvalidator>

<asp:RegularExpressionValidator  ID="PONO" runat="server" ForeColor="red" ErrorMessage="Please enter 10 digit PO NO" ControlToValidate="txtPONO" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
</div>
   <div class="col-md-4">
    <label for="inputItemSelect" class="form-label">Item Select</label>

        <asp:DropDownList ID="ItemSelect" runat="server" Height="34px" Width="530px">
           
             <asp:ListItem text="Car" value="Car"></asp:ListItem>
                <asp:ListItem text="BMW" value="BMW"></asp:ListItem></asp:DropDownList>
</div>
<div class="col-10">
    
    <label for="inputRemark" class="form-label">Remark</label>
    <asp:TextBox ID="txtRemark" runat="server" width="1070px" Height="70px"></asp:TextBox>
     
<asp:RequiredFieldValidator  ID="Remark" runat="server" ForeColor="red" ErrorMessage="Please enter Remark" ControlToValidate="txtRemark" ValidationExpression="[a-zA-Z][a-zA-Z ]+"></asp:RequiredFieldValidator>
</div>


 
    
        <div>
    <asp:Button ID="but" Text="Submit"  Width="320px"  class="btn btn-primary "   runat="server"  OnClick="but_Click"/>
      <asp:Button ID="Update" Text="Update" Width="320px" CssClass="btn btn-primary"  backcolor="green"     runat="server" Onclick="Update_Click1" Visible="false" />
            <asp:Button ID="Cancel" Text="Cancel" Width="320px" CssClass="btn btn-primary"  runat="server" OnClick="Cancel_Click" />
  
   
    </div>
       
       </form>
        
      </div>
     
    
 </body>
</html>
