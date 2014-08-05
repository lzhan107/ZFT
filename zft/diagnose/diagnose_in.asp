<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>&ldquo;自&rdquo;诊断</title>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<body>
<center>
 <div class="mainstyle">
  <!--#include file="top_r.asp" -->
 <table width="970" border="0" cellspacing="2" cellpadding="2">
   <tr><td class="service">
     <table width="970" border="0" cellpadding="0" cellspacing="0">
       <tr>
         <td><img src="../image/diagnose1.jpg" width="230" height="170"></td>
         <td><img src="../image/diagnose2.jpg" width="740" height="170"></td>
       </tr>
     </table>
   </td></tr>
 </table>
  <div class="left"><!--#include file="diagnose.asp" --></div>
  <div class="right">
  <form action="diagnose_d.asp" method="post" name="agre">
   <table width="620" border="0" cellspacing="4" cellpadding="4">
    <tr>
     <td colspan="3">
      <table width="196" border="0" cellspacing="0" cellpadding="0">
       <tr><td align="left" height="38" background="../image/all.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我要"自"诊断</td></tr>
      </table>
     </td>
   </tr>
   <tr><td colspan="2"><!--#include file="agree.asp" --></td></tr>
   <tr><td colspan="2" align="center"><input name="agree" type="checkbox" value="1">同意本协议</td></tr>
   <tr>
     <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onClick="javascript:agre.submit()"><img src="../image/download.jpg" width="100" height="30" border="0"></a></td>
     <td align="left"><a href="diagnose_self.asp"><img src="../image/tj.jpg" width="112" height="30" border="0"></a></td>
   </tr>
   </table>
  </form>
  </div>
  <div class="clear">&nbsp;</div>
  <!--#include file="../bottom_.asp" -->
 </div>
</center>
</body>
</html>