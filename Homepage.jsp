<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<%-- Section Brandon added into the code --%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://cs3.calstatela.edu/cs3337stu02" 
	user="cs3337stu02"
	password="jHhtJPQl" />
	
<c:if test="${not empty sql}">
	<c:catch var="catchException">
		<sql:query var="sqlquery">
			${sql}
		</sql:query>
	</c:catch>
</c:if> 

<%-- End of section --%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALARM</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style>
table, td, th {
	border: 1px solid black;
}

table {
	table-layout: fixed;
	width: 100%;
	white-space: nowrap;
}

.row-job {
	width: 30%;
}
</style>
</head>
<body>
	<h1>
		<center>Welcome to the ALARM Homepage</center>
	</h1>
	<h4>
		<center>
			<a href='Settings'> My Settings </a> - <a href='Logout'>Logout</a>
		</center>
	</h4>
	<center>
		<select>
			<option selected disabled hidden>Sort by</option>
			<option value="newest">Most Recent</option>
			<option value="oldest">Oldest</option>
		</select>
	</center>
	<!--<c:out value="This is a test JSTL page" /> -->
	<div class="container">
		<div class="row">
			<div class="col-md-15">
				<div class="panel-body">
					<table class="table table-hover table-striped table-bordered">
						<tr>
							<th>URL</th>
							<th>Date</th>
						</tr>
						<tr>
							<td><a href='https://goo.gl/3NXWfY'>https://goo.gl/3NXWfY</a></td>
							<!-- Placeholder data -->
							<td>Taken @ 07:22 PM - 03/19/2018</td>
							<!-- This is placeholder data, the real time+date will be dynamically generated -->
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<%-- Section Brandon Added into the code --%>
	<div class="container">
		<div class="row">
			<div class="col-md-15">
				<div class="panel-body">
					<table class="table table-hover table-striped table-bordered">
						<tr>
							<c:forEach items="${sqlquery.columnNames}" var="heading">
								<th>${heading}</th>
							</c:forEach>
						</tr>
		
					<c:forEach items="${sqlquery.rowsByIndex}" var="row">
						<tr>
							<c:forEach items="${row}" var="col">
								<td>${col}</td>
							</c:forEach>
						</tr>
					</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	<%-- End of section --%>

</body>
</html>