<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Deposit Amount Via Agent</title>
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
.style48 {color: #FF0000;
	font-weight: bold;
}
.style50 {color: #00FF00; font-weight: bold; }
.style58 {color: #FF0000}
.style60 {color: #FF00FF; font-weight: bold; }
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
        <h2 class="style10 style14">Depositing Amount to Account..</h2>
        <div class="sidebar">
          <div class="searchform"> <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
              <input name="button_search" src="images/search.gif" class="button_search" type="image" />
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
        <%String user=(String)application.getAttribute("uname");
		  String bank=(String)application.getAttribute("ubank");%>
        <form action="U_DepositMoneyStatus1.jsp" method="post" >
          <table width="529" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="200" height="57"><span class="style48">
                <label for="name"><span class="style15">Account Holder Name </span></label>
              </span></td>
              <td width="315"><span class="style48 style15">
                <input type="text"  name="name" value="<%=user%>" readonly="readonly"/>
              </span></td>
            </tr>
            <tr>
              <td height="50"><span class="style48 style15"><span class="style15">
                <label for="name">Bank Name </label>
              </span></span></td>
              <td><span class="style48 style15">
                <input type="text"  name="bank" value="<%=bank%>" readonly="readonly"/>
              </span></td>
            </tr>
            <tr>
              <td height="45"><span class="style60">
                <label for="amount">Enter Amount <span class="style58">(required)</span></label>
              </span> </td>
              <td><span class="style50 style15"><span class="style58">
                <input type="text"  name="amount" class="text" />
              </span></span></td>
            </tr>
            <tr>
              <td height="53"><span class="style60">
                <label for="amount">Select an Agent </label><span class="style58"><strong>              </strong></span> </span></td>
              <td><span class="style50"><span class="style58">
             
                      <select name="bank">
                        <option>Select</option>
                        <option>PayTM</option>
                        <option>Tez</option>
						<option>Xoom</option>
                        <option>BFC Forex </option>

                      </select>
                  
              </span></span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><p class="style48">
                  <input name="submit" type="submit" value="Update Account" />
              </p></td>
            </tr>
          </table>
        </form>
        <p align="right"><a href="UserMain.jsp" class="style11"></a></p>
        <div class="clr">
          <p>&nbsp;</p>
          <p><a href="DTW.jsp" class="style11">Back</a></p>
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
