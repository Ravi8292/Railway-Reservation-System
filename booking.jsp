<%@ page import ="java.sql.*" %>

<h1>Booking Page</h1>
<% out.println(request. getParameter("trainId")); %>
<!DOCTYPE html>
<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body background="image7.jpg">

<h3>Passenger Detail's</h3>

<div>
  <form action="bookeddb.jsp">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name..">

    <label for="country">Country</label>
    <select id="country" name="country">
      <option value="australia">NEPAL</option>
      <option value="canada">INDIA</option>
      <option value="usa">BHUTAN</option>
    </select>
     <label for="lname">AGE</label>
    <input type="text" id="age" name="age" placeholder="Your age..">

    <input type="text"style = "dispaly: none"  name="train_no"  value = "<% out.println(request. getParameter("trainId")); %>">
    
     <label for="gender">GENDER</label>
    <select id="gender" name="gender">
      <option value="male">MALE</option>
      <option value="female">FEMALE</option>
     
    </select>
  
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
