<%
     Set conn=Server.CreateObject("ADODB.Connection")
     Providerstr="Driver={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("../Database/ע����Ϣ.mdb")
     conn.Open Providerstr
%>