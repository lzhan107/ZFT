<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body>
<%  Dim zzdm
    zzdm=Request.Form("zzdm")
%>
<!--#include file="../Database/conn.asp" -->
<%  Dim com
	 com="Select oname,ocode from ��֯���� where ocode='"&zzdm&"'"
    Set rs=conn.Execute(com, recordsAffected, adcmdtext)
    If (zzdm<>"") Then
	   If rs.Bof or rs.Eof Then
	      Response.Write("<script language=javascript>alert('��֯���벻��ȷ��');javascript:history.go(-1)</script>")
		  Response.End
	   End If
    Else
	   Response.Write("<script language=javascript>alert('��֯���벻��Ϊ�գ�');javascript:history.go(-1)</script>")
	   Response.End
	End If
	Session("oname")=rs(0).value
    rs.close
	Set rs=nothing
	conn.close
	Set conn=nothing
	Response.Redirect "reg.asp"
	Response.End
%>
</body>
</html>
