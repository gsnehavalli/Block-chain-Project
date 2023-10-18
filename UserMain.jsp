<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User_Main  Page</title>
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
.style12 {
	color: #000000;
	font-weight: bold;
}
.style13 {color: #000000}
.style14 {color: #333333}
.style15 {color: #FF0000}
.style41 {	font-size: 18px;
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
          <h2 align="center"><span class="style41">Block chain technology for protecting the banking transaction without using tokens</span></h2>
          <h2>Welcome To  User  :: <span class="style15"><%=(String)application.getAttribute("uname")%></span></h2>
          <form id="form1" name="form1" method="post" action="">
            <p align="center"><img src="images/User1.jpg" width="508" height="252" /></p>
            <div class="img"></div>
            <div class="clr"></div>
            <p class="style12"><a href="UserLogin.jsp" class="style13">Back</a></p>
          </form>
          <p>&nbsp;</p>
          <div class="clr"></div>
          <div class="img"></div>
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
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li class="style13"><a href="UserMain.jsp">Home</a></li>
            <li><span class="style13"><a href="UserProfile.jsp">View My  Profile</a></span></li>
           
            <li><a href="U_AccountNumber.jsp">Request Account Number</a></li>
            <li><a href="Via Bank &amp; Auditor Transctions.jsp">Deposit Money,Transfer Money to Bank via Auditor.</a></li>
            <li><a href="DTW.jsp">Deposit Amount To Bank  Via Agent </a></li>
            <li><a href="U_View_MiniStatement.jsp">View Mini Statement for all transactions Via Auditor </a></li>
			 <li><a href="U_View_MiniStatement1.jsp">View Mini Statement for all transactions Via Agent </a></li>
          </ul>
          <a href="U_MiniStatement.jsp" class="sb_menu style14"></a>
          <ul class="sb_menu">
            <li><a href="index.html">Logout</a></li>
          </ul>
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
