<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Ͷ����ƽ̨</title>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<!--#include file="../Database/conn.asp" -->
<% 
   com="Select id,mingcheng,fangshi,quyu,guimo,fdate from m�ʽ���Ϣ"
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
       <td height="58" width="205" background="../image/invest/title.jpg" style="font-family:���Ĳ���; font-size:30px; color:#548DD4" align="center" valign="middle"><p>�ʽ���Ϣ</p></td>
       <td width="90">&nbsp;</td><td colspan="4">&nbsp;</td>
       </tr>
     <tr>
       <td>&nbsp;</td>
       <td width="90">&nbsp;</td>
       <td width="180" height="35" align="center" background="../image/invest/all_link.jpg" class="fontstyle1"><a href="invest_message.asp" class="channel1">&nbsp;&nbsp;&nbsp;�ʽ���Ϣ���</a></td>
       <td width="100">&nbsp;</td>
       <td width="180" height="35" align="center" background="../image/invest/all_link.jpg" class="fontstyle1"><a href="invest_message_iss.asp" class="channel1">&nbsp;&nbsp;&nbsp;�ʽ���Ϣ����</a></td>
       <td width="117">&nbsp;</td>
     </tr>
     <tr>
       <td colspan="6" align="center">
       <table width="891" border="0" cellspacing="2" cellpadding="2" style="border-bottom:#649FD9 solid 1px; border-top:#649FD9 solid 1px; font-size:14px;">
         <tr style="font-size:14px; color:#6E8CBE">
           <td width="180" align="center" height="28"><strong>�ʽ�����</strong>
           <td width="140" align="center"><strong>��Ͷ�ʷ�ʽ</strong></td>
           <td width="140" align="center"><strong>��Ͷ�ʵ���</strong></td>
           <td width="122" align="center"><strong>��Ͷ�ʶ��</strong></td>
           <td width="131" align="center"><strong>��Ϣ����ʱ��</strong></td>
           <td width="140" align="center"><strong>��ϸ����</strong></td>
         </tr>
<%	 While Not rs.eof
       Response.Write "<tr>"
	     Response.Write "<td align='center'>" & rs("mingcheng") & "</td>"
		 Response.Write "<td align='center'>" & rs("fangshi") & "</td>"
		 Response.Write "<td align='center'>" & rs("quyu") & "</td>"
		 Response.Write "<td align='center'>" & rs("guimo") & "</td>"
		 Response.Write "<td align='center'>" & rs("fdate") & "</td>"
%>       <td align="center"><a href="detail_money.asp?id=<%= rs("id") %>" class="channel3">�鿴��ϸ��Ϣ</a></td>
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
