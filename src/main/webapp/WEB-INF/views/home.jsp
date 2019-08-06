<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" href="water.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>home</title>
</head>
<body>
 <video autoplay loop muted poster="http://video2.ignitemotion.com/files/mp4/sunset_waves.mp4" id="video" >
        <source src="http://video2.ignitemotion.com/files/mp4/sunset_waves.mp4" type="video/mp4">
    </video>
    
    <div class="jumbotron" style=" color:white; background-image:url(lifeguard.png);background-size:auto; background-repeat:no-repeat">
 <h1 class="display-3">Welome to the hotel hot list</h1>
<h3>Pick a city from  the list to get started </h3>
<form action="/results" method="post">
  <select name="city" type= "text" >
    <option value="Detroit">Detroit</option>
    <option value="Miami">Miami</option>
    <option value="Chicago">Chicago</option>
 
  </select>
  <br><br>
  <input  class="btn btn-primary btn-lg" href="#" role="button" type="submit">
</form>
  
</div>
 

</body>
</html>