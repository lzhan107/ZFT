<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>&ldquo;自&rdquo;诊断</title>
</head>

<body>
<%  
    Dim agr
    agr=Request.Form("agree")
    If agr=1 Then  %>
       <script language-javascript>window. location= 'http://localhost/zhongft/diagnose/“自”诊断.doc';</script>
<%  Else 
      Response.Write ("<script language=javascript>alert('请选择同意协议条款！');javascript:history.go(-1);</script>")
      Response.End
    End If
	%>
</body>
</html>



