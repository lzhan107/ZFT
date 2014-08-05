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
  <div class="link_invest">
   <table width="960" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="62" colspan="8"><img src="../image/logo.jpg" width="418" height="60" /></td>
      <td height="62"><a href="../index.asp">中服通首页</a></td>
    </tr>
    <tr>
      <td width="29" height="30" background="../image/invest/navigate/1.jpg"></td>
      <td width="136" height="30" align="center" background="../image/invest/navigate/2.jpg"><span class="fontstyle2"><a href="invest_about_brief.asp" class="channel0">关于投融资信息平台</a></span></td>
      <td width="96" height="30" align="center" background="../image/invest/navigate/3.jpg"><span class="fontstyle2"><a href="invest_message.asp" class="channel0">投资机构信息</a></span></td>
      <td width="96" height="30" align="center" background="../image/invest/navigate/3.jpg"><span class="fontstyle2"><a href="invest_government.asp" class="channel0">政府招商信息</a></span></td>
      <td width="70" height="30" align="center" background="../image/invest/navigate/4.jpg"><span class="fontstyle2"><a href="invest_money.asp" class="channel0">资金信息</a></span></td>
      <td width="70" height="30" align="center" background="../image/invest/navigate/4.jpg"><span class="fontstyle2"><a href="invest_project.asp" class="channel0">项目信息</a></span></td>
      <td width="70" height="30" align="center" background="../image/invest/navigate/4.jpg"><span class="fontstyle2"><a href="invest_need.asp" class="channel0">我要服务</a></span></td>
      <td width="60" height="30" background="../image/invest/navigate/5.jpg"></td>
      <td width="333" align="center"><span class="fontstyle3" style="color: #DC000A;"><strong>中服通专线：025-84879672</strong></span></td>
    </tr>
   </table>
  </div>
  </td>
 </tr>
</table>