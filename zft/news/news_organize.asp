<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<!--#include file="../Database/conn.asp" -->
<%
   Dim com
   com="Select ID,theme,zdate from 组织信息"
   Set rs=conn.Execute(com, recordsAffected, adcmdtext)
     If rs.Bof or rs.Eof  Then
       Response.Write ("<script language=javascript>alert('没有学习活动信息！');javascript:history.go(-1)</script>")
       Response.End
     End If
%>
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
         <td><img src="../image/news1.jpg" width="230" height="170"></td>
         <td><img src="../image/news2.jpg" width="740" height="170"></td>
       </tr>
     </table>
   </td></tr>
 </table>
  <div class="left">
     <% If Session("rname")="" Then  %>
    <!--#include file="news.asp" -->
   <% Else %>
    <!--#include file="new.asp" -->
   <% End If %>
  </div>
  <div class="right">
    <table width="620" border="0" cellpadding="4" cellspacing="4">
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>
        <table width="192" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" height="36" background="../image/news3.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;组织信息发布</td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center" height="30" valign="bottom"><img src="../image/news4.jpg" width="574" height="12"></td>
      </tr>
      <tr>
        <td colspan="2" align="center">
        <table width="590" border="0" cellpadding="4" cellspacing="4" style="font-size:13px; color:#484848; font-family:Tahoma;">
      <tr>
        <td width="482" align="left" style="font-size:13px; color:#999;">&nbsp;主题</td>
        <td width="75" align="right" style="font-size:13px; color:#999;">发布时间&nbsp;&nbsp;&nbsp;</td>
      </tr>
<%	 While Not rs.eof
       Response.Write "<tr>"
%>        <td>。<a href="detail_zz.asp?id=<%= rs("ID") %>" class="channel3"><% Response.Write rs("theme")  %></a></td>
<%        Response.Write "<td>" & rs("zdate") & "</td>"
         rs.movenext
	   Response.Write "</tr>"
     Wend
%>
        </table>
        </td>
      </tr>
    </table>
  </div>
  <div class="clear">&nbsp;</div>
  <div class="bottom"><!--#include file="../bottom_.asp" --></div>
 </div>
</center>
</body>
</html>