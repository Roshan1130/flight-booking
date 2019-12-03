<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Flight Booker</title>
<meta name="viewport" content="width=device-width, initial-scale=5">
<style>
.dropbtn {
	background-color: #dcbdb6;
	color: white;
	padding: 2px;
	font-size: 14px;
	border: none;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 2px 2px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
</style>
</head>
<body>
	<form:form id="form" modelAttribute="mavAtt" action="flight-booking"
		method="post">
		<table align="center">
			<tr>
				<td>Trip: <input type="radio" name="trip" value="otrip">
					One-Way <input type="radio" name="trip" value="rtrip">
					Round-Trip<br>
				</td>
			<td><form:input path="trip" name="trip" id="trip"/></td>

			</tr>
			<tr>
				<td>From :
					<div class="dropdown">
						<button class="dropbtn">Select</button>
						<div class="dropdown-content">
							<a href="#">Baltimore</a> <a href="#">Austin</a> <a href="#">Washington
								D.C.</a> <a href="#">Dulles</a> <a href="#">Philadelphia</a>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>To :
					<div class="dropdown">
						<button class="dropbtn">Select</button>
						<div class="dropdown-content">
							<a href="#">Baltimore</a> <a href="#">Austin</a> <a href="#">Washington
								D.C.</a> <a href="#">Dulles</a> <a href="#">Philadelphia</a>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>Airlines :
					<div class="dropdown">
						<button class="dropbtn">Select</button>
						<div class="dropdown-content">
							<a href="#">American Airlines</a> <a href="#">Spirit Airlines</a>
							<a href="#">United Airlines</a>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td><form:label path="price"> Name : </form:label></td>
				<td><form:input path="price" name="price" id="price" /></td>
			</tr>

		</table>
	</form:form>
</body>

</html>