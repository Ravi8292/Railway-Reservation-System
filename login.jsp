<%@ page import ="java.sql.*" %>
<%
String user = request.getParameter("uname");    
String pwd = request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test100",
"root", "Root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from account where uname='" + user + "' and pass='" + pwd + "'");
if (rs.next()) {
session.setAttribute("uname", user);
out.println("welcome " + user);
//out.println("<a href='logout.jsp'>Log out</a>");
//response.sendRedirect("dashboard.jsp");
} else {
//out.println("Invalid password <a href='index.jsp'>try again</a>");
	response.sendRedirect("dashboard.jsp");
}
%>