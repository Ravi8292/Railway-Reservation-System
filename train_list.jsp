<%@ page import ="java.sql.*" %>
<%
String from = session.getAttribute("station_from").toString();   
String to = session.getAttribute("station_to").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test100",
"root", "Root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from route where station_from = '" + from + "' and station_to = '" + to + "'");
%>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container">
  <h2>Train Running on this Route</h2>
  <p>Train Lists</p>

  <table class="w3-table w3-striped w3-border">
    <tr>
      <th>SL.No</th>
      <th>Train No</th>
      <th>Train Name</th>
    </tr>
    <%
    while(rs.next()){
    	%>
        <tr>
        <td><%=rs.getString("id") %></td>
        <td><%=rs.getString("train_no") %></td>
         <td><%=rs.getString("train_name") %></td>
      </tr>
      <% }%>
  </table>
</div>

</body>
</html>
