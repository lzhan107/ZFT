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
      <td>&nbsp;</td>
      <td>发布成功！<a href="../news/judge.asp" class="channel1">查看</a>&nbsp;&nbsp;如有附件请在下面添加</td>
    </tr>
  </table>
  <form name="form1" enctype="multipart/form-data" method="post" action="up.asp">
  <table width="560" border="0" cellspacing="4" cellpadding="4" class="fontstyle1">
    <tr>
      <td width="172"><input type="file" name="File1" size="15"></td>
      <td align="center" width="89" background="../image/附件.jpg" style="cursor:hand;" onClick="javascript:form1.submit()">添加附件一：</td><td width="279">&nbsp;</td>
    </tr>
    <tr>
      <td><input type="file" name="File2" size="15"></td>
      <td align="center" background="../image/附件.jpg" style="cursor:hand;" onClick="javascript:form1.submit()">添加附件二：</td><td>&nbsp;</td>
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