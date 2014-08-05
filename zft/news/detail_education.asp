<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>新闻中心</title>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<!--#include file="../Database/conn.asp" -->
<%
   Dim id
   id=Request("id")
   Dim com
   com="Select * from 学习活动 where ID="&id&""
   Set rs=conn.Execute(com, recordsAffected, adcmdtext)
     If rs.Bof or rs.Eof  Then
       Response.Write ("<script language=javascript>alert('没有学习活动动态！');javascript:history.go(-1)</script>")
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
            <td align="left" height="36" background="../image/news3.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学习活动动态发布</td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center" height="35" valign="middle"><img src="../image/news4.jpg" width="590" height="12"></td>
      </tr>
      <tr>
        <td colspan="2" align="center">
        <table width="590" border="1" bordercolor="#999999" cellpadding="4" cellspacing="4" style="border-collapse:collapse;">
      <tr>
        <td>
        <table border="0" width="569">
          <tr>
            <td align="center"><p style="font-size:20px; font-family:宋体;"><strong><%= rs("theme") %></strong></p></td>
          </tr>
          <tr>
            <td align="center"><p style="font-size:13px; color:#484848; font-family:Tahoma;"><a href="http://www.zft.com">http://www.zft.com</a>&nbsp;&nbsp;<%= rs("xdate") %>&nbsp;&nbsp;<%= rs("xtime") %></p></td>
          </tr>
          <tr>
            <td><pre style="font-size:13px; color:#484848; font-family:宋体; white-space: normal; word-wrap: break-word; height:480px; line-height:20px"><%= rs("xtext") %></pre></td>
          </tr>
        </table>
        </td>
        </tr>
        </table>
        </td>
      </tr>
    </table>
  </div>
  <div class="clear">&nbsp;</div>
  <!--#include file="../bottom_.asp" -->
 </div>
</center>
</body>
</html>