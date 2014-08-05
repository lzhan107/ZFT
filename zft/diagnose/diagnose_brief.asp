<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>&ldquo;自&rdquo;诊断</title>
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
      <tr><td align="left" height="38" background="../image/all.jpg"  style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“自”诊断系统介绍</td></tr>
     </table>
    </td>
  </tr>
  <tr>
    <td class="p_txt">&nbsp;&nbsp;&nbsp;&nbsp;中服通的企业管理“自”诊断系统通过企业网上调查问卷的填写与提交，并依据中服通后台权威专家的分析评估，加之必要的企业访谈和针对性的调查问卷，最终给出企业诊断分析报告，以供企业经营决策时参考。中服通的权威专家是由来自不同行业的权威专家学者组成，其丰富的理论和实战经验将为我们企业良好发展提供必要的保障。</td>
  </tr>
  <tr>
    <td align="center"><img src="../image/diagnose4.jpg" width="580" height="281"></td>
  </tr>
  <tr>
    <td class="agree" align="center">有中服通权威专家深度支持，可确保企业"自"诊断的完美体验</td>
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