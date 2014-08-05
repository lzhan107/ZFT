<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>关于中服通</title>
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
         <td><img src="../image/about1.jpg" width="230" height="170"></td>
         <td><img src="../image/about2.jpg" width="740" height="170"></td>
       </tr>
     </table>
   </td></tr>
 </table>
  <div class="left"><!--#include file="about.asp" --></div>
  <div class="right">
   <table width="620" border="0" cellspacing="6" cellpadding="6">
    <tr>
     <td colspan="2">
      <table width="196" border="0" cellspacing="0" cellpadding="0">
       <tr><td height="38" align="left" background="../image/all.jpg" style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系中服通</td></tr>
      </table>
     </td>
    </tr>
    <tr><td width="40">&nbsp;</td><td width="538">&nbsp;</td></tr>
    <tr>
      <td colspan="2"><p style="color: #484848; font-size:22px"><strong>中国中服通企业服务网 </strong></p></td>
      </tr>
    <tr>
      <td colspan="2" class="step">北京总部地址： 北京市海淀区学院路37号</td>
      </tr>
    <tr>
      <td colspan="2" class="step">南京运营部地址：南京市苜蓿园大街198号</td>
      </tr>
    <tr>
      <td><img src="../image/about_e.jpg" width="40" height="28"></td>
      <td class="step">邮箱:zft@sina.com</td>
    </tr>
    <tr>
      <td><img src="../image/about_h.jpg" width="40" height="28"></td>
      <td class="step">网址：http://www.zft.com</td>
    </tr>
    <tr>
      <td><img src="../image/about_p.jpg" width="40" height="28"></td>
      <td class="step">电话：025-84879672&nbsp; </td>
    </tr>
    <tr>
      <td><img src="../image/about_m.jpg" width="40" height="28"></td>
      <td class="step">传真：025-84879672</td>
    </tr>
    <tr>
      <td><img src="../image/about_c.jpg" width="40" height="28"></td>
      <td class="step">24小时手机联系：15895894778&nbsp; 许老师 </td>
    </tr>
   </table>
  </div>
  <div class="clear">&nbsp;</div>
  <div class="bottom"><!--#include file="../bottom_.asp" --></div>
 </div>
</center>
</body>
</html>