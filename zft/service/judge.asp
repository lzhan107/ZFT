<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>我要服务</title>
</head>

<body>
<%  Dim rname
    rname=Session("rname")
	Dim id
	id=Request("id")
    If rname<>"" Then
	  If id="1" Then
	    Response.Redirect "tourongzi.asp"
		Response.End
	  End If
	  If id="2" Then
	    Response.Redirect "guanli.asp"
		Response.End
	  End If
	  If id="3" Then
	    Response.Redirect "peixun.asp"
		Response.End
	  End If
	  If id="4" Then
	    Response.Redirect "renli.asp"
		Response.End
	  End If
	  If id="5" Then
	    Response.Redirect "ruanjian.asp"
		Response.End
	  End If
	  If id="6" Then
	    Response.Redirect "renzheng.asp"
		Response.End
	  End If
	  If id="7" Then
	    Response.Redirect "caiwu.asp"
		Response.End
	  End If
	  If id="8" Then
	    Response.Redirect "yingxiao.asp"
		Response.End
	  End If
	  If id="9" Then
	    Response.Redirect "guanggao.asp"
		Response.End
	  End If
	  If id="10" Then
	    Response.Redirect "falv.asp"
		Response.End
	  End If
	  If id="11" Then
	    Response.Redirect "qita.asp"
		Response.End
	  End If
	Else
	  Response.Write("<script language=javascript>alert('您不是会员，请先登录！（如果您不是会员请先注册！）');javascript:history.go(-1)</script>")
	  Response.End
	End If
%>
</body>
</html>
