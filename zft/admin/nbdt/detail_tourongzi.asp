<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Ͷ��������</title>
<link href="../../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<%  
   Set conn=Server.CreateObject("ADODB.Connection")
   Providerstr="Driver={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("../../Database/ע����Ϣ.mdb")
   conn.Open Providerstr
   Dim id
   id=Request("id")
   Dim com
   com="Select * from Ͷ���� where ID="&id&""
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
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr>
      <td width="25">&nbsp;</td>
      <td width="567">
        <table width="192" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" height="36" background="../../image/news3.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ͷ��������</td></tr>
          </table>
        </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td class="fontstyle1">&nbsp;&nbsp;&nbsp;&nbsp;��ϸ��Ϣ<hr></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center" width="567">
<table width="540" border="1" bordercolor="#666666" style="border-collapse:collapse;" cellspacing="0" cellpadding="0" class="tablestyle">
        <tr bgcolor="#548DD4">
          <td width="200" height="30" align="center"><span style="color:#FFF"><strong>��Ŀ��Items��</strong></span></td>
          <td width="334" align="center"><span style="color:#FFF"><strong>���ݣ�Contents��</strong></span></td>
        </tr>
        <tr>
          <td align="center" height="22"><span style="color:#C8000B;">*</span>��ҵ����:</td>
          <td align="left"><%= rs.fields(1).value %></td>
        </tr>
        <tr>
          <td align="center" height="22"><span style="color:#C8000B;">*</span>��ϵ������:</td>
          <td align="left"><%= rs.fields(2).value %></td>
        </tr>
        <tr>
          <td align="center" height="22"><span style="color:#C8000B;">*</span>��ϵ��ְ��:</td>
          <td align="left"><%= rs.fields(3).value %></td>
        </tr>
        <tr>
          <td align="center" height="22"><span style="color:#C8000B;">*</span>��ϵ�˵绰:</td>
          <td align="left"><%= rs.fields(4).value %></td>
        </tr>
        <tr>
          <td align="center" height="22">��ϵ���ֻ�:</td>
          <td align="left"><%= rs.fields(5).value %></td>
        </tr>
        <tr>
          <td align="center" height="22"><span style="color:#C8000B;">*</span>��ϵ��E-mail:</td>
        <td align="left"><%= rs.fields(6).value %></td>
      </tr>
      <tr>
        <td height="170" align="center"><span style="color:#C8000B;">*</span>����Ĵ�ŷ���:</td>
        <td valign="top">
        <%  If rs.fields(7).value
		
		
		%>
        </td>
        </tr>
      <tr>
        <td height="66" align="center">������˵����150�����ڣ�:</td>
        <td align="left" valign="top"><%= rs.fields(16).value %></td>
        </tr>
    </table>      </td>
    </tr>
  </table>
    
  </div>
  <div class="clear">&nbsp;</div>
 <div class="bottom"><!--#include file="../../bottom_.asp" --></div>
 </div>
</center>
</body>
</html>