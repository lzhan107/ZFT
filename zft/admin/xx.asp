<%
   Dim theme
   theme=Request.Form("theme")
   Dim text
   text=Request.Form("text")  
   Dim da
   da=date
   Dim ti
   ti=time
   Session("theme")=theme
   Session("date")=da
   Session("time")=ti
%>
<!--#include file="../Database/conn.asp" -->
<%  
   If (theme="" and text="") Then
     Response.Write ("<script language=javascript>alert('主题、正文请务必填写！');javascript:history.go(-1)</script>")
     Response.End
   End If
   Dim com
   com="Select * from 学习活动 where theme='"&theme&"' and xdate=#"&da&"#"
   Set rs=conn.Execute(com)
   If not(rs.Eof) or not(rs.Bof) Then
	 Response.Write ("<script language=javascript>alert('该动态已存在，请重新填写！');javascript:history.go(-1)</script>")
	 Response.End
   End If
   Dim sql
	sql="insert into 学习活动(theme,xdate,xtime,xtext) " & "values('"&theme&"','"&da&"','"&ti&"','"&text&"')"
   Dim Comm
   Set Comm=Server.CreateObject("ADODB.Command")
   Set Comm.ActiveConnection=conn
       Comm.Commandtext=sql
	   Comm.Execute aa,,1
	 If aa=1 Then
	   Response.Redirect "news_xx_.asp"
	   Response.End
	 End If
   rs.close
   Set rs=nothing
   conn.close
   Set conn=nothing
   
%>