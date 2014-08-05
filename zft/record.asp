<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>登录处理</title>
</head>

<body>
<%  Dim web
    web=Request.ServerVariables("HTTP_REFERER")
    Dim rnane
    rname=Request.Form("rname")
	Dim pwd
	pwd=Request.Form("password")
	  
    Set conn=Server.CreateObject("ADODB.Connection")
    Providerstr="Driver={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("Database/注册信息.mdb")
    conn.Open Providerstr
    Dim com
	 com="Select rname,password,oname from 注册 where rname='"&rname&"' and password='"&pwd&"'"
	Set rs=conn.Execute(com)
	If (rname<>"" and pwd<>"") Then
	   If rs.Bof or rs.Eof Then
	      Response.Write("<script language=javascript>alert('登录名或密码不正确！');javascript:history.go(-1)</script>")
		  Response.End
	   End If
	   Session("rname")=rname
	   Session("oname")=rs("oname")
    Else
	   Response.Write("<script language=javascript>alert('登录名、密码不可为空！');javascript:history.go(-1)</script>")
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
