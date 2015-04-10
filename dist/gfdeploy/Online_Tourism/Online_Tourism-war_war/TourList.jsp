<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <jsp:include page="Header.html"/>
     <center>
         <table border="3">
             
              <%
              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:abc");
            Statement smt=con.createStatement();
        ResultSet rs=smt.executeQuery("select * from tours");
        while(rs.next())
                       {
            String tid=rs.getString(1);
            String pic=rs.getString(5);
            String url="SingleTour.jsp?tid="+tid;
        %>
        <td>
        <a href=<%=url%>>
                <img src=<%=pic%> height="100" width="100"></td>
                </a>
                
        <%
               }
        con.close();
            %>
     <jsp:include page="Footer.html"/>
    </body>
</html>
