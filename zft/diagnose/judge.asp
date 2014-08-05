<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>&ldquo;自&rdquo;诊断</title>
</head>

<body>
<%  Dim rname
    rname=Session("rname")
    If rname<>"" Then
	  Response.Redirect "diagnose_in.asp"
	  Response.End
	Else
	  Response.Write("<script language=javascript>alert('您不是会员，请先登录！（如果您不是会员请先注册！）');javascript:history.go(-1)</script>")
	  Response.End
	End If
%>
</body>
</html>
