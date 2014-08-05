<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>投融资平台</title>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<!--#include file="../Database/conn.asp" -->
<% 
   com="Select id,mingcheng,fangshi,quyu,guimo,fdate from m资金信息"
   Set rs=conn.Execute(com, recordsAffected, adcmdtext)
%>
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
         <td><img src="../image/invest/m_money.jpg" width="963" height="170"></td>
         </tr>
     </table>
   </td></tr>
 </table>
  <div class="series">
    <table width="900" border="0" cellspacing="4" cellpadding="0" align="center">
     <tr>
       <td height="58" width="205" background="../image/invest/title.jpg" style="font-family:华文彩云; font-size:30px; color:#548DD4" align="center" valign="middle"><p>资金信息</p></td>
       <td width="90">&nbsp;</td><td colspan="4">&nbsp;</td>
       </tr>
     <tr>
       <td>&nbsp;</td>
       <td width="90">&nbsp;</td>
       <td width="180" height="35" align="center" background="../image/invest/all_link.jpg" class="fontstyle1"><a href="invest_message.asp" class="channel1">&nbsp;&nbsp;&nbsp;资金信息浏览</a></td>
       <td width="100">&nbsp;</td>
       <td width="180" height="35" align="center" background="../image/invest/all_link.jpg" class="fontstyle1"><a href="invest_message_iss.asp" class="channel1">&nbsp;&nbsp;&nbsp;资金信息发布</a></td>
       <td width="117">&nbsp;</td>
     </tr>
     <tr>
       <td colspan="6" align="center">
       <table width="891" border="0" cellspacing="2" cellpadding="2" style="border-bottom:#649FD9 solid 1px; border-top:#649FD9 solid 1px; font-size:14px;">
         <tr style="font-size:14px; color:#6E8CBE">
           <td width="180" align="center" height="28"><strong>资金方名称</strong>
           <td width="140" align="center"><strong>拟投资方式</strong></td>
           <td width="140" align="center"><strong>拟投资地区</strong></td>
           <td width="122" align="center"><strong>拟投资额度</strong></td>
           <td width="131" align="center"><strong>信息发布时间</strong></td>
           <td width="140" align="center"><strong>详细资料</strong></td>
         </tr>
<%	 While Not rs.eof
       Response.Write "<tr>"
	     Response.Write "<td align='center'>" & rs("mingcheng") & "</td>"
		 Response.Write "<td align='center'>" & rs("fangshi") & "</td>"
		 Response.Write "<td align='center'>" & rs("quyu") & "</td>"
		 Response.Write "<td align='center'>" & rs("guimo") & "</td>"
		 Response.Write "<td align='center'>" & rs("fdate") & "</td>"
%>       <td align="center"><a href="detail_money.asp?id=<%= rs("id") %>" class="channel3">查看详细信息</a></td>
<%        
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
  <div class="bottom"><!--#include file="bottom.asp" --></div>
</div>
</center>
</body>
</html>
