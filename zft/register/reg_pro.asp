<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body>
<%
    Dim qname
    qname=Request.Form("qname")
	Dim rname
	rname=Request.Form("rname")
	Dim pwd
	pwd=Request.Form("password")
	Dim rpwd
	rpwd=Request.Form("repassword")
	Dim kind
	kind=Request.Form("kind")
	Dim legalp
	legalp=Request.Form("legalp")
	Dim address
	address=Request.Form("address")
	Dim website
	website=Request.Form("website")
	Dim amount
	amount=Request.Form("amount")
	Dim product
	product=Request.Form("product")
	Dim sum 
	sum=Request.Form("sum")
	Dim lname
	lname=Request.Form("lname")
	Dim job
	job=Request.Form("job")
	Dim phone
	phone=Request.Form("phone")
	Dim cellphone
	cellphone=Request.Form("cellphone")
	Dim email
	email=Request.Form("email")
	Dim oname
	oname=Session("oname")
%>
<!--#include file="../Database/conn.asp" -->
<%
com="select * from ע�� where rname='"&rname&"'"
Set rs=Conn.Execute(com)
If (qname<>"" and rname<>"" and pwd<>"" and rpwd<>"" and kind<>"" and address<>"" and website<>"" and sum<>"" and lname<>"" and job<>"" and phone<>"" and cellphone<>"" and email<>"") Then
	  If len(rname)<"7" Then
	  	Response.Write ("<script language=javascript>alert('��¼��������6λ���ϣ�');javascript:history.go(-1)</script>")
	  	Response.End
	  End If
	  If not(rs.Eof) or not(rs.Bof) Then
	  	Response.Write ("<script language=javascript>alert('�õ�¼���ѱ�ʹ�ã�������ע�ᣡ');javascript:history.go(-1)</script>")
		Response.End
	  End If
	  If pwd<>rpwd Then
	    Response.Write ("<script language=javascript>alert('������������벻һ�£�');javascript:history.go(-1)</script>")
		Response.End
	  End If
	  Dim isEmail
		isEmail="false"
		For i=1 to len(email)
			If mid(email,i,1)="@" Then
				isEmail="true"
				Exit for
			End if
		Next
		If isEmail="false" Then
		  Response.Write ("<script language=javascript>alert('���䲻���ã�');javascript:history.go(-1)</script>")
		  Response.End
		End if
	  Dim sql
	  sql="insert into ע��(qname,rname,password,kind,legalp,address,website,amount,product,sum,lname,job,phone,cellphone,email,oname)" & "values('"&qname&"','"&rname&"','"&pwd&"','"&kind&"','"&legalp&"','"&address&"','"&website&"','"&amount&"','"&product&"','"&sum&"','"&lname&"','"&job&"','"&phone&"','"&cellphone&"','"&email&"','"&oname&"')"
	  Dim Comm
	  Set Comm=Server.CreateObject("ADODB.Command")
	  Set Comm.ActiveConnection=conn
	  Comm.Commandtext=sql
	  Comm.Execute aa,,1
	  If aa=1 Then
	     Response.Redirect "reg_success.asp"
		 Response.End
	  End If
Else
  Response.Write ("<script language=javascript>alert('��*�����������д��');javascript:history.go(-1)</script>")
  Response.End
End If
rs.close
Set rs=nothing
Conn.close
Set Conn=nothing
Session("qname")=""
Session("rname")=""
Session("pwd")=""
Session("rpwd")=""
Session("kind")=""
Session("legalp")=""
Session("address")=""
Session("website")=""
Session("amount")=""
Session("product")=""
Session("sum")=""
Session("lname")=""
Session("job")=""
Session("phone")=""
Session("cellphone")=""
Session("email")=""
Session("oname")=""
%>
</body>
</html>
