<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��¼����</title>
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
	 com="Select mID,password from ����Ա where mID='"&manager&"' and password='"&pwd&"'"
	Set rs=conn.Execute(com)
	If (manager<>"" and pwd<>"") Then
	   If rs.Bof or rs.Eof Then
	      Response.Write("<script language=javascript>alert('����Ա�ʺŻ����벻��ȷ��');javascript:history.go(-1)</script>")
		  Response.End
	   End If
    Else
	   Response.Write("<script language=javascript>alert('����Ա�ʺš����벻��Ϊ�գ�');javascript:history.go(-1)</script>")
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
