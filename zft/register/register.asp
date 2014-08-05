<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>我要注册</title>
<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
</head>

<body>
<center>
 <div class="mainstyle">
  <!--#include file="top.asp" -->
  <table width="960" border="0" cellspacing="2" cellpadding="0">
   <tr><td>
     <table width="960" border="0" cellpadding="2" cellspacing="0" class="service">
       <tr>
         <td><img src="../image/register1.jpg" width="220" height="170"></td>
         <td><img src="../image/register2.jpg" width="740" height="170"></td>
       </tr>
     </table>
   </td></tr>
  </table>
  <div class="left">
    <table width="215" border="0" cellspacing="8" cellpadding="0">
     <tr>
       <td height="58" width="215" background="../image/register3.jpg" style="font-family:华文彩云; font-size:30px;" align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;会员注册</td>
     </tr>
     <tr>
       <td align="center">
        <table width="205" border="0" cellspacing="8" cellpadding="0">
         <tr>
          <td height="35" background="../image/register4.jpg" align="center" class="fontstyle1"><a href="reg.asp" class="channel1">普通会员注册</a></td>
         </tr>
         <tr><td><hr></td></tr>
         <tr>
          <td height="35" background="../image/register4.jpg" align="center" class="fontstyle1"><a href="register.asp" class="channel1">组织会员注册</a></td>
         </tr>
         <tr><td><hr></td></tr>
        </table>
       </td>
     </tr>
   </table><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  </div>
  <div class="right">
   <form action="zzdm.asp" method="post" name="ZZdm">
   <table width="600" border="0" cellspacing="8" cellpadding="0">
    <tr>
     <td align="left" height="40">
     <table width="196" border="0" cellspacing="0" cellpadding="0">
      <tr><td align="left" height="38" background="../image/all.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我要注册</td></tr>
     </table>
     </td></tr>
    <tr><td>&nbsp;</td></tr>
    <tr><td><span style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;如果你想享受中服通的多项增殖服务，请你立即注册成为中服通的会员，有众多惊喜等着你！</span></td></tr>
    <tr>
    <tr><td>&nbsp;</td></tr>
      <td><table width="600" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="color:#C8000B; font-size:16px;"><p><strong>◎普通会员注册</strong><strong> </strong></p></td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
          <td><span style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;如果你是普通会员，请立即<a href="reg.asp" style="cursor:hand; color:#C00000;">注册</a></span></td>
          <tr><td>&nbsp;</td></tr>
        </tr>
        <tr>
          <td style="color:#C8000B; font-size:16px;"><p><strong>◎组织会员注册</strong><strong> </strong></p></td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
          <td><span style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;如果你是组织会员，请<a style="cursor:hand; color:#C00000;" onClick="zuzhi();">输入组织代码</a></span></td>
        </tr>
        <tr>
          <td align="center">
           <table width="320" border="0" id="Table1" style="font-size:13px;">
            <tr><td width="100">&nbsp;</td><td width="120">&nbsp;</td><td width="86">&nbsp;</td></tr>
            <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
            <tr><td align="right"><img src="../image/register5.jpg" width="69" height="33"></td>
                <td><img src="../image/register.jpg" width="50" height="24" onClick="javscript:ZZdm.submit()" style="cursor:hand"></td><td>&nbsp;</td></tr>
           </table>
          </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td></tr>
   </table>
   </form>
  </div>
  <div class="clear">&nbsp;</div>
  <div class="bottom"><!--#include file="../bottom_.asp" --></div>
 </div>
</center>
</body>
</html>


<script type="text/javascript"> 
	function zuzhi(){
	  var t = document.getElementById("Table1");
	   
	  var strId = t.rows.length;
	  if (strId>3){
		  return;
		  }
	  
	  var e = document.createTextNode("组织代码：");
	   
	  var q = document.createElement("input");
	  q.type = "text"; 
	  q.size = 15;
	  q.maxlength = 30;
	  q.name = "zzdm";
	  
	  var row = t.insertRow(t.rows.length-2);
	  var c1 = row.insertCell(0);
	  c1.appendChild(e);
	  c1.align = "center";
	  
	  var c2 = row.insertCell(1);
	  c2.appendChild(q);
	  c2.align = "left";
		
	}
</script>