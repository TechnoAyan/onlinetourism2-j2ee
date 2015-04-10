<%-- 
    Document   : Welcome1
    Created on : Mar 2, 2014, 9:55:42 PM
    Author     : tapash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center>
    <body>
<jsp:include page="Uheader.html"/>        
        <%
        String uid=(String) session.getAttribute("uid");
        if(uid!=null)
                       {
            %>
            <h1>Welcome: <%=uid%></h1>
            <%
        }
        else
                       {
            response.sendRedirect("Login.jsp");
        }
        %>
        <jsp:include page="Footer.html"/>
        </center>
    </body>
</html>
