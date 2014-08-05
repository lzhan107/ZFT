<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<%   Dim pname
     pname=Request.Form("pname")
	 Dim sex
	 sex=Request.Form("sex")
	 Dim birthday
	 birthday=Request.Form("birthday")
     Dim age
	 age=Request.Form("age")
     Dim pdate
     pdate=Request.Form("pdate")
     Dim period
     period=Request.Form("period")
     Dim str(30)
   str(1)=Request.Form("str1")
   str(2)=Request.Form("str2")
   str(3)=Request.Form("str3")
   str(4)=Request.Form("str4")
   str(5)=Request.Form("str5")
   str(6)=Request.Form("str6")
   str(7)=Request.Form("str7")
   str(8)=Request.Form("str8")
   str(9)=Request.Form("str9")
   str(10)=Request.Form("str10")
   str(11)=Request.Form("str11")
   str(12)=Request.Form("str12")
   str(13)=Request.Form("str13")
   str(14)=Request.Form("str14")
   str(15)=Request.Form("str15")
   str(16)=Request.Form("str16")
   str(17)=Request.Form("str17")
   str(18)=Request.Form("str18")
   str(19)=Request.Form("str19")
   str(20)=Request.Form("str20")
   str(21)=Request.Form("str21")
   str(22)=Request.Form("str22")
   str(23)=Request.Form("str23")
   str(24)=Request.Form("str24")
   str(25)=Request.Form("str25")
   str(26)=Request.Form("str26")
   str(27)=Request.Form("str27")
   str(28)=Request.Form("str28")
   str(29)=Request.Form("str29")
   str(30)=Request.Form("str30")
   Dim sum
   sum=Request.Form("sum")
   Dim sign
   sign=Request.Form("sign")
 %>
<!--#include file="file:///D|/Documents/毕业设计/DB/conn.asp" -->
<%  Com="select * from ATQ where pname='"&pname&"' and sex='"&sex&"' and birthday=#"&birthday&"# and pdate=#"&pdate&"#"
    Set RS=Conn.Execute(Com)
    If (pname<>"" and sex<>"" and birthday<>"" and pdate<>"" and period<>"") Then 
	  If not(RS.BOF) or not(RS.Eof) Then
	        Response.Write ("<script language=javascript charset='utf-8'>alert('该患者信息已存在，请勿重复录入！');javascript:history.go(-1)</script>")
		    Response.End 
	  End If
      Dim sqlstr
	  sqlstr="insert into ATQ(pname,sex,birthday,age,pdate,period,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,score,sign)" & "values('"&pname&"','"&sex&"','"&birthday&"','"&age&"','"&pdate&"','"&period&"','"&str(1)&"','"&str(2)&"','"&str(3)&"','"&str(4)&"','"&str(5)&"','"&str(6)&"','"&str(7)&"','"&str(8)&"','"&str(9)&"','"&str(10)&"','"&str(11)&"','"&str(12)&"','"&str(13)&"','"&str(14)&"','"&str(15)&"','"&str(16)&"','"&str(17)&"','"&str(18)&"','"&str(19)&"','"&str(20)&"','"&str(21)&"','"&str(22)&"','"&str(23)&"','"&str(24)&"', '"&str(25)&"','"&str(26)&"','"&str(27)&"','"&str(28)&"','"&str(29)&"','"&str(30)&"','"&sum&"','"&sign&"')"
      Dim Comm
        Set Comm=Server.CreateObject("ADODB.Command")
	    Set Comm.ActiveConnection=Conn
        Comm.Commandtext=sqlstr
      Comm.Execute aa,,1
	    If aa=1 Then 
	       Response.redirect "rBDI.asp"
	       Response.End
	    End If
    Else
      Response.Write ("<script language=javascript>alert('姓名、性别、出生年月、评定日期、治疗阶段不可为空！');javascript:history.go(-1)</script>")
      Response.End 
    End If
   Conn.close
   Set Conn=nothing  
