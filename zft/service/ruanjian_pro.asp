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
	Dim str(21)
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
	str(12)=Request.Form("checkbox12")
	str(13)=Request.Form("checkbox13")
	str(14)=Request.Form("checkbox14")
	str(15)=Request.Form("checkbox15")
    str(16)=Request.Form("checkbox16")
	str(17)=Request.Form("checkbox17")
	str(18)=Request.Form("checkbox18")
	str(19)=Request.Form("checkbox19")
	str(20)=Request.Form("checkbox20")
	str(21)=Request.Form("checkbox21")
	For i=1 to 21
	  If str(i)="" Then
	    str(i)=0
	  End If
	Next
	qita=Request.Form("qitajiandanshuoming")
	Session("fuwu")="软件信息化需求"
 %>
 <!--#include file="../Database/conn.asp" -->
 <% comm="Select qname from 软件信息化 where qname='"&qname&"'"
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
	If(str(1)=1 or str(2)=1 or str(3)=1 or str(4)=1 or str(5)=1 or str(6)=1 or str(7)=1 or str(8)=1 or str(9)=1 or str(10)=1 or str(11)=1or str(12)=1 or str(13)=1 or str(14)=1 or str(15)=1 or str(16)=1 or str(17)=1 or str(18)=1 or str(19)=1 or str(20)=1 or str(21)=1)then
      Dim sql
	  sql="insert into 软件信息化(qname,lname,zhiwu,phone,cellphone,email,xinxihuaguihua,renliziyuanruanjian,kehuguanxiruanjian,dianzishangwuruanjian,qiyeziyuanjihua,yewuliuchengguanli,gongyinglianwuliu,jingyishengchanguanliruanjian,zhishiguanliruanjian,xiangmuguanliruanjian,chanpinquanzhouqiguanli,bangongxitong,qiyezichanguanliruanjian,zhuanyejiagongzhizaoruanjian,zhanlueguanliruanjian,zhiliangguanliruanjian,caikuaishuiwuruanjian,qiyewangzhanjianshe,anquanjiankongxitong,shipinghuiyi,qita,qitajiandanshuoming)" & "values('"&qname&"','"&lname&"','"&zhiwu&"','"&phone&"','"&cellphone&"','"&email&"','"&str(1)&"','"&str(2)&"','"&str(3)&"','"&str(4)&"','"&str(5)&"','"&str(6)&"','"&str(7)&"','"&str(8)&"','"&str(9)&"','"&str(10)&"','"&str(11)&"','"&str(12)&"','"&str(13)&"','"&str(14)&"','"&str(15)&"','"&str(16)&"','"&str(17)&"','"&str(18)&"','"&str(19)&"','"&str(20)&"','"&str(21)&"','"&qita&"')"
		Dim Comm
	 Set Comm=Server.Createobject("ADODB.Command")
	 Set Comm.ActiveConnection=conn
	 Comm.CommandText=sql
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
