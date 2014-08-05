<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>注销</title>
</head>

<body>
<%  
    Session("rname")=""
	Session("oname")=""
    Response.Redirect "index.asp"
    Response.End
%>
</body>
</html>
