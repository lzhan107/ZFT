<%
     Set conn=Server.CreateObject("ADODB.Connection")
     Providerstr="Driver={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("../Database/в╒╡Апео╒.mdb")
     conn.Open Providerstr
%>