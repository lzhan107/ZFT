<%
   Dim theme
   theme=Request.Form("theme")
   Dim text
   text=Request.Form("text")  
   Dim da
   da=date
   Dim ti
   ti=time
   
%>
<!--#include file="../Database/conn.asp" -->
<%  
   If (theme="" and text="") Then
     Response.Write ("<script language=javascript>alert('���⡢�����������д��');javascript:history.go(-1)</script>")
     Response.End
   End If
   Dim com
   com="Select * from �������� where theme='"&theme&"' and jdate='"&da&"' and jtime='"&ti&"'"
   Set rs=conn.Execute(com)
   If not(rs.Eof) or not(rs.Bof) Then
	 Response.Write ("<script language=javascript>alert('����Ϣ�Ѵ��ڣ���������д��');javascript:history.go(-1)</script>")
	 Response.End
   End If
   Dim sql
	sql="insert into ��֯��Ϣ(theme,zdate,ztime,ztext) " & "values('"&theme&"','"&da&"','"&ti&"','"&text&"')"
   Dim Comm
   Set Comm=Server.CreateObject("ADODB.Command")
   Set Comm.ActiveConnection=conn
       Comm.Commandtext=sql
	   Comm.Execute aa,,1
	 If aa=1 Then
	   Response.Redirect "news_zz_.asp"
	   Response.End
	 End If
   rs.close
   Set rs=nothing
   conn.close
   Set conn=nothing
   
%>