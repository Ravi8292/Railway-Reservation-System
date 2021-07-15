<%@ page import ="java.sql.*" %>
<%
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String user = request.getParameter("uname");    
String pwd = request.getParameter("pass");
String Aadhar_No = request.getParameter("Aadhar_No");
//String regdate = request.getParameter("regdate");




Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test100","root", "Root");
Statement st = con.createStatement();
ResultSet rs;
int i = st.executeUpdate("insert into account (first_name, last_name, email, uname, pass ,Aadhar_No) values ('" + fname + "','" + lname + "','"+ email + "','" + user + "','" + pwd + "','" + Aadhar_No +"', CURDATE())");


if (i > 0) {
session.setAttribute("uname", user);
//response.sendRedirect("index.jsp");
out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
response.sendRedirect("dashboard.jsp");
} else {
response.sendRedirect("reg.jsp");

}
	

%>