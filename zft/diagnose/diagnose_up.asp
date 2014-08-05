<!-- #include file="Upload.asp" -->

<%
Server.ScriptTimeout = 900

formPath = "../../自诊断提交"

Set upload= New DoteyUpload

Upload.SaveTo(formPath) '将文件根据其文件名统一保存在某路径下

If upload.ErrMsg = "" then
%>

<link href="../CSS/CSS.css" rel="stylesheet" type="text/css" />
<title>文件上传</title>
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
      <tr><td align="center"><span style="color:#C8000B; font-family:华文行楷; font-size:25px;">提交成功！</strong></span></td></tr>
      <tr><td align="center"><span style="color:#C8000B; font-family:华文行楷; font-size:25px;"><strong>请等待我们的联系！</strong></span></td></tr>
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
	Response.Write("上传过程中出现错误:<br>" & Upload.ErrMsg)
  End If
Set upload=nothing
%>
