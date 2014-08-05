<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>首页</title>

<link href="CSS/CSS.css" rel="stylesheet" type="text/css">
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

<% 
   Set conn=Server.CreateObject("ADODB.Connection")
   Providerstr="Driver={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("Database/注册信息.mdb")
   conn.Open Providerstr
   Dim co
   co="Select top 7 ID,theme from 经济新闻"
   com="Select top 7 ID,theme from 学习活动"
   comm="Select top 7 ID,oname,theme from 组织信息 where oname='"&Session("oname")&"'"
   Set rs=conn.Execute(co, recordsAffected, adcmdtext)
   Set res=conn.Execute(com, recordsAffected, adcmdtext)
   Set ress=conn.Execute(comm, recordsAffected, adcmdtext)
%>
<body onLoad="MM_preloadImages('image/index1.jpg')">
<center>
 <div class="main">
  <!--#include file="top_r.asp" -->
  <div class="index">
  <table width="960" border="0" cellspacing="4" cellpadding="4">
  <tr>
   <td>
    <table width="560" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('index','','image/index1.jpg',1)"><img src="image/index.JPG" name="index" width="560" height="320" border="0"></a>
        </td>
      </tr>
      <tr>
        <td><img src="image/index2.jpg" width="560" height="60"></td>
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
        <td height="104" align="center"><img src="image/index3.jpg" width="300" height="104"></td>
      </tr>
    </table>
   </td>
  </tr>
  </table>
  </div>
  <table width="987" height="308" border="0" cellspacing="2" cellpadding="2">
    <tr>
      <td width="313" align="right">
      <table width="312" height="280" border="0" cellspacing="2" cellpadding="2" class="fontstyle1">
        <tr>
          <td height="35" width="177" background="image/about4.jpg" align="center">经济新闻</td>
          <td width="127" align="right"><a href="news/news_economic.asp"><img border="0" src="image/news.jpg" width="48" height="22"></a></td>
        </tr>
        <tr>
          <td colspan="2" align="right" valign="top">
          <table width="310" border="1" cellspacing="2" cellpadding="2" bordercolor="#CCCCCC" style="border-collapse:collapse; font-size:13px;">
<%
	       While Not rs.eof
%>          <tr>
              <td width="308" height='30' valign='middle'> ◎<a href="news/detail_economic.asp?id=<%= rs("ID") %>" class="channel3"><%=  rs("theme")  %></a></td>
<%            rs.movenext
%>	         </tr>
<%         Wend
%>
          </table>
          </td>
        </tr>
      </table>      
      </td>
      <td width="8" background=""><div style="border-right:solid #CCC 1px; height:280px;"></div></td>
      <td width="313" align="right">
      <table width="312" height="280" border="0" cellspacing="2" cellpadding="2" class="fontstyle1">
        <tr>
          <td height="35" width="177" background="image/about4.jpg" align="center">学习活动动态</td>
          <td width="127" align="right"><a href="news/news_education.asp"><img border="0" src="image/news.jpg" width="48" height="22"></a></td>
        </tr>
        <tr>
          <td colspan="2" align="right" valign="top">
          <table width="310" border="1" cellspacing="2" cellpadding="2" bordercolor="#CCCCCC" style="border-collapse:collapse; font-size:13px;">
<%
	       While Not res.eof
%>          <tr>
              <td width="308" height='30' valign='middle'> ◎<a href="news/detail_education.asp?id=<%= res("ID") %>" class="channel3"><%=  res("theme")  %></a></td>
<%            res.movenext
%>	         </tr>
<%         Wend
%>
          </table>
          </td>
        </tr>
      </table>      
      </td>
      <td width="8" background=""><div style="border-right:solid #CCC 1px; height:280px;"></div></td>
      <td width="313" align="right">
      <table width="312" height="280" border="0" cellspacing="2" cellpadding="2" class="fontstyle1">
        <tr>
          <td height="35" width="177" background="image/about4.jpg" align="center">组织信息</td>
          <td width="127" align="right"><a href="news/news_education.asp"><img border="0" src="image/news.jpg" width="48" height="22"></a></td>
        </tr>
        <tr>
          <td colspan="2" align="right" valign="top">
          <table width="310" border="1" cellspacing="2" cellpadding="2" bordercolor="#CCCCCC" style="border-collapse:collapse; font-size:13px;">
<%
	       While Not ress.eof
%>          <tr>
              <td width="308" height='30' valign='middle'> ◎<a href="news/detail_education.asp?id=<%= ress("ID") %>" class="channel3"><%=  ress("theme")  %></a></td>
<%            ress.movenext
%>	         </tr>
<%         Wend
%>
          </table>
          </td>
        </tr>
      </table>      
      </td>
    </tr>
  </table>
  <hr width="970" />
  <table width="960" border="0" cellspacing="2" cellpadding="2"class="fontstyle1">
   <tr>
    <td background="image/index4.jpg" valign="middle" width="52" height="80" align="center">友情<br>链接</td>
    <td width="10">&nbsp;</td>
    <td>
    <marquee onMouseOver=this.stop() onMouseOut=this.start() scrollamount=3 direction="right">
      <table width="750" border="0" cellspacing="2" cellpadding="2">
       <tr>
         <td><a href="http://www.jste.gov.cn/"><img src="image/index_yz.jpg" width="120" height="66" border="0"></a></td>
         <td><a href="http://www.jstouzi.com"><img src="image/index_yt.jpg" width="120" height="66" border="0"></a></td>
         <td><a href="http://www.sushang.cn/"><img src="image/index_ys.jpg" width="120" height="66" border="0"></a></td>
         <td><a href="http://nubs.nju.cn/"><img src="image/index_yn.jpg" width="120" height="66" border="0"></a></td>
         <td><a href="http://www.xhby.net"><img src="image/index_yx.jpg" width="120" height="66" border="0"></a></td>
         <td><a href="http://jingguan.njfu.edu.cn/njfu001/index.aspx"><img src="image/index_yl.jpg" width="120" height="66" border="0"></a></td>
       </tr>
      </table>
    </marquee>
    </td>
   </tr>
  </table>
 </div>
 <div class="bottom_i"><!--#include file="bottom.asp" --></div>
</center>
</body>
</html>
