<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>服务系列</title>
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
         <td><img src="../image/series1.jpg" width="230" height="170"></td>
         <td><img src="../image/series2.jpg" width="740" height="170"></td>
       </tr>
     </table>
   </td></tr>
 </table>
  <div class="series">
    <table width="900" border="0" cellspacing="8" cellpadding="0" align="center">
     <tr>
       <td align="center"><img src="../image/series.jpg" width="843" height="804"></td>
       </tr>
    </table>  
  </div>
  <!--#include file="../bottom_.asp" -->
 </div>
</center>
</body>
</html>