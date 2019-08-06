<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" href="water.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>hotel results</title>
</head>

<body>

	<video autoplay loop muted
		poster="http://video2.ignitemotion.com/files/mp4/sunset_waves.mp4"
		id="video">
		<source
			src="http://video2.ignitemotion.com/files/mp4/sunset_waves.mp4"
			type="video/mp4">
	</video>
	<div class="jumbotron"
		style="color: white; background-image: url(lifeguard.png); background-size: auto; background-repeat: no-repeat">
	
		<div class="container">
	<h1 class="display-3"> Here are the hotels in ${city}! </h1>
		<table class="table" >
			<thead>
				<tr class="table-warning">
				
					<th>Name</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="hotel" items="${hotel}">
					<tr class="table-primary">
			
			
						<td>${hotel.name}</td>
						
						<td>${hotel.pricePerNight}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
		<a class="btn btn-primary btn-lg" role="button" href="/">Home</a></div>
</body>
</html>