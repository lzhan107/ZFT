<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>我要注册</title>
<meta http-equiv="refresh" content='3; url=../index.asp' />
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<% Session("rname")="" %>
<% Session("qname")="" %>
<body>
<center>
 <div class="mainstyle">
  <!--#include file="top.asp" -->
  <div class="service">
   <table width="940" border="0" cellspacing="2" cellpadding="0">
     <tr>
       <td><img src="../image/register1.jpg" width="230" height="170"></td>
       <td><img src="../image/register2.jpg" width="710" height="170"></td>
     </tr>
   </table>
  </div>
  <div class="left">
    <table width="215" border="0" cellspacing="8" cellpadding="0">
     <tr>
       <td height="58" width="215" background="../image/register3.jpg" style="font-family:华文彩云; font-size:30px;" align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;会员注册</td>
     </tr>
     <tr>
       <td align="center">
        <table width="205" border="0" cellspacing="8" cellpadding="0">
         <tr>
          <td height="35" background="../image/register4.jpg" align="center" class="fontstyle1"><a href="reg.asp" class="channel1">普通会员注册</a></td>
         </tr>
         <tr><td><hr></td></tr>
         <tr>
          <td height="35" background="../image/register4.jpg" align="center" class="fontstyle1"><a href="register.asp" class="channel1">组织会员注册</a></td>
         </tr>
         <tr><td><hr></td></tr>
        </table>
       </td>
     </tr>
   </table>
   <br><br><br><br><br><br><br>
  </div>
  <div class="right">
    <table width="500" border="0" cellspacing="10" cellpadding="10">
      <tr><td>&nbsp;</td></tr>
      <tr><td align="center"><span style="color:#C8000B; font-size:25px;"><strong>注册成功！</strong></span></td></tr>
      <tr><td align="center"><span style="color:#C8000B; font-size:25px;"><strong>请登录！</strong></span></td></tr>
   </table>
  </div>
  <div class="clear">&nbsp;</div>
  <div class="bottom"><!--#include file="../bottom_.asp" --></div>
 </div>
</center>
</body>
</html>