<!-- #include file="Upload.asp" -->

<%
Server.ScriptTimeout = 900

formPath = "../../������ύ"

Set upload= New DoteyUpload

Upload.SaveTo(formPath) '���ļ��������ļ���ͳһ������ĳ·����

If upload.ErrMsg = "" then
%>

<link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
<title>�ļ��ϴ�</title>
<body>
<center>
 <div class="mainstyle">
  <!--#include file="top_r.asp" -->
 <div class="service">
   <table width="940" border="0" cellspacing="2" cellpadding="0">
     <tr>
       <td><img src="../image/diagnose1.jpg" width="230" height="170"></td>
       <td><img src="../image/diagnose2.jpg" width="710" height="170"></td>
     </tr>
   </table>
  </div>
  <div class="left"><!--#include file="diagnose.asp" --></div>
  <div class="right">
   <center>
    <table width="500" border="0" cellspacing="10" cellpadding="10">
      <tr><td>&nbsp;</td></tr>
      <tr><td>&nbsp;</td></tr>
      <tr><td align="center"><span style="color:#C8000B; font-family:�����п�; font-size:25px;">�ύ�ɹ���</strong></span></td></tr>
      <tr><td align="center"><span style="color:#C8000B; font-family:�����п�; font-size:25px;"><strong>��ȴ����ǵ���ϵ��</strong></span></td></tr>
   </table>
   </center>
  </div>
  <div class="clear">&nbsp;</div>
  <!--#include file="../bottom_.asp" -->
 </div>
</center>
</body>
</html>
<%
  Else
	Response.Write("�ϴ������г��ִ���:<br>" & Upload.ErrMsg)
  End If
Set upload=nothing
%>
