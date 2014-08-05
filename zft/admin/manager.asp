<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理员登录</title>

<link href="../CSS/CSS.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
</head>

<body onLoad="MM_preloadImages('image/index1.jpg')">
<center>
 <div class="main">
  <!--#include file="top.asp" -->
  <div class="index">
  <table width="960" border="0" cellspacing="4" cellpadding="4">
  <tr>
   <td>
    <table width="560" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('index','','../image/index1.jpg',1)"><img src="../image/index.JPG" name="index" width="560" height="320" border="0"></a>
        </td>
      </tr>
      <tr>
        <td><img src="../image/index2.jpg" width="560" height="60"></td>
      </tr>
    </table>
   </td>
   <td align="right">
    <table width="400" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="277"><span class="fontstyle4">中国中服通---<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;企业服务一站通!</span></td>
      </tr>
      <tr>
        <td height="104" align="center"><img src="../image/index3.jpg" width="300" height="104"></td>
      </tr>
    </table>
   </td>
  </tr>
  </table>
  </div>
  <form action="record.asp" method="post" name="manager">
  <table width="960" height="300" border="0" cellspacing="4" cellpadding="4">
    <tr>
      <td align="center">
      <table width="600" height="250" border="0" cellspacing="8" cellpadding="8" class="fontstyle1">
       <tr>
         <td width="50">&nbsp;</td>
         <td height="35" width="169" background="../image/about4.jpg" align="center">管理员登录</td>
         <td width="321">&nbsp;</td>
       </tr>
       <tr>
         <td>&nbsp;</td>
         <td colspan="2" valign="top">
           <table width="400" border="0" cellspacing="6" cellpadding="6" class="fontstyle1">
             <tr>
               <td width="100">管理员账号：</td>
               <td width="258"><input name="mID" type="text" size="20"></td></tr>
             <tr>
               <td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
               <td><input name="pwd" type="password" size="21"></td>
             </tr>
             <tr>
               <td colspan="2" align="left">&nbsp;&nbsp;&nbsp;
               <img src="../image/submit.jpg" width="50" height="23" style="cursor:hand;" onClick="javascript:manager.submit()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <img src="../image/reset.jpg" width="50" height="23" style="cursor:hand;" onClick="javascript:manager.reset()"></td>
               </tr>
             <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
           </table>
         </td>
       </tr>
      </table>
      </td>
    </tr>
  </table>
  </form>
  <hr width="970" />
  <table width="960" border="0" cellspacing="2" cellpadding="2"class="fontstyle1">
   <tr>
    <td background="../image/index4.jpg" valign="middle" width="52" height="80" align="center">友情<br>链接</td>
    <td width="10">&nbsp;</td>
    <td>
    <marquee onMouseOver=this.stop() onMouseOut=this.start() scrollamount=3 direction="right">
      <table width="750" border="0" cellspacing="2" cellpadding="2">
       <tr>
         <td><a href="http://www.jste.gov.cn/"><img src="../image/index_yz.jpg" width="120" height="66" border="0"></a></td>
         <td><a href="http://www.jstouzi.com"><img src="../image/index_yt.jpg" width="120" height="66" border="0"></a></td>
         <td><a href="http://www.sushang.cn/"><img src="../image/index_ys.jpg" width="120" height="66" border="0"></a></td>
         <td><a href="http://nubs.nju.cn/"><img src="../image/index_yn.jpg" width="120" height="66" border="0"></a></td>
         <td><a href="http://www.xhby.net"><img src="../image/index_yx.jpg" width="120" height="66" border="0"></a></td>
         <td><a href="http://www.njfu.edu.cn"><img src="../image/index_yl.jpg" width="120" height="66" border="0"></a></td>
       </tr>
      </table>
    </marquee>
    </td>
   </tr>
  </table>
 </div>
 <div class="bottom_i"><!--#include file="../bottom_.asp" --></div>
</center>
</body>
</html>
