<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>我要注册</title>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>


<body>
<center>
 <div class="mainstyle">
  <!--#include file="top.asp" -->
  <table width="968" border="0" cellspacing="2" cellpadding="0">
   <tr><td>
     <table width="968" border="0" cellpadding="1" cellspacing="0" class="service">
       <tr>
         <td><img src="../image/register1.jpg" width="226" height="170"></td>
         <td><img src="../image/register2.jpg" width="740" height="170"></td>
       </tr>
     </table>
   </td></tr>
  </table>
  <div class="left">
    <table width="215" border="0" cellspacing="8" cellpadding="0">
     <tr>
       <td height="58" width="215" background="../image/register3.jpg" style="font-family:华文彩云; font-size:30px;" align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;会员注册</td>
     </tr>
     <tr>
       <td align="center">
        <table width="205" border="0" cellspacing="8" cellpadding="0">
         <tr>
          <td height="35" background="../image/register4.jpg" align="center" class="fontstyle1"><a href="reg.asp" class="channel1">普通会员注册</a></td>
         </tr>
         <tr><td><hr></td></tr>
         <tr>
          <td height="35" background="../image/register4.jpg" align="center" class="fontstyle1"><a href="register.asp" class="channel1">组织会员注册</a></td>
         </tr>
         <tr><td><hr></td></tr>
        </table>
       </td>
     </tr>
   </table>
   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  </div>
  <div class="right">
   <form action="reg_pro.asp" method="post" name="reg">
   <table width="610" border="0" cellspacing="12" cellpadding="0">
    <tr>
     <td height="40" colspan="3" align="left">
     <table width="196" border="0" cellspacing="0" cellpadding="0">
      <tr><td align="left" height="38" background="../image/all.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会员注册</td></tr>
     </table>
     </td>
    </tr>
    <tr>
      <td colspan="3"  style="font-size:14px;">（说明： "<span style="color:#C8000B;">*</span>"项目必须填写）</td>
    </tr>
    <tr>
      <td colspan="3"> 
        <table align="center" width="530" border="1" bordercolor="#666666" style="border-collapse:collapse;" cellspacing="0" cellpadding="0" class="tablestyle">
         <tr bgcolor="#548DD4">
          <td width="230" height="30" align="center"><span style="color:#FFF"><strong>项目（Items）</strong></span></td>
          <td width="300" align="center"><span style="color:#FFF"><strong>内容（Contents）</strong></span></td>
         </tr>
         <tr>
          <td align="center"><span style="color:#C8000B;">*</span>企业名称:</td>
          <td align="left"><input type="text" name="qname" value="<%= Session("qname") %>" size=28></td>
        </tr>
         <tr>
           <td align="center"><span style="color:#C8000B;">*</span>登录名：</td>
           <td align="left" ><input type="text" name="rname" value="<%= Session("rname") %>" size=28>
           <span style="color:#C8000B;">可用</span>
           </td>
         </tr>
         <tr>
           <td align="center"><span style="color:#C8000B;">*</span>登录密码：</td>
           <td align="left" ><input type="password" name="password" value="<%= Session("pwd") %>" size=30></td>
         </tr>
         <tr>
           <td align="center"><span style="color:#C8000B;">*</span>密码确认：</td>
           <td align="left" ><input type="password" name="repassword" value="<%= Session("rpwd") %>" size=30></td>
         </tr>
         <tr>
           <td align="center"><span style="color:#C8000B;">*</span>业务种类（经营范围） </td>
           <td align="left" ><input type="text" name="kind" value="<%= Session("kind") %>" size=28></td>
         </tr>
         <tr>
           <td align="center">企业负责人（或法人）姓名</td>
           <td align="left" ><input type="text" name="legalp" value="<%= Session("legalp") %>" size=28></td>
         </tr>
         <tr>
           <td align="center"><span style="color:#C8000B;">*</span>企业地址 </td>
           <td align="left" ><input type="text" name="address" value="<%= Session("address") %>" size=28></td>
         </tr>
         <tr>
           <td align="center"><span style="color:#C8000B;">*</span>企业网址 </td>
           <td align="left" ><input type="text" name="website" value="<%= Session("website") %>" size=28></td>
         </tr>
         <tr>
           <td align="center">最近一年年营业额 </td>
           <td align="left" ><input type="text" name="amount" value="<%= Session("amount") %>" size=28></td>
         </tr>
         <tr>
           <td align="center">主要产品</td>
           <td align="left" ><input type="text" name="product" value="<%= Session("product") %>" size=28></td>
         </tr>
         <tr>
           <td align="center"><span style="color:#C8000B;">*</span>员工总人数 </td>
           <td align="left" ><input type="text" name="sum" value="<%= Session("sum") %>" size=28></td>
         </tr>
        <tr>
          <td align="center"><span style="color:#C8000B;">*</span>联系人姓名:</td>
          <td align="left">
            <input type="text" name="lname" value="<%= Session("lname") %>" size=28>
          </td>
        </tr>
        <tr>
          <td align="center"><span style="color:#C8000B;">*</span>联系人职务:</td>
          <td align="left">
            <input type="text" name="job" value="<%= Session("job") %>" size=28>
          </td>
        </tr>
        <tr>
          <td align="center"><span style="color:#C8000B;">*</span>联系人电话:</td>
          <td align="left">
            <input type="text" name="phone" value="<%= Session("phone") %>" size=28>
          </td>
        </tr>
        <tr>
          <td align="center"><span style="color:#C8000B;">*</span>联系人手机:</td>
          <td align="left">
            <input type="text" name="cellphone" value="<%= Session("cellphone") %>" size=28>
          </td>
        </tr>
        <tr>
          <td align="center"><span style="color:#C8000B;">*</span>联系人E-mail:</td>
        <td align="left">
          <input type="text" name="email" value="<%= Session("email") %>" size=28>
        </td>
      </tr>
   </table>
   <tr>
     <td width="250" align="right"><img src="../image/submit.jpg" width="50" height="23" onClick="javascript:reg.submit()"></td>
     <td width="100" align="center">&nbsp;</td>
     <td width="250" align="left"><img src="../image/reset.jpg" width="50" height="23" onClick="javascript:reg.reset()"></td>
   </tr>
   <tr>
     <td colspan="3"></td>
   <tr>
     <td colspan="3"></tr></table>
   </form>
  </div>
  <div class="clear">&nbsp;</div>
  <!--#include file="../bottom_.asp" -->
 </div>
</center>
</body>
</html>