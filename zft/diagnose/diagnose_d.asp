<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>&ldquo;��&rdquo;���</title>
</head>

<body>
<%  
    Dim agr
    agr=Request.Form("agree")
    If agr=1 Then  %>
       <script language-javascript>window. location= 'http://localhost/zhongft/diagnose/���ԡ����.doc';</script>
<%  Else 
      Response.Write ("<script language=javascript>alert('��ѡ��ͬ��Э�����');javascript:history.go(-1);</script>")
      Response.End
    End If
	%>
</body>
</html>



