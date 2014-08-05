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
	Dim str(11)
	str(1)=Request.Form("checkbox1")
	str(2)=Request.Form("checkbox2")
	str(3)=Request.Form("checkbox3")
	str(4)=Request.Form("checkbox4")
	str(5)=Request.Form("checkbox5")
	str(6)=Request.Form("checkbox6")
    str(7)=Request.Form("checkbox7")
	str(8)=Request.Form("checkbox8")
	str(9)=Request.Form("checkbox9")
	str(10)=Request.Form("checkbox10")
	str(11)=Request.Form("checkbox11")
	For i=1 to 10
	  If str(i)="" Then
	    str(i)=0
	  End If
	Next
	qitajiandanshuoming=Request.Form("qitajiandanshuoming")
	Session("fuwu")="法律服务需求"
%>
<!--#include file="../Database/conn.asp" -->
<%  comm="Select qname from 法律服务 where qname='"&qname&"'"
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
	If(email="") then
    Response.Write("<script language=javascript>alert('抱歉！请您填写联系人email！');javascript:history.go(-1)</script>")
	Response.End
	end if
	If(str(1)=1 or str(2)=1 or str(3)=1 or str(4)=1 or str(5)=1 or str(6)=1 or str(7)=1 or str(8)=1 or str(9)=1 or str(10)=1 or str(11)=1)then
	
      Dim sqlstr
	    sqlstr="insert into 法律服务(qname,lname,zhiwu,phone,cellphone,email,gongsizhengquanlingyu,zhishichanquan,jianshegongchenghefangdichan,jinrongherongzi,renliziyuanhelaodongfa,qiyefalvfengxianfangfanyukongzhi,haishanghaishi,shewaifalv,maoyifalvshiwu,changnianlvshiguwen,qita,qitajiandanshuoming)" & "values('"&qname&"','"&lname&"','"&zhiwu&"','"&phone&"','"&cellphone&"','"&email&"','"&str(1)&"','"&str(2)&"','"&str(3)&"','"&str(4)&"','"&str(5)&"','"&str(6)&"','"&str(7)&"','"&str(8)&"','"&str(9)&"','"&str(10)&"','"&str(11)&"','"&qitajiandanshuoming&"')"
	  Dim Comm
	  Set Comm=Server.Createobject("ADODB.Command")
	  Set Comm.ActiveConnection=conn
	  Comm.CommandText=sqlstr
	  Comm.Execute aa,,1
	    If aa=1 Then
	       Response.Redirect "tjcg.asp"
		   Response.End
	    End If	
	Else
	  Response.Write("<script language=javascript>alert('抱歉！请您至少选择一项需求的大概方向！');javascript:history.go(-1)</script>")
	  Response.End
	end if
	conn.close
	Set conn=nothing	
  %>
</body>
</html>
