<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>

<body>
<% 
    qname=Request.Form("qname")
    lname=Request.Form("lname")
    zhiwu=Request.Form("zhiwu")
	phone=Request.Form("phone")
	cellphone=Request.Form("cellphone")
	email=Request.Form("email")
	qitajiandanshuoming=Request.Form("qitajiandanshuoming")
	Session("fuwu")="其它服务需求"
%>
<!--#include file="../Database/conn.asp" -->
<%  comm="Select qname from 其它服务 where qname='"&qname&"'"
    Set rs=conn.Execute(comm)
	If not(rs.Eof) or not(rs.Bof) Then
	Response.Write("<script language=javascript>alert('抱歉！该企业名称已存在！');javascript:history.go(-1)</script>")
    Response.End
	End If
    If(qname="") then
    Response.Write("<script language=javascript>alert('抱歉！请您填写企业名称！');javascript:history.go(-1)</script>")
	Response.End
	end if
	If(lname="") then
    Response.Write("<script language=javascript>alert('抱歉！请您填写联系人姓名！');javascript:history.go(-1)</script>")
	Response.End
	end if
	If(zhiwu="") then
    Response.Write("<script language=javascript>alert('抱歉！请您填写联系人职务！');javascript:history.go(-1)</script>")
	Response.End
	end if
	If(phone="") then
    Response.Write("<script language=javascript>alert('抱歉！请您填写联系人电话！');javascript:history.go(-1)</script>")
	Response.End
	end if
	If(qitajiandanshuoming="") then
    Response.Write("<script language=javascript>alert('抱歉！请您填写其它简单说明！');javascript:history.go(-1)</script>")
	Response.End
	end if
	If(email="") then
    Response.Write("<script language=javascript>alert('抱歉！请您填写联系人email！');javascript:history.go(-1)</script>")
	Response.End
	end if
    Dim sqlstr
	    sqlstr="insert into 其它服务(qname,lname,zhiwu,phone,cellphone,email,qitajiandanshuoming)" & "values('"&qname&"','"&lname&"','"&zhiwu&"','"&phone&"','"&cellphone&"','"&email&"','"&qitajiandanshuoming&"')"
		Dim Comm
	Set Comm=Server.Createobject("ADODB.Command")
	Set Comm.ActiveConnection=conn
	Comm.CommandText=sqlstr
	Comm.Execute aa,,1
	  If aa=1 Then
	     Response.Redirect "tjcg.asp"
		 Response.End
	  End If
	conn.close
	Set conn=nothing
%>
</body>
</html>
