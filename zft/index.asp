<%  
   	If Session("oname")<>"" Then
	  Response.Redirect "index_r.asp"
	  Response.End
	Else
	  Response.Redirect "start.asp"
	  Response.End
    End If



%>