<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <script type="text/javascript" src="../js/search.js"></script>
    <title>Hello, world!</title>
  </head>
  <body>
    <div class="container bgb">
      <div class="row">
        <div class="col-md-12">
          <img src="images/banner.jpg"  style="width: 100%">
        </div>
      </div>
    </div>
    <div class="container bgw">
      <div class="row">
        <div class="col-md-12 bd mb-1" >
          <h4>Search Visitor</h4>
        </div>
        <div class="col-md-5">
          <label for="sfirstname">First Name:</label>
          <input type="text" name="sfirstname" id="myInput">
        </div>
        <div class="col-md-7">
          <button onclick="myFunction()">Search</button>
          <small>(Type First name Visitor and Click Search button)</small>
        </div>
        <div class="col-md-12">
          <table border="1px" id="myTable" class="col-md-12">
          <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Gender</th>
                <th>Telephone</th>
                <th>You're in</th>
                <th>Hobbies</th>
                <th>Description</th>
          </tr>
			<c:forEach items="${personals}" var="p">
			<tr>
			<td><a href="/amend?id=${p.personal_id}">${p.firstName}</a></td>
			<td>${p.lastName}</td>
			<td>${p.gender}</td>
			<td>${p.telephone}</td>
			<td>${p.location }</td>
			<td>${p.hobbies }</td>
			<td>${p.description}</td>
			</tr>
			</c:forEach>
            
          </table>
        </div>
      </div>
      <div class="footer"></div>
    </div>

    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  	
  </body>
</html>