<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>提交成功</title>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<body>
<center>
 <div class="mainstyle">
  <!--#include file="top_r.asp" -->
  <table width="968" border="0" cellspacing="2" cellpadding="0">
   <tr><td>
     <table width="968" border="0" cellpadding="2" cellspacing="0" class="service">
       <tr>
         <td><img src="../image/service1.jpg" width="226" height="170"></td>
         <td><img src="../image/service2.jpg" width="740" height="170"></td>
       </tr>
     </table>
   </td></tr>
  </table>
  <div class="left">
    <!--#include file="links.asp" -->
  </div>
  <div class="right">
   <center>
    <table width="500" border="0" cellspacing="10" cellpadding="10">
      <tr><td>&nbsp;</td></tr>
      <tr><td>&nbsp;</td></tr>
      <tr><td>&nbsp;</td></tr>
      <tr><td align="center"><span style="color:#C8000B; font-size:25px;"><strong>您的<%= Session("fuwu") %>提交成功！</strong></span></td></tr>
      <tr><td align="center"><span style="color:#C8000B; font-size:25px;"><strong>请等待我们的联系！</strong></span></td></tr>
   </table>
   </center>
  </div>
  <div class="clear">&nbsp;</div>
  <!--#include file="../bottom_.asp" -->
 </div>
</center>
</body>
</html>