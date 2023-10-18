<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Agent_Register page</title>
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
.style37 {color: #FFFFFF}
.style39 {color: #009900; }
.style39 {color: #0000FF; font-weight: bold; font-size: 14px; }
.style14 {color: #FF00FF}
.style30 {color: #FF0099;
	font-weight: bold;
}
.style40 {color: #CC0000}
.style41 {color: #FF0000}
.style35 {	color: #FF0000;
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
          <h2 align="left">Welcome to Agent Register </h2>
          <form action="AgentRegisterStatus.jsp" method="post" id="" enctype="multipart/form-data">
            <label for="name"><span class="style35">Select Bank (required)
              <select name="bank">
              <option>Select</option>
              <option>Bank of Maharashtra</option>
              <option>Canara Bank</option>
              <option>Corporation Bank</option>
              <option>Karnataka Bank</option>
              <option>SBI Bank</option>
            </select>
            </span></label>
            <br/>
            <br/>
            <label for="name"><span class="style35"> User Name (required)</span></label>
            <p class="style35">
              <input id="name" name="userid" class="text" />
            </p>
            <span class="style35">
            <label for="password">Password (required)</label>
            </span>
            <p class="style35">
              <input type="password" id="password" name="pass" class="text" />
            </p>
            <span class="style35">
            <label for="email">Email Address (required)</label>
            </span>
            <p class="style35">
              <input id="email" name="email" class="text" />
            </p>
            <span class="style35">
            <label for="mobile">Mobile Number (required)</label>
            </span>
            <p class="style35">
              <input id="mobile" name="mobile" class="text" />
            </p>
            <span class="style35">
            <label for="address">Your Address</label>
            </span>
            <p class="style35">
              <textarea id="address" name="address" rows="2" cols="50"></textarea>
            </p>
            <span class="style35">
            <label for="dob">Date of Birth (required)<br />
            </label>
            </span>
            <p class="style35">
              <input id="dob" name="dob" class="text" />
            </p>
            <span class="style35">
            <label for="gender">Select Gender (required)</label>
            </span>
            <p class="style35">
              <select id="s1" name="gender" style="width:480px;" class="text">
                <option>--Select--</option>
                <option>MALE</option>
                <option>FEMALE</option>
              </select>
            </p>
            <span class="style35">
            <label for="pic">Select Profile Picture(required)</label>
            </span> <span class="style35">
            <input type="file" id="pic" name="pic" class="text" />
            </span>
            <p><span class="style35">
              <label for="label"><br />
                Select Finger Print(required)</label>
              </span> <span class="style35">
              <input type="file" id="label" name="pic2" class="text" />
            </span></p>
            <p> <br />
                <input name="submit" type="submit" value="REGISTER" />
            </p>
          </form>
          <p class="style37">&nbsp;</p>
          <p class="style37"><a href="AgentLogin.jsp">Back</a></p>
          <h2 class="style39">&nbsp;</h2>
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
            <li><a href="#">Home</a></li>
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
