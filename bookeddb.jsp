<%@ page import ="java.sql.*" %>
<%
String fname = request.getParameter("firstname");
String lname = request.getParameter("lastname");
String country = request.getParameter("country");
String age = request.getParameter("age");    
String gender = request.getParameter("gender");
String train_no = request.getParameter("train_no");
//out.println("insert into booking (first_name, last_name, country, age, gender,train_no) values ('" + fname + "','" + lname + "','"+ country + "'," + age + ",'" + gender+"','"+ train_no +"')");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test100","root", "Root");
Statement st = con.createStatement();
ResultSet rs;
int i = st.executeUpdate("insert into booking (first_name, last_name, country, age, gender,train_no) values ('" + fname + "','" + lname + "','"+ country + "'," + age + ",'" + gender+"','"+ train_no +"')");



if (i > 0) {
session.setAttribute("first_name", fname);
session.setAttribute("train_no", train_no);
response.sendRedirect("bookingconfirm.jsp");
out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
} else {
	
response.sendRedirect("booking.jsp");
}
	/*if(pwd==confirm_password){
		out.print("Password  matching"); 
		response.sendRedirect("welcome.jsp");	
	}
	else{
		out.print("password not matched..try again");
				
	}*/

%>