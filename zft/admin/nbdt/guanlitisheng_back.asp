<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>内部动态</title>
<link href="../../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<%  
   Set conn=Server.CreateObject("ADODB.Connection")
   Providerstr="Driver={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("../../Database/注册信息.mdb")
   conn.Open Providerstr
   Dim com
   com="Select * from 管理提升"
   Set rs=conn.Execute(com, recordsAffected, adcmdtext)
     If rs.Bof or rs.Eof  Then
       Response.Write ("<script language=javascript>alert('没有相关信息！');javascript:history.go(-1)</script>")
       Response.End
     End If
%>
<body>
<center>
 <div class="mainstyle">
 <!--#include file="top.asp" -->
 <table width="970" border="0" cellspacing="2" cellpadding="2">
   <tr><td class="service">
     <table width="970" border="0" cellpadding="0" cellspacing="0">
       <tr>
         <td><img src="../../image/news1.jpg" width="230" height="170"></td>
         <td><img src="../../image/news2.jpg" width="740" height="170"></td>
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
          <tr>
            <td align="left" height="36" background="../../image/news3.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;投融资需求</td></tr>
          </table>
        </td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>
  </table>
    <table width="600" border="0" cellspacing="5" cellpadding="5" align="center" class="fontstyle1">
      <tr>
        <td width="104" align="center">企业名称</td>
        <td width="104" align="center">联系人姓名</td>
        <td width="104" align="center">联系人职务</td>
        <td width="104" align="center">组织名称</td>
        <td width="104" align="center">详细信息</td>
      </tr>
<%	 While Not rs.eof
       Response.Write "<tr>"
       Response.Write "<td align='center'>" & rs("qname") & "</td>"
	   Response.Write "<td align='center'>" & rs("lname") & "</td>"
	   Response.Write "<td align='center'>" & rs("zhiwu") & "</td>"
	   Response.Write "<td align='center'>" & rs("oname") & "</td>"
%>        <td>。<a href="../detail_tourongzi.asp?id=<%= rs("ID") %>" class="channel3" align="center">查看详细资料</a></td>
<%          rs.movenext
	   Response.Write "</tr>"
     Wend
%>
    </table>
  </div>
  <div class="clear">&nbsp;</div>
 <div class="bottom"><!--#include file="../../bottom_.asp" --></div>
 </div>
</center>
</body>
</html>