<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>登录处理</title>
</head>

<body>
<%  
    Dim manager
    manager=Request.Form("mID")
	Dim pwd
	pwd=Request.Form("pwd")
%>
<!--#include file="../Database/conn.asp" -->
<%	  
    Dim com
	 com="Select mID,password from 管理员 where mID='"&manager&"' and password='"&pwd&"'"
	Set rs=conn.Execute(com)
	If (manager<>"" and pwd<>"") Then
	   If rs.Bof or rs.Eof Then
	      Response.Write("<script language=javascript>alert('管理员帐号或密码不正确！');javascript:history.go(-1)</script>")
		  Response.End
	   End If
    Else
	   Response.Write("<script language=javascript>alert('管理员帐号、密码不可为空！');javascript:history.go(-1)</script>")
	   Response.End
	End If
    rs.close
	Set rs=nothing
	conn.close
	Set conn=nothing
	Response.Redirect "news_jj.asp"
	Response.End
%>
</body>
</html>
