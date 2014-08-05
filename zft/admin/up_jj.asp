<!-- #include file="Upload.asp" -->
<!--#include file="../Database/conn.asp" -->
<%
Server.ScriptTimeout = 900

Set upload= New DoteyUpload
Dim binary, uploadID

Upload.Upload()

Dim com
    com="Select * from Upload_jj"
	
Set RS=conn.Execute(com)

If upload.ErrMsg = "" then
	Response.Write ("列出所有form数据:<BR>")
	For each formName in upload.Form ''列出所有form数据
		Response.write formName & "=" & upload.Form(formName) & "<br>"
	next

	Response.Write ("<BR><BR>上传：<BR>")
	For Each formName In upload.Files '列出所有上传了的文件
		Set file = upload.Files(formName)  '生成一个文件对象
		binary = file.GetBinary()
		sql="insert into Upload_jj(Uploadname,Content,ContentType,FileSize,FileName)" & "values('"&Session("uploadn")&"','"&binary&"','"&file.FileType&"','"&file.FileSize&"','"&file.FileName&"')"
        Dim Comm
        Set Comm=Server.CreateObject("ADODB.Command")
        Set Comm.ActiveConnection=conn
            Comm.Commandtext=sql
	        Comm.Execute aa,,1
	       If aa=1 Then
		     Response.write "<a href='uploadfile.asp?uploadid=" & uploadID & "' target='_blank'>" & File.FileName & "</a>" & "保存成功!<br>"
		     Response.write "<br /><BR>"
	         Response.End
	       End If
	    RS.Close
	    Set file=nothing
	Next
Else
	Response.Write("上传过程中出现错误:<br>" & Upload.ErrMsg)
End If

Set upload=nothing
Conn.Close
%>  