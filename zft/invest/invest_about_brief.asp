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
         <td><img src="../image/invest/pt.jpg" width="963" height="170"></td>
         </tr>
     </table>
   </td></tr>
 </table>
  <div class="left">
    <table width="221" border="0" cellspacing="8" cellpadding="0">
     <tr>
       <td height="92" width="205" background="../image/invest/title.jpg" style="font-family:华文彩云; font-size:30px; color:#548DD4" align="center" valign="middle"><p>关于投融资信息平台</p></td>
     </tr>
     <tr>
       <td align="center">
        <table width="195" border="0" cellspacing="8" cellpadding="0">
         <tr>
          <td height="35" background="../image/invest/all_link.jpg" align="center" class="fontstyle1"><a href="invest_about_brief.asp" class="channel1">&nbsp;&nbsp;&nbsp;投融资信息平台介绍</a></td>
         </tr>
         <tr><td><hr></td></tr>
         <tr>
          <td height="35" background="../image/invest/all_link.jpg" align="center" class="fontstyle1"><a href="invest_about_ex.asp" class="channel1">相关说明</a></td>
         </tr>
         <tr><td><hr></td></tr>
        </table>
       </td>
     </tr>
   </table><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  </div>
  <div class="right">
  <table width="620" border="0" cellspacing="4" cellpadding="4">
  <tr>
    <td>
     <table width="196" border="0" cellspacing="0" cellpadding="0">
      <tr><td align="left" height="38" background="../image/invest/all.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;投融资信息平台介绍</td></tr>
     </table>
    </td>
  </tr>
  <tr>
    <td><p class="p_txt">&nbsp;&nbsp;&nbsp;&nbsp;为了给你提供更多的增值服务，中服通构建了开放式的投融资信息交流平台，你可以通过本平台了解相关投资机构信息、社区政府招商信息、资金信息、项目信息，同时也可以通过该平台及时发布上述相关信息。当然如果你有相关的服务需求，也可以通过该平台提交给中服通，中服通将会在24小时的时间内快速响应你的服务需求。<br>&nbsp;&nbsp;&nbsp;&nbsp;中服通可以提供如下的服务：项目可研报告的编制、商业策划书的撰写、资金项目对接、投融资顾问等方面。
      </p>
    </td>
  </tr>
  <tr>
    <td align="center"><img src="../image/invest/pt1.jpg" width="570" height="480"></td>
    </tr>
</table>
</div>
  <div class="clear">&nbsp;</div>
  <div class="bottom"><!--#include file="bottom.asp" --></div>
</div>
</center>
</body>
</html>
