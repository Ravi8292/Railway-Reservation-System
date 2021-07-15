<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<title>INDIAN RAILWAYS</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
<body  background="image7.jpg"class="w3-light-grey">

<!-- w3-content defines a container for fixed size centered content, 
and is wrapped around the whole page content, except for the footer in this example -->
<div class="w3-content" style="max-width:1400px">

<!-- Header -->
<header class="w3-container w3-center w3-padding-32"> 
  <h1><b>DASHBAORD</b></h1>
<p><H4>Welcome to Indian Raiway</H4></p>
</header>

<!-- Grid -->
<div class="w3-row">

<!-- Blog entries -->
<div class="w3-col l8 s12">
  <!-- Blog entry -->
  <div class="w3-card-4 w3-margin w3-white">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="train1.jpg" alt="train1">
    </div>

    <div class="item">
      <img src="train6.jpg" alt="train6">
    </div>

    <div class="item">
      <img src="train4.jpg" alt="train4">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  </div>
  <hr>

  <!-- Blog entry -->
  <div class="w3-card-4 w3-margin w3-white">
  <img src="train2.jpg" alt="Norway" style="width:100%">
    <div class="w3-container">
      <h3><b>EDUBRIDGE INDIA</b></h3>
      <h5>BATCH <span class="w3-opacity">5355</span></h5>
    </div>

    <div class="w3-container">
      <div class="w3-row">
        <div class="w3-col m8 s12">
         
        </div>
        <div class="w3-col m4 w3-hide-small">
        </div>
      </div>
    </div>
  </div>
<!-- END BLOG ENTRIES -->
</div>

<!-- Introduction menu -->
<div class="w3-col l4">
  <!-- About Card -->
  <div class="w3-card w3-margin w3-margin-top">
  <img src="train7.jpg" style="width:100%">
    <div class="w3-container w3-white">
    </div>
  </div><hr>
  
  <!-- Posts -->
  <div class="w3-card w3-margin">
    <div class="w3-container w3-padding">
      <h4>Plan Journey</h4>
    </div>
    <form action="search.jsp" method="post">
  <div class="imgcontainer">
    <img src="indian railway.png" alt="Avatar" class="avatar" style="width:10%">
  </div>

  <div class="container">
    <label for="from"><b>From</b></label>
    <input type="text" placeholder="Enter From where you want to travel" name="from" required>
    <br>

    <label for="to"><b>To</b></label>
    <input type="text" placeholder="Enter upto where you want to reached" name="to" required>
      <br>   
    <button type="submit">Search</button>
     <br>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    
  </div>
</form>
  </div>
  <hr> 
 
  <!-- Labels / tags -->
  <div class="w3-card w3-margin">
    <div class="w3-container w3-padding">
      <h4>ABOUT</h4>
    </div>
    <div class="w3-container w3-white">
    <p>The history of Indian Railways dates back to over 160 years ago. 
    On 16th April 1853, the first passenger train ran between Bori Bunder (Bombay) and Thane, 
    a distance of 34 km. It was operated by three locomotives, named Sahib, Sultan and Sindh,
     and had thirteen carriages. The photo to the right, while capturing a scene from the 
     early days of railways in India, features a train pulled by a single locomotive,
      and is widely - but incorrectly - believed to be that first service.
    </p>
    </div>
  </div>
  
<!-- END Introduction Menu -->
</div>

<!-- END GRID -->
</div><br>

<!-- END w3-content -->
</div>

<!-- Footer -->
<footer class="w3-container w3-dark-white w3-padding-32 w3-margin-top">
  <p>Code Written by :- <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">Ravi Goswami</a></p>
</footer>

</body>
</html>

<%
if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Log out</a>
<%
}
%>
