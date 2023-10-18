<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Mini statment main</title>
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
.style10 {	color: #FF00FF;
	font-size: 15px;
}
.style11 {color: #0000FF;
	font-weight: bold;
	font-size: 13px;
}
.style14 {	font-size: 24px;
	color: #009900;
}
.style15 {color: #FF00FF}
.style18 {color: #000000; font-size: 16px; }
.style19 {font-size: 16px}
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
          <li class="active"><a href="UserMain.jsp"><span>Home Page</span></a></li>
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
      <div class="article">
        <h2 class="style10 style14">User <span class="style15"><%=(String)application.getAttribute("uname")%></span>'s Mini Statement .. </h2>
        <div class="clr"></div>
        <div class="clr"></div>
        <p>&nbsp;</p>
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
            <h2 class="star"><span>Sidebar</span> Menu</h2>
            <div class="clr"></div>
            <ul class="sb_menu">
              <li class="style13"><a href="UserMain.jsp">Home</a></li>
              <li class="style13"><a href="index.html">Logout</a></li>
              <li><span class="style13"><a href="UserProfile.jsp"></a></span></li>
              <li></li>
            </ul>
          </div>
        </div>
        <p><span class="style18"><a href="U_MiniStatement.jsp">1.Via Auditor</a></span></p>
        <p>&nbsp; </p>
        <p align="left"><span class="style19"><a href="U_MiniStatement1.jsp">2.Via Agent </a></span></p>
        <p align="right"><a href="UserMain.jsp" class="style11"></a>trtt</p>
        <div class="clr">
          <p>&nbsp;</p>
          <p><a href="UserMain.jsp" class="style11">Back</a></p>
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
