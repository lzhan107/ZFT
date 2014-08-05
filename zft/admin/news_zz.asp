<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>组织信息发布</title>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<body>
<center>
 <div class="mainstyle">
 <!--#include file="top.asp" -->
 <table width="970" border="0" cellspacing="2" cellpadding="2">
   <tr><td class="service">
     <table width="970" border="0" cellpadding="0" cellspacing="0">
       <tr>
         <td><img src="../image/news1.jpg" width="230" height="170"></td>
         <td><img src="../image/news2.jpg" width="740" height="170"></td>
       </tr>
     </table>
   </td></tr>
 </table>
  <div class="left">
  <!--#include file="new.asp" -->
  </div>
  <div class="right">
  <table width="620" border="0" cellspacing="4" cellpadding="4">
    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr><td>&nbsp;</td>
      <td>
       <table width="192" border="0" cellspacing="0" cellpadding="0">
        <tr><td align="left" height="36" background="../image/news3.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;组织信息发布</td></tr>
       </table>
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center" height="30" valign="bottom"><img src="../image/news4.jpg" width="574" height="12"></td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>
  </table>
  <form action="zz.asp" method="post" name="zz">
    <table width="560" border="0" cellspacing="5" cellpadding="5" align="center">
      <tr>
        <td width="90">
          <table width="90" height="30" border="1" bordercolor="#CCCCCC" cellspacing="1" cellpadding="1" style="border-collapse:collapse; font-size:13px;">
            <tr><td align="center">主题</td></tr>
          </table>
        </td>
        <td colspan="2">
          <table width="428" height="30" border="0" bordercolor="#CCCCCC" cellspacing="1" cellpadding="1" style="border-collapse:collapse;">
            <tr><td align="left"><input name="theme" type="text" size="60"></td></tr>
          </table>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <table width="90" height="30" border="1" bordercolor="#CCCCCC" cellspacing="1" cellpadding="1" style="border-collapse:collapse; font-size:13px;">
            <tr><td align="center">正文</td></tr>
          </table>
        </td>
        <td colspan="2" valign="top">
          <table width="430" height="360" border="0" bordercolor="#CCCCCC" cellspacing="1" cellpadding="1" style="border-collapse:collapse; font-size:13px;">
            <tr><td align="center"><textarea name="text" cols="59" rows="25">&nbsp;&nbsp;&nbsp;&nbsp;</textarea></td></tr>
          </table>
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td width="334" align="center">
          <img src="../image/发布.jpg" width="55" height="25" style="cursor:hand;" onClick="javascript:zz.submit()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <img src="../image/重写.jpg" width="55" height="25" style="cursor:hand;" onClick="javascript:zz.reset()">
        </td>
        <td width="82" align="center">&nbsp;</td>
      </tr>
    </table>
  </form>
  </div>
  <div class="clear">&nbsp;</div>
 <div class="bottom"><!--#include file="../bottom_.asp" --></div>
 </div>
</center>
</body>
</html>