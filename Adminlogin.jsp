<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin login  Page</title>
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
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style30 {color: #FF00FF}
.style34 {color: #6699FF;
	font-weight: bold;
}
.style35 {color: #FF0000}
.style36 {color: #0000FF; font-weight: bold; }
.style38 {color: #FF0000; font-weight: bold; }
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
          <form id="form1" name="form1" method="post" action="AdminAuthentication.jsp">
            <div class="article">
              <h2 class="style30">Welcome To Bank Admin Login </h2>
              <div class="clr"></div>
              <p>&nbsp;</p>
              <table width="570" border="0" align="left" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="185" align="center" valign="middle"><label for="email">
                      <div align="center"><span class="style34">Select Bank (required)</span></div>
                    </label></td>
                  <td><p align="left">
                      <select name="bank">
                        <option>Select</option>
                        <option>Bank of Maharashtra</option>
                        <option>Canara Bank</option>
                        <option>Corporation Bank</option>
                        <option>Karnataka Bank</option>
                        <option>SBI Bank</option>
                      </select>
                  </p></td>
                </tr>
                <tr>
                  <td height="46" align="center" valign="middle"><span class="style35">
                    <label for="label"> </label>
                    </span>
                      <label for="label">
                      <div align="center"><span class="style35"><strong>User Name (required)</strong></span></div>
                      </label>
                      <span class="style35">
                      <label for="name"></label>
                    </span></td>
                  <td width="371"><input id="name" name="userid" class="text" /></td>
                </tr>
                <tr>
                  <td height="40" align="center" valign="middle"><span class="style35">
                    <label for="email"> </label>
                    </span>
                      <label for="email">
                      <div align="center"><span class="style35"><strong>Password (required)</strong></span></div>
                    </label></td>
                  <td><input type="password" id="pass" name="pass" class="text" /></td>
                </tr>
                <tr>
                  <td height="47">&nbsp;</td>
                  <td><input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                      <span class="style38">New Admin?</span><span class="style38"></span><span class="style10"><a href="AdminRegister.jsp" class="style30"> Register </a></span></td>
                </tr>
              </table>
              <div class="clr"></div>
            </div>
            <p class="style12"><a href="Adminlogin.jsp" class="style13">Back</a></p>
          </form>
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
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li class="style13"><a href="index.html">Home</a></li>
            <li class="style13"><a href="index.html">Logout</a></li>
            <li><span class="style13"><a href="UserProfile.jsp"></a></span></li>
            <li></li>
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
