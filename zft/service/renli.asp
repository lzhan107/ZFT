<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>人力服务</title>
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
<form name="form4" method="post" action="renli_pro.asp">
<table width="610" border="0" cellspacing="12" cellpadding="0">
  <tr>
    <td height="35" colspan="3" align="center">
     <table width="196" border="0" cellspacing="0" cellpadding="0">
      <tr><td align="left" height="38" background="../image/all.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;人力服务需求提交</td></tr>
     </table>
   </td>
  </tr>
  <tr>
    <td colspan="3"><p style="font-size:13px;">&nbsp;&nbsp;&nbsp;&nbsp;中服通的人力服务包含人才猎聘、人才招聘、人才测评、人力资源外包、人事外包、工作外包、蓝领外包、物业外包、劳务派遣、人才租赁等方面系列项目。<br>
&nbsp;&nbsp;&nbsp;&nbsp;如果你有这方面的服务需求，请填写如下表单，并提交给我们，我们将会在第一时间内与你共同探讨系统化解决方案！
</p></td>
  </tr>
  <tr>
    <td colspan="3" align="center">
    <table width="500" border="1" bordercolor="#666666" style="border-collapse:collapse;" cellspacing="0" cellpadding="0" class="tablestyle">
        <tr bgcolor="#548DD4">
          <td width="172" height="30" align="center"><span style="color:#FFF"><strong>项目（Items）</strong></span></td>
          <td width="206" align="center"><span style="color:#FFF"><strong>内容（Contents）</strong></span></td>
          <td width="114" align="center"><span style="color:#FFF"><strong>备注（Remark）</strong></span></td>
        </tr>
        <tr>
          <td align="center"><span style="color:#C8000B;">*</span>企业名称:</td>
          <td align="left" ><input type="text" name="qname" size=28></td>
          <td rowspan="6" align="center"><span style="color:#C8000B;">*</span>号必须填写</td>
        </tr>
        <tr>
          <td align="center"><span style="color:#C8000B;">*</span>联系人姓名:</td>
          <td align="left"><input type="text" name="lname" size=28></td>
        </tr>
        <tr>
          <td align="center"><span style="color:#C8000B;">*</span>联系人职务:</td>
          <td align="left"><input type="text" name="zhiwu" size=28></td>
        </tr>
        <tr>
          <td align="center"><span style="color:#C8000B;">*</span>联系人电话:</td>
          <td align="left"><input type="text" name="phone" size=28></td>
        </tr>
        <tr>
          <td align="center">联系人手机:</td>
          <td align="left"><input type="text" name="cellphone" size=28></td>
        </tr>
        <tr>
          <td align="center"><span style="color:#C8000B;">*</span>联系人E-mail:</td>
        <td align="left"><input type="text" name="email" size=28></td>
      </tr>
      <tr>
        <td height="170" align="center"><span style="color:#C8000B;">*</span>需求的大概方向:</td>
        <td valign="top"><label>
        <input type="checkbox" name="checkbox1" value="1">
        人才猎聘<br>
        <input type="checkbox" name="checkbox2" value="1">
        人才招聘<br>
        <input type="checkbox" name="checkbox3" value="1">
        人才测评<br>
        <input type="checkbox" name="checkbox4" value="1">
        人力资源外包<br>
        <input type="checkbox" name="checkbox5" value="1">
        人力资源和劳动法<br>
        <input type="checkbox" name="checkbox6" value="1">
        人事外包<br>
        <input type="checkbox" name="checkbox7" value="1">
        工作外包<br>
        <input type="checkbox" name="checkbox8" value="1">
        蓝领外包        <br>
        <input type="checkbox" name="checkbox9" value="1">
        物业外包<br>
        <input type="checkbox" name="checkbox10" value="1">
        劳务派遣<br>
        <input type="checkbox" name="checkbox11" value="1">
        人才租赁<br>
        <input type="checkbox" name="checkbox12" value="1">
        其它<br>
        </label></td>
        <td align="center">可多项选择</td>
      </tr>
      <tr>
        <td height="66" align="center">其它简单说明（150字以内）:</td>
        <td align="left" valign="top"><textarea name="qitajiandanshuoming" rows=4 cols=27></textarea></td>
        <td>&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
   <td width="250" align="right"><img src="../image/submit.jpg" width="50" height="23" onClick="javascript:form4.submit()"></td>
   <td width="100" align="center">&nbsp;</td>
   <td width="250" align="left"><img src="../image/reset.jpg" width="50" height="23" onClick="javascript:form4.reset()"></td>
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