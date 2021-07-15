<!DOCTYPE html>
<html>
<title>Indian Railways</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

body, html {
  height: 100%;
  line-height: 1.8;
}

/* Full height image header */
.bgimg-1 {
  background-position: center;
  background-size: cover;
  background-image: url("thank you page.png");
  min-height: 100%;
}

.w3-bar .w3-button {
  padding: 16px;
}
</style>
<body class = "bgimg-1">

 <p><center><H4 style = "color: White">Dear, <%String userid = session.getAttribute("first_name").toString(); out.println(userid);%>, <BR>Your Booking has been confirmed. <BR>Train No:<%= session.getAttribute("train_no").toString() %> </H4>
 <br><a href="search.jsp">GO Back</a>
 </center></p>






</body>
</html>
