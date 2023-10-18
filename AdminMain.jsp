<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style13 {color: #000000}
.style40 {font-weight: bold}
.style41 {
	font-size: 18px;
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span></span></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="index.html"><span>logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Welcome to Bank :: <%=(String)application.getAttribute("vbank")%></span></h2>
          <div class="clr"></div>
          <div class="img">
            <div align="center">
              <p class="style41">Block chain technology for protecting the banking transaction without using tokens</p>
              <p>&nbsp;</p>
              <p><img src="images/Admin.png" width="595" height="361" alt="" class="fl" /></p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
            </div>
          </div>
          <div class="post_content">          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="AdminAuthentication.jsp">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style40">
            <li class="style13"><a href="index.html">Home</a></li>
           
           
            <li class="style13"><a href="A_AuthorizeUsers.jsp">View Users and Authorize</a></li>
            
            <li class="style13"><a href="A_GenerateACCNum.jsp">View Bank Account Request and Generate 11 Digit Account No</a></li>
            <li><a href="A_View_MiniStatement.jsp">View Money Transfer Request and Process Statement Via Auditor </a></li>
			
		
		   <li><a href="A_View_MoneyDeposit_Requests.jsp">View Money Deposit Request and Process Statement Via Auditor </a></li>
			<li><a href="A_View_Money_Requests.jsp">View Money Deposit Request and Process Statement Via  Agent </a></li>
			
			<li><a href=" A_ViewAllFinancialFrauds.jsp"> View All Financial Frauds and Human Behavior </a></li>
			<li><a href=" A_View_All_Deposit_Transactions_By_Blockchain.jsp">View All Deposit Transactions By Blockchain </a></li>
			
			
			<li><a href=" A_View_All_Financial_Frauds_By_Blockchain.jsp">View All Financial Frauds By Blockchain </a></li>
			
			
			
			<li><a href=" A_ViewAllFinancialFrauds_Results.jsp"> View All Financial Frauds Results </a> </li>
          </ul>
          <ul class="sb_menu">
            <li class="style13"><strong><a href="index.html">Logout</a></strong></li>
            <li><span class="style13"><a href="UserProfile.jsp"></a></span></li>
            <li></li>
          </ul>
        </div>
      </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize"></div>
  </div>
  <div class="footer">
</body>
</html>
