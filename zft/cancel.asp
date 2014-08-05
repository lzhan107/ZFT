<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>注销</title>
</head>

<body>
<%  Dim web
    web=Request.ServerVariables("HTTP_REFERER")
    Session("rname")=""
	Session("oname")=""
    Response.Redirect web
    Response.End
%>
</body>
</html>
