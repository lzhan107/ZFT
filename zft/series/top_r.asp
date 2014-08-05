<table width="970" border="0" cellspacing="2" cellpadding="2">
 <tr>
   <td width="470">&nbsp;</td>
   <td width="500">
    <div class="top">
    <table width="480" border="0" cellspacing="0" cellpadding="0" class="fontstyle1">
     <tr>
      <td width="60" height="13">登录名：</td>
      <td width="100"><span class="fontstyle1"><%= Session("rname") %></span></td>
      <td width='65' align='left'>组织名称：</td>
	  <% 
	    If Session("oname")<>"" Then
		  Response.Write "<td width='100' align='left'>" & Session("oname") & "</td>"
		Else
		  Response.Write "<td width='100' align='left'>普通会员</td>" 
		End If
	  %>
      <td width="75" align="left"><span class="fontstyle1" style="color:#C8000B;"><a href="geren.asp">个人信息</a></span></td>
      <td width="70"><a href="cancel.asp"><img src="../image/cancel.jpg" width="50" height="24" style="cursor: hand" border="0"></a></td>
     </tr>
    </table>
    </div>   
   </td>
 </tr>
 <tr>
  <td colspan="2">
  <div class="link">
   <table width="970" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="62" colspan="7"><img src="../image/logo.jpg" width="418" height="60"></td>
      <td height="62" align="right"><a href="invest/invest_about_brief.asp"><img border="0" src="../image/index_link.JPG" width="192" height="42" /></a></td>
    </tr>
    <tr>
      <td width="43" height="30" background="../image/link/1.gif"></td>
      <td width="50" height="30" align="center" background="../image/link/2.gif"><span class="fontstyle2"><a href="../index.asp" class="channel0">首页</a></span></td>
      <td width="80" height="30" align="center" background="../image/link/3.gif"><span class="fontstyle2"><a href="../about/about_brief.asp" class="channel0">关于中服通</a></span></td>
      <td width="80" height="30" align="center" background="../image/link/3.gif"><span class="fontstyle2"><a href="series.asp" class="channel0">服务系列</a></span></td>
      <td width="80" height="30" align="center" background="../image/link/3.gif"><span class="fontstyle2"><a href="../diagnose/diagnose_brief.asp" class="channel0">"自"诊断</a></span></td>
      <td width="74" height="30" align="center" background="../image/link/4.gif"><span class="fontstyle2"><a href="../service/liucheng.asp" class="channel0">我要服务</a></span></td>
      <td width="73" height="30" align="center" background="../image/link/5.gif"><span class="fontstyle2"><a href="../news/news_economic.asp" class="channel0">新闻中心</a></span></td>
      <td width="480" align="center"><span class="fontstyle3" style="color: #DC000A;"><strong>中服通专线：025-84879672</strong></span></td>
    </tr>
   </table>
  </div>
  </td>
 </tr>
</table>

