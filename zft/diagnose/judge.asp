<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>&ldquo;��&rdquo;���</title>
</head>

<body>
<%  Dim rname
    rname=Session("rname")
    If rname<>"" Then
	  Response.Redirect "diagnose_in.asp"
	  Response.End
	Else
	  Response.Write("<script language=javascript>alert('�����ǻ�Ա�����ȵ�¼������������ǻ�Ա����ע�ᣡ��');javascript:history.go(-1)</script>")
	  Response.End
	End If
%>
</body>
</html>
