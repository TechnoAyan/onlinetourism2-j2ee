<%
session.removeAttribute("uid");
session.invalidate();
response.sendRedirect("Login.jsp");
%>