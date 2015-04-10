<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="Tiger.jpg">
        <jsp:include page="Header.html"/>
<center>
<form action="Login" method="post">
<table border="5">
<tr>
<th>User Id:</th>
<td><input type="Text" name="t1"></td>
</tr>
<tr>
<th>Password:</th>
<td><input type="Password" name="t2"></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="Submit" value="Submit">
<input type="Reset" value="Reset">
</td>
</tr>
</table>
    <%
    String a=request.getParameter("a");
    if(a!=null)
               {
        out.println("<h1>Sorry!! Try Again</h1>");
    }
    %>
</from>
</center>
<jsp:include page="Footer.html"/>
</body>
</html>

