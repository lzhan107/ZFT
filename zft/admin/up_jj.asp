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
	Response.Write ("�г�����form����:<BR>")
	For each formName in upload.Form ''�г�����form����
		Response.write formName & "=" & upload.Form(formName) & "<br>"
	next

	Response.Write ("<BR><BR>�ϴ���<BR>")
	For Each formName In upload.Files '�г������ϴ��˵��ļ�
		Set file = upload.Files(formName)  '����һ���ļ�����
		binary = file.GetBinary()
		sql="insert into Upload_jj(Uploadname,Content,ContentType,FileSize,FileName)" & "values('"&Session("uploadn")&"','"&binary&"','"&file.FileType&"','"&file.FileSize&"','"&file.FileName&"')"
        Dim Comm
        Set Comm=Server.CreateObject("ADODB.Command")
        Set Comm.ActiveConnection=conn
            Comm.Commandtext=sql
	        Comm.Execute aa,,1
	       If aa=1 Then
		     Response.write "<a href='uploadfile.asp?uploadid=" & uploadID & "' target='_blank'>" & File.FileName & "</a>" & "����ɹ�!<br>"
		     Response.write "<br /><BR>"
	         Response.End
	       End If
	    RS.Close
	    Set file=nothing
	Next
Else
	Response.Write("�ϴ������г��ִ���:<br>" & Upload.ErrMsg)
End If

Set upload=nothing
Conn.Close
%>  