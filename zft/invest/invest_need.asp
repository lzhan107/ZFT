<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>投融资平台</title>
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
 <table width="967" border="0" cellspacing="2" cellpadding="0">
   <tr><td>
     <table width="958" border="0" cellpadding="2" cellspacing="0" class="invest">
       <tr>
         <td><img src="../image/invest/need.jpg" width="963" height="170"></td>
         </tr>
     </table>
   </td></tr>
 </table>
  <div class="series">
    <table width="900" border="0" cellspacing="4" cellpadding="0" align="center">
     <tr>
       <td height="58" width="205" background="../image/invest/title.jpg" style="font-family:华文彩云; font-size:30px; color:#548DD4" align="center" valign="middle"><p>我要服务</p></td>
       <td width="90">&nbsp;</td><td colspan="2">&nbsp;</td>
       </tr>
     <tr>
       <td>&nbsp;</td>
       <td width="90">&nbsp;</td>
       <td width="180" height="35" align="center" background="../image/invest/all_link.jpg" class="fontstyle1">&nbsp;&nbsp;我要服务</td>
       <td height="35">&nbsp;</td>
       </tr>
     <tr>
       <td colspan="4" align="center">&nbsp;</td>
     </tr>
    </table>  
  </div>
  <div class="clear">&nbsp;</div>
  <div class="bottom"><!--#include file="bottom.asp" --></div>
</div>
</center>
</body>
</html>
