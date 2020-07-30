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
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <script type="text/javascript" src="../js/script.js"></script>
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
          <h4>Visitor Information</h4>
        </div>
        <div class="col-md-3"></div>
        <div class="col-md-6 bd">
          <form id="formPer" method="post">
          <input type="text" value="${personal.personal_id}" name="id" hidden>
            <table>
              <tr class="form-group">
                <td>
                  <label for="firstname">First Name:</label>
                </td>
                <td>
                  <input  class="form-control" type="text" id="firstName" name="firstName" required="required" value="${personal.firstName}"/>
                  <label for="firstName" generated="true" class="error"></label>
                </td>
              </tr>

              <tr class="form-group">
                <td>
                  <label for="lastName">Last Name:</label>
                </td>
                <td>
                  <input  class="form-control" type="text" id="lastName" name="lastName" required="required" value="${personal.lastName}s"/>
                  <label for="lastName" generated="true" class="error"></label>
                </td>
              </tr>

              <tr class="form-group">
                <td>
                  <label for="gender">Gender:</label>
                </td>
                <td>
                  <select id="gender" name="gender">
                    <option value="Male"  ${ personal.gender == "Male"?"selected=\"selected\"":""}>Male</option>
                    <option value="Female" ${ personal.gender == "Female"?"selected=\"selected\"":""}>Female</option>
                  </select>
                </td>
              </tr>

              <tr class="form-group">
                <td>
                  <label for="telephone">Telephone:</label>
                </td>
                <td>
                  <input  class="form-control" type="number" id="telephone" name="telephone" value="${personal.telephone }" />
                </td>
              </tr>

              <tr class="form-group">
                <td>
                  <label for="email">Email:</label>
                </td>
                <td>
                  <input  class="form-control" type="email" id="email" name="email" value="${personal.email}" />
                </td>
              </tr>

              <tr class="form-group">
                <td>
                  <label for="location">You are in:</label>
                </td>
                <td>
                  <input  type="radio" name="location" id="europe" value="europe" ${ personal.location == "europe"?"checked=\"checked\"":""}>
                  <label for="europe">Europe</label>
                  <input  type="radio" name="location" id="africa" value="africa" ${ personal.location == "africa"?"checked=\"checked\"":""}>
                  <label for="africa">Africa</label><br>
                  <input  type="radio" name="location" id="australia" value="australia" ${ personal.location == "australia"?"checked=\"checked\"":""}>
                  <label for="australia">Australia</label>
                  <input  type="radio" name="location" id="asia" value="asia" ${ personal.location == "asia"?"checked=\"checked\"":""} >
                  <label for="asia">Asia</label>
                  <input  type="radio" name="location" id="america" value="america" ${ personal.location == "america"?"checked=\"checked\"":""}>
                  <label for="america">America</label>
                </td>
              </tr>

              <tr class="form-group">
                <td>
                  <label for="hobby">What are your hobbies:</label>
                </td>
                <td>
                  <input type="checkbox" name="hobbies" id="swimming"  value="swimming" <c:forTokens items="${personal.hobbies}" delims="," var="hob">${hob eq "swimming"?"checked=\"checked\"":""}</c:forTokens> >
                  <label for="swimming">Swimming</label>
                  <input type="checkbox" name="hobbies" id="cooking" value="cooking" <c:forTokens items="${personal.hobbies}" delims="," var="hob">${hob eq "cooking"?"checked=\"checked\"":""}</c:forTokens>>
                  <label for="cooking">Cooking</label>
                  <input type="checkbox" name="hobbies" id="shopping" value="shopping" <c:forTokens items="${personal.hobbies}" delims="," var="hob">${hob eq "shopping"?"checked=\"checked\"":""}</c:forTokens> >
                  <label for="shopping">Shopping</label><br>
                  <input type="checkbox" name="hobbies" id="sport" value="sport" <c:forTokens items="${personal.hobbies}" delims="," var="hob">${hob eq "sport"?"checked=\"checked\"":""}</c:forTokens> >
                  <label for="sport">Sport</label>
                  <input type="checkbox" name="hobbies" id="dance" value="dance" <c:forTokens items="${personal.hobbies}" delims="," var="hob">${hob eq "dance"?"checked=\"checked\"":""}</c:forTokens>>
                  <label for="dance">Dance</label>
                  <input type="checkbox" name="hobbies" id="sing" value="sing" <c:forTokens items="${personal.hobbies}" delims="," var="hob">${hob eq "sing"?"checked=\"checked\"":""}</c:forTokens>>
                  <label for="sing">Sing</label>
                </td>
              </tr>
              <tr class="form-group">
                <td>
                  <label for="description">Description:</label>
                </td>
                <td>
                  <textarea rows="5" class="form-control" name="description" >${personal.description}</textarea>
                </td>
              </tr>
            </table>
            <div class="text-center">
              <button class="btn btn-primary" type="submit" formaction="/update">Save</button>
              <button class="btn btn-danger" type="submit" formaction="/drop">Delete</button>
              <button class="btn btn-warning" type="submit" formaction="/search">Cancel</button>
            </div>
          </form>
        </div>
        <div class="col-md-3"></div>
      </div>
      <div class="footer"></div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
  </body>
</html>