%>
</body>
</html>
	 Response.Write pname
	 Response.Write sex
	 Response.Write birthday
	 Response.Write age
     Response.Write pdate
     Response.Write period
	 Response.Write qname
	 Response.Write lname
	 Response.Write zhiwu
	 Response.Write phone
	 Response.Write cellphone
	 Response.Write email
	 Response.Write qitajiandanshuoming
	 Response.Write str(1)
     Response.Write str(2)
	 Response.Write str(3)
	 Response.Write str(4)
	 Response.Write str(5)
	 Response.Write str(6)
	 Response.Write str(7)
	 Response.Write str(8)
	 Response.Write str(9)
	 Response.Write str(10)
	 Response.Write str(11)
	 Response.Write str(12)
	 Response.Write str(13)
	 Response.Write str(14)
	 Response.Write str(15)
	 Response.Write str(16)
	 Response.Write str(17)
	 Response.Write str(18)
	 Response.Write str(19)
	 Response.Write str(20)
	 Response.Write str(21)
	 Response.Write str(22)
	 Response.Write str(23)
	 Response.Write str(24)
	 Response.Write str(25)
	 Response.Write str(26)
	 Response.Write str(27)
	 Response.Write str(28)
	 Response.Write str(29)
	 Response.Write str(30)
	 Response.Write sum1
	 Response.Write sum2
	 Response.Write sum3
	 Response.Write sum4
	 Response.Write sum
	 Response.Write sign
	 Response.Write job
	 Response.Write rname
	 Response.Write pwd
	 Response.Write rpwd
	 Response.Write kind
	 Response.Write legalp
	 Response.Write address
	 Response.Write website
	 Response.Write amount
	 Response.Write product
	 Response.Write sum
	 Response.Write pname
	 Response.Write sex
	 Response.Write birthday
	 Response.Write age
     Response.Write wdate
     Response.Write fadate
	 Response.Write tdate
	 Response.Write tcourse
	 Response.Write tcourse_
	 Response.Write acourse
	 Response.Write acourse_
	 Response.Write mainsuit
	 Response.Write history
	 Response.Write before
	 Response.Write family
	 Response.Write examination
	 Response.Write diagnose1
	 Response.Write diagnose2
	 Response.Write diagnose3
     Response.Write select1
     Response.Write select2
	 Response.Write medicine
	 Response.Write psy
     
<%  If (than1<>"" and cont0<>"" or (than2<>"" and cont1<>"")) Then
      If than1=than2 Then
	   Response.Write ("<script language=javascript charset='utf-8'>alert('所选条件不可以相同！');javascript:history.go(-1)</script>")
	  End If
      Dim com
      If than1=1 Then 
       com="Select pname,sex,age,pdate,period,score,sign from ATQ where score='"&cont0&"'"
      Else
	   If than2=0 
	   If cont0>cont1 Then
	     com="Select pname,sex,age,pdate,period,score,sign from ATQ where score between '"&cont0&"' and '"&cont1&"'"
	   Else
	     com="Select pname,sex,age,pdate,period,score,sign from ATQ where score between '"&cont1&"' and '"&cont0&"'"
	   End if
	  End If
      Set rs=conn.Execute(com, recordsAffected, adcmdtext)
%>
<center>
 <div class="mainstyle">
   <div class="topstyle">
    <table width="900" border="0" cellspacing="0" cellpadding="0">
      <tr><td align="left"><!--#include file="file:///D|/Documents/毕业设计/time.asp"--></td></tr>
     </table>
   </div>
   <!--#include file="file:///D|/Documents/毕业设计/title.asp" -->
   <div class="borderstyle"><br>
    <table width="90%" border="1" bordercolor="#B6EBDD" cellspacing="1" cellpadding="2">
     <tr>
       <td colspan="8" align="left" background="file:///D|/Documents/毕业设计/img/t.jpg">自动思维量表（ATQ）查询</td>
     </tr>
     <tr>
       <td>姓名</td><td>性别</td>
       <td>出生日期</td><td>年龄</td>
       <td>评定日期</td><td>治疗阶段</td>
       <td>总分</td><td>评定者</td>
     </tr>
<%     Response.Write "<tr>"
         For i=0 To res.fields.count-1
          Response.Write "<td>" & rs(i).value & "</td>"
         Next
         rs.movenext
	   Response.Write "</tr>"
%>
	 Session("diagnose1")="F90-F98 通常起病于童年与少年期的行为与情绪"
	 Session("diagnose1")="F80-F89 心理发育障碍"
	 Session("diagnose1")="F70-F79 精神发育迟滞"
	 Session("diagnose1")="F60-F69 成人人格与行为障碍"
	 Session("diagnose1")="F50-F59 伴有生理紊乱及躯体因素的行为综合症"
	 Session("diagnose1")="F40-F49 神经症性、应激相关的及躯体形式障碍"
	 Session("diagnose1")="F30-F39 心境（情感）障碍"
	 Session("diagnose1")="F20-F29 精神分裂症、分裂性障碍和妄想性障碍"
	 Session("diagnose1")="F10-F19 使用精神活性物质所致的精神和行为障碍"
