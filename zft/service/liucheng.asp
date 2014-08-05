<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>服务流程</title>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<body>
<center>
 <div class="mainstyle">
 <% If Session("rname")="" Then  %>
  <!--#include file="top.asp" -->
 <% Else %>
  <!--#include file="top_r.asp" -->
 <% End If %>
  <table width="970" border="0" cellspacing="2" cellpadding="2">
   <tr><td class="service">
     <table width="970" border="0" cellpadding="0" cellspacing="0">
       <tr>
         <td><img src="../image/service1.jpg" width="230" height="170"></td>
         <td><img src="../image/service2.jpg" width="740" height="170"></td>
       </tr>
     </table>
   </td></tr>
  </table>
  <div class="left">
  <!--#include file="links.asp" -->
  </div>
  <div class="right">
  <table width="610" border="0" cellspacing="12" cellpadding="0">
  <tr>
    <td height="35" align="center">
     <table width="196" border="0" cellspacing="0" cellpadding="0">
      <tr><td align="left" height="38" background="../image/all.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;服务流程介绍</td></tr>
     </table>
   </td>
  </tr>
  <tr>
    <td><p  class="p_txt">&nbsp;&nbsp;&nbsp;&nbsp;中服通快捷的网上服务提交系统,可以确保你在第一时间内将企业面临的危机和改善、提升的需求告诉我们，同时中服通将确保在24小时之内快速响应你的需求。<br>
&nbsp;&nbsp;&nbsp;&nbsp;依赖于中服通权威专家系统，和中服通服务商集成系统，中服通将在最短的时间内提交多家适配的服务商供你选择，你也可以委托中服通帮助你组织开展招投标活动，确保你的优质低价服务的获得。
</p></td>
  </tr>
  <tr>
    <td><p  class="p_txt">&nbsp;&nbsp;&nbsp;&nbsp;<strong>中国中服通服务网-------</strong><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一个企业自己的服务网站，社区政府管理者和企业经营管理者的好帮手！</p></td>
  </tr>
  <tr>
    <td align="center"><img src="../image/service5.jpg" width="498" height="175"></td>
  </tr>
  <tr>
    <td align="center"><img src="../image/service6.jpg" width="566" height="338"></td>
  </tr>
  </table>
  </div>
  <div class="clear">&nbsp;</div>
  <!--#include file="../bottom_.asp" -->
 </div>
</center>
</body>
</html>