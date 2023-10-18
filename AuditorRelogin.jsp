<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Auditor Re_Login  Page</title>
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
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style12 {
	color: #000000;
	font-weight: bold;
}
.style13 {color: #000000}
.style29 {color: #FF0000;
	font-size: 18px;
}
.style31 {color: #006600; font-size: 14px; font-weight: bold; }
.style30 {color: #FF00FF}
.style34 {color: #6699FF;
	font-weight: bold;
}
.style35 {color: #FF0000}
.style36 {color: #0000FF; font-weight: bold; }
.style38 {color: #FF0000; font-weight: bold; }
.style39 {color: #FF00FF;
	font-size: 18px;
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
          <h2><span class="style29">Invalid Login Details, Please Try Again!!</span></h2>
          <form id="form1" name="form1" method="post" action="AuditorAuthentication.jsp" enctype="multipart/form-data">
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
                <td height="46" align="center" valign="middle"><span class="style38">
                  <label for="label2">Select Finger Print(required)</label>
                </span></td>
                <td><span class="style38">
                  <label for="label"></label>
                  </span> <span class="style38">
                  <input type="file" id="label" name="pic2" class="text" />
                </span></td>
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
                    <span class="style38">New User?</span><span class="style11"><a href="AuditorRegister.jsp" class="style30"> Register </a></span></td>
              </tr>
              <tr>
                <td height="49"></td>
                <td><p align="right"><a href="index.html" class="style36"></a></p></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p class="style12"><a href="index.html" class="style13"></a></p>
            <p class="style12">&nbsp;</p>
            <p class="style12"><a href="AuditorLogin.jsp" class="style36">Back</a></p>
          </form>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
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
            <li><a href="UserLogin.jsp">Home</a></li>
            <li><a href="#">Logout</a></li>
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
