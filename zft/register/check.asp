<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>

<body>
<%
    Dim qname
    qname=Request.Form("qname")
	Session("qname")=qname
	Dim rname
	rname=Request.Form("rname")
	Session("rname")=rname
	Dim pwd
	pwd=Request.Form("password")
	Session("pwd")=pwd
	Dim rpwd
	rpwd=Request.Form("repassword")
	Session("rpwd")=rpwd
	Dim kind
	kind=Request.Form("kind")
	Session("kind")=kind
	Dim legalp
	legalp=Request.Form("legalp")
	Session("legalp")=legalp
	Dim address
	address=Request.Form("address")
	Session("address")=address
	Dim website
	website=Request.Form("website")
	Session("website")=website
	Dim amount
	amount=Request.Form("amount")
	Session("amount")=amount
	Dim product
	product=Request.Form("product")
	Session("product")=product
	Dim sum 
	sum=Request.Form("sum")
	Session("sum")=sum 
	Dim lname
	lname=Request.Form("lname")
	Session("lname")=lname
	Dim job
	job=Request.Form("job")
	Session("job")=job
	Dim phone
	phone=Request.Form("phone")
	Session("phone")=phone
	Dim cellphone
	cellphone=Request.Form("cellphone")
	Session("cellphone")=cellphone
	Dim email
	email=Request.Form("email")
	Session("email")=email
	Dim oname
	oname=Session("oname")
    If (qname<>"" and rname<>"" and pwd<>"" and rpwd<>"" and kind<>"" and address<>"" and website<>"" and sum<>"" and lname<>"" and job<>"" and phone<>"" and cellphone<>"" and email<>"") Then
      Response.Redirect "reg_pro.asp"
	  Response.End
	End If
%>
<!--#include file="../Database/conn.asp" -->
<%  If rname="" Then 
	  Response.Write ("<script language=javascript>alert('请填写登录名！');javascript:history.go(-1)</script>")
	  Response.End
	End If
    com="select * from 注册 where rname='"&rname&"'"
    Set rs=conn.Execute(com)  
	  If len(rname)<"7" Then
	  	Response.Write ("<script language=javascript>alert('登录名必须在6位以上！');javascript:history.go(-1)</script>")
	  	Response.End
	  End If
	  If not(rs.Eof) or not(rs.Bof) Then
	  	Response.Write ("<script language=javascript>alert('该登录名已被使用，请重新注册！');javascript:history.go(-1)</script>")
		Response.End
	  End If
	Response.Redirect "reg_c.asp"
	Response.End
	rs.close
	Set rs=nothing
	conn.close
	Set conn=nothing
%>
</body>
</html>
