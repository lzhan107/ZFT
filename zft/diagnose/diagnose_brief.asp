<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>&ldquo;��&rdquo;���</title>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<body>
<center>
 <div class="mainstyle">
 <% If Session("rname")="" Then  %>
  <!--#include file="top.asp" -->
 <% Else %>
  <!--#include file="top_r.asp" -->
 <% End If %>
 <table width="970" border="0" cellspacing="2" cellpadding="2">
   <tr><td class="service">
     <table width="970" border="0" cellpadding="0" cellspacing="0">
       <tr>
         <td><img src="../image/diagnose1.jpg" width="230" height="170"></td>
         <td><img src="../image/diagnose2.jpg" width="740" height="170"></td>
       </tr>
     </table>
   </td></tr>
 </table>
  <div class="left"><!--#include file="diagnose.asp" --></div>
  <div class="right">
  <table width="620" border="0" cellspacing="30" cellpadding="4">
  <tr>
    <td>
     <table width="196" border="0" cellspacing="0" cellpadding="0">
      <tr><td align="left" height="38" background="../image/all.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ԡ����ϵͳ����</td></tr>
     </table>
    </td>
  </tr>
  <tr>
    <td class="p_txt">&nbsp;&nbsp;&nbsp;&nbsp;�з�ͨ����ҵ�����ԡ����ϵͳͨ����ҵ���ϵ����ʾ����д���ύ���������з�ͨ��̨Ȩ��ר�ҵķ�����������֮��Ҫ����ҵ��̸������Եĵ����ʾ����ո�����ҵ��Ϸ������棬�Թ���ҵ��Ӫ����ʱ�ο����з�ͨ��Ȩ��ר���������Բ�ͬ��ҵ��Ȩ��ר��ѧ����ɣ���ḻ�����ۺ�ʵս���齫Ϊ������ҵ���÷�չ�ṩ��Ҫ�ı��ϡ�</td>
  </tr>
  <tr>
    <td align="center"><img src="../image/diagnose4.jpg" width="580" height="281"></td>
  </tr>
  <tr>
    <td class="agree" align="center">���з�ͨȨ��ר�����֧�֣���ȷ����ҵ"��"��ϵ���������</td>
  </tr>
  <tr>
    <td align="right"><img src="../image/diagnose5.jpg" width="200" height="151"></td>
  </tr>
  </table>
  </div>
  <div class="clear">&nbsp;</div>
  <!--#include file="../bottom_.asp" -->
 </div>
</center>
</body>
</html>