<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ڲ���̬</title>
<link href="../../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<%  
   Set conn=Server.CreateObject("ADODB.Connection")
   Providerstr="Driver={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("../../Database/ע����Ϣ.mdb")
   conn.Open Providerstr
   Dim com
   com="Select * from ��������"
   Set rs=conn.Execute(com, recordsAffected, adcmdtext)
     If rs.Bof or rs.Eof  Then
       Response.Write ("<script language=javascript>alert('û�������Ϣ��');javascript:history.go(-1)</script>")
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
            <td align="left" height="36" background="../../image/news3.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ͷ��������</td></tr>
          </table>
        </td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>
  </table>
    <table width="600" border="0" cellspacing="5" cellpadding="5" align="center" class="fontstyle1">
      <tr>
        <td width="104" align="center">��ҵ����</td>
        <td width="104" align="center">��ϵ������</td>
        <td width="104" align="center">��ϵ��ְ��</td>
        <td width="104" align="center">��֯����</td>
        <td width="104" align="center">��ϸ��Ϣ</td>
      </tr>
<%	 While Not rs.eof
       Response.Write "<tr>"
       Response.Write "<td align='center'>" & rs("qname") & "</td>"
	   Response.Write "<td align='center'>" & rs("lname") & "</td>"
	   Response.Write "<td align='center'>" & rs("zhiwu") & "</td>"
	   Response.Write "<td align='center'>" & rs("oname") & "</td>"
%>        <td>��<a href="../detail_tourongzi.asp?id=<%= rs("ID") %>" class="channel3" align="center">�鿴��ϸ����</a></td>
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