<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��¼����</title>
</head>

<body>
<%  Dim web
    web=Request.ServerVariables("HTTP_REFERER")
    Dim rnane
    rname=Request.Form("rname")
	Dim pwd
	pwd=Request.Form("password")
	  
    Set conn=Server.CreateObject("ADODB.Connection")
    Providerstr="Driver={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("Database/ע����Ϣ.mdb")
    conn.Open Providerstr
    Dim com
	 com="Select rname,password,oname from ע�� where rname='"&rname&"' and password='"&pwd&"'"
	Set rs=conn.Execute(com)
	If (rname<>"" and pwd<>"") Then
	   If rs.Bof or rs.Eof Then
	      Response.Write("<script language=javascript>alert('��¼�������벻��ȷ��');javascript:history.go(-1)</script>")
		  Response.End
	   End If
	   Session("rname")=rname
	   Session("oname")=rs("oname")
    Else
	   Response.Write("<script language=javascript>alert('��¼�������벻��Ϊ�գ�');javascript:history.go(-1)</script>")
	   Response.End
	End If
    rs.close
	Set rs=nothing
	conn.close
	Set conn=nothing
	Response.Redirect web
	Response.End
%>
</body>
</html>
