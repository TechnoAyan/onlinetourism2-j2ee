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
             <tr>
                 <td>Tour Id</td>
                 <td>Name of Tour</td>
                 <td>Description</td>
                 <td>Price(per adult in RS.)</td>
                 <td>Photo</td>
              </tr>
              <%
              String a=request.getParameter("tid");
              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:abc");
            PreparedStatement pst=con.prepareStatement("Select * from tours where tid=?");
        pst.setString(1,a);
        ResultSet rs=pst.executeQuery();
       if(rs.next())
       {
            String tid=rs.getString(1);
            String tname=rs.getString(2);
            String desc=rs.getString(3);
            int price=rs.getInt(4);
            String pic=rs.getString(5);
        %>
        <tr>
            <td><%=tid%></td>
             <td><%=tname%></td>
              <td><%=desc%></td>
               <td><%=price%></td>
                <td><img src=<%=pic%> height="100" width="100"></td>
                </tr>
        <%
               }
        con.close();
            %>
     <jsp:include page="Footer.html"/>
    </body>
</html>
