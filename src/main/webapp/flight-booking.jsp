<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Flight Booker</title>

</head>
<body>
	<form:form id="form" modelAttribute="mavAtt" action="booking-detail"
		method="post">
		<table align="center">
			<tr>
				<td>Trip: One-Way <form:radiobutton path="trip" value="otrip"/>
					Round-Trip <form:radiobutton path="trip" value="rtrip"/><br>
				</td>
			</tr>

			<tr>
				<td>From : </td>
				<td><form:select path = "from">
						<form:option value="None">Select</form:option>
						<form:option value="Baltimore">Baltimore</form:option>
						<form:option value="Philadelphia">Philadelphia</form:option>
						<form:option value="Newark">Newark</form:option>
						<form:option value="New Jersey">New Jersey</form:option>
						<form:option value="Washington D.C.">Washington D.C.</form:option>
				</form:select></td>
			</tr>

			<tr>
				<td>To :</td>
				<td><form:select path = "to">
						<form:option value="None">Select</form:option>
						<form:option value="Baltimore">Baltimore</form:option>
						<form:option value="Philadelphia">Philadelphia</form:option>
						<form:option value="Newark">Newark</form:option>
						<form:option value="New Jersey">New Jersey</form:option>
						<form:option value="Washington D.C.">Washington D.C.</form:option>
				</form:select>
				</td>
			</tr>
			<tr>
				<td>Airlines : </td>
				<td>
						<form:select path="airline">
						<form:option value="None">Select</form:option>
						<form:option value="United Airlines">United Airlines</form:option>
						<form:option value="American Airlines">American Airlines</form:option>
						<form:option value="Spirit Airlines">Spirit Airlines</form:option>
				</form:select>
				</td>
			</tr>
			<tr>
				<td align="left"><form:button id="process" name="process">Process</form:button>
				</td>

			</tr>
		</table>
	</form:form>
	
</body>

</html>