<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function fun()
            {
                var x=document.f.t2.value;
                var y=document.f.t3.value;
                if(x!=y)
                    {
                        alert("Password is mismatched");
                        return false;
                    }
                    return true;
            }
            </script>
            
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
            <jsp:include page="UHeader.html"/>
        <form action="Changepwd" method="post" onsubmit="return fun();" name="f">
            <center>
            <table border="5">
                <tr>
                    <th>Enter Old Password:</th><td><input type="password" name="t1">
                    </td>
                    </tr>
                    <tr>
                    <th>Enter New Password:</th><td><input type="password" name="t2">
                    </td>
                    </tr>
                    <tr>
                    <th>Confirm New Password:</th><td><input type="password" name="t3">
                    </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2"><input type="Submit" value="OK">
                            
                    <input type="Reset" value="RESET"></td>
                    </tr>
                    </center>
            </form>
            <jsp:include page="Footer.html"/>
    </body>
</html>