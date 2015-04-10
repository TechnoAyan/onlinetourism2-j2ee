<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="WI-02.jpg">
        <jsp:include page="Header.html"/>
<center>
<form action="NewUser" method="post">
<table border="5">
<tr>
<th><font color="white">User Id</font></th>
<td><input type="Text" name="uid"></td>
</tr>
<tr>
<th><font color="white">Password</font></th>
<td><input type="Password" name="pwd"></td>
</tr>
<tr>
<th><font color="white">Name</font></th>
<td><input type="Text" name="name"></td>
</tr>
<tr>
<th><font color="white">Mail Id</font></th>
<td><input type="Text" name="mailid"></td>
</tr>
<tr>
<th><font color="white">Address</font></th>
<td><input type="Text" name="address"></td>
</tr>
<td colspan="2" align="center">
<input type="Submit" value="Submit">
<input type="Reset" value="Reset">
</td>
</tr>
</table>
</from>
</center>
<jsp:include page="Footer.html"/>
</body>
</html>