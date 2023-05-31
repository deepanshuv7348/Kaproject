<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    


    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="Styl.css" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <title></title>
</head>


<body>
<form runat="server">
    <div id="mySidenav" class="sidenav">
         
        <p class="logo"><span></span>I & S.B.S</p>
       
        <a href="login.aspx" class="icon-a"><i class="fa fa-dashboard icons"></i> Dashboard</a>
        <a href="Registration.aspx" class="icon-a"><i class="fa fa-user icons "></i> Registration Page</a>

        <a href="InventoryPage.aspx" class="icon-a"><i class="fa fa-tasks icons"></i> Inventory Page</a>
        <a href="InventoryviewPage.aspx" class="icon-a"><i class="fa fa-sharp fa-solid fa-database"></i> Inventoryview Page</a>
        <a href="salbooking.aspx" class="icon-a"><i class="fa fa-book icons"></i>  Sales Booking</a>
        <a href="salesbookingviewpage.aspx" class="icon-a"><i class="fa fa-sharp fa-solid fa-database"></i> Salesbookingview Page</a>
       
        <a href="formdate.aspx" class="icon-a"><i class="fa fa-sharp fa-solid fa-database"></i>  SalesbookingSearch page</a>

        <a href="login.aspx" class="icon-a"><i class="fa-solid fa-right-from-bracket fa-beat"></i>   Logout</a>







    </div>
    <div id="main"></div>

        <div class="head">
            <div class="col-div-6">

                <span style="font-size:30px;cursor:pointer; color: white;" class="nav">☰ Dashboard</span>
              <span style="font-size:30px;cursor:pointer; color: white;" class="nav2">☰ Dashboard</span>
                
            </div>

           
            <div class="col-div-6">
               

                <div class="profile">
                   


                    <img src="megan.png" class="pro-img" />
                    <p>Kavita<span></span></p>
             </div>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="clearfix"></div>
        <br/>
    
  
    
  <br/>
     <div class="col-div-3">
            <div class="box">
              <p><span>Registration Page</span></p>
                 <i class="fa fa-user box-icon"></i>
                <asp:label ID="txtRegisterpage"  cssclass="txt"  runat="server"></asp:label>
          <%-- <i class="fa fa-user box-icon"></i>--%>
            </div>
        </div>
        
   
   <%-- <div class="col-div-3">
            <div class="box">
                <p><span>login Page:</span></p>
                 <i class="fa fa-user box-icon"></i>
                <asp:TextBox ID="txtLogin"  cssclass="txt" runat="server"></asp:TextBox>
               

            </div></div>
        --%>
   
    <div class="col-div-3">
            <div class="box">
              
                <p><span>Inventory Page</span></p>
                <i class="fa fa-users box-icon"></i>
                 <asp:label  ID="txtInventory"  cssclass="txt"   runat="server"></asp:label>
             
            </div>
        </div>
        
  
    <div class="col-div-3">
            <div class="box">

                <p><span>Sales Bookiing</span></p>
                <i class="fa fa-tasks box-icon"></i>
                <asp:Label ID="txtSalesBooking"    cssclass="txt"    runat="server"></asp:Label>

            </div>
        </div>
     <div class="clearfix"></div>

     <%-- <div class="col-div-3">
            <div class="box">
              <p><br/><span>Registration Page:</span></p>
                <asp:TextBox ID="txtRm" runat="server"></asp:TextBox>
            <i class="fa fa-user box-icon"></i>
            </div>
        </div>
       
    <div class="col-div-3">
            <div class="box">
                <p>78<br/><span>Sales Bookiing</span></p>
                <i class="fa fa-book box-icon"></i>
            </div>
        </div>
       --%>
   <%-- <div class="clearfix"></div>
        <br/><br/>
        <div class="col-div-8">
            <div class="box-8">
                <div class="content-box">
                    <p>Top SalesBooking<span>Sales</span></p>
                    <br />
                    <table>
                        <tr>
                            <th>Brand</th>
                            <th>Agency</th>
                            <th>PO NO</th>
                        </tr>
                        <tr>
                            <td>Reliance Mumbai Metro</td>
                            <td>Michael Page</td>
                            <td>7506706477</td>
                        </tr>
                        <tr>
                            <td>IBM</td>
                            <td>Talents Hunter</td>
                            <td>7856456756</td>
                        </tr>
                        <tr>
                            <td>Bank of America</td>
                            <td>Soft Soluction</td>
                            <td>6306628106</td>
                        </tr>
                        <tr>
                            <td>Infosys</td>
                            <td>Helen Bennett</td>
                            <td>9536234576</td>
                        </tr>


                </table>
                </div>
            </div>
        </div>--%>

      <%-- <div class="col-div-4">
            <div class="box-4">--%>
               <%-- <div class="content-box">
                    <p>Total SalesBooking<span>Sell All</span></p>

                    <div class="circle-wrap">
                        <div class="circle">
                            <div class="mask full">
                                <div class="fill"></div>
                            </div>
                            <div class="mask half">
                                <div class="fill"></div>
                            </div>--%>
                            --%>
                            
                            <%--<asp:DetailsView ID="txtSalesBooking" runat="server"></asp:DetailsView>--%>
                           <%-- <asp:TextBox ID="txtSales" runat="server"> </asp:TextBox>--%>
                          <%--  <div class="inside-circle"  runat="server">75%</div>
                        </div>--%>
                   <%-- </div>
                </div>
            </div>
        </div>--%>

        <div class="clearfix"></div>
  
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>

	  $(".nav").click(function(){
	    $("#mySidenav").css('width','70px');
	    $("#main").css('margin-left','70px');
	    $(".logo").css('visibility', 'hidden');
	    $(".logo span").css('visibility', 'visible');
	     $(".logo span").css('margin-left', '-10px');
	     $(".icon-a").css('visibility', 'hidden');
	     $(".icons").css('visibility', 'visible');
	     $(".icons").css('margin-left', '-8px');
	      $(".nav").css('display','none');
	      $(".nav2").css('display','block');
	  });

	$(".nav2").click(function(){
	    $("#mySidenav").css('width','300px');
	    $("#main").css('margin-left','300px');
	    $(".logo").css('visibility', 'visible');
	     $(".icon-a").css('visibility', 'visible');
	     $(".icons").css('visibility', 'visible');
	     $(".nav").css('display','block');
	      $(".nav2").css('display','none');
	 });

    </script>
    </form>
</body>


</html>
   
