<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="WI-02.jpg">
        <jsp:include page="UHeader.html"/>
<center>
<form action="Booking" method="post">
<table border="5">
<tr>
<th><font color="white">Booking Id</font></th>
<td><input type="Text" name="bid"></td>
</tr>
<tr>
<th><font color="white">Uid</font></th>
<td><input type="Text" name="uid1"></td>
</tr>
<tr>
<th><font color="white">Tour Id</font></th>
<td><input type="Text" name="tid1"></td>
</tr>
<tr>
<th><font color="white">Number of Person</font></th>
<td><input type="Text" name="nop"></td>
</tr>
<tr>
<th><font color="white">Date of Booking</font></th>
<td><input type="Text" name="dob"></td>
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
