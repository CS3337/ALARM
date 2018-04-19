<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

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

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALARM: Home</title>
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
			width: 90%;
			white-space: nowrap;
		}
		.row-job {
			width: 30%;
		}
		.custom{
			margin-top:20px;
		}
		.bg-pref{
					background-size: cover;
					background-position: center center;
					background-repeat: no-repeat;
					width: 100%;
					height: 100%;
				}
		</style>
</head>

<body class="bg-pref" background="http://www.desktop-screens.com/data/out/92/3326669-raspberry-pi-wallpapers.png" style="color:white">
	<div class="container">
		<div class="row justify-content-between">
			<h1 style="color:white">Alarm Homepage</h1>
			<h4><a href='Settings'> Settings </a> - <a href='Logout'>Logout</a></h4>
		</div>
	</div>
	<div class="container" style="color:white">
		<div class="row custom">
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
				<div class="panel-body">
					<table class="table table-hover table-striped table-bordered" style="column-width: auto">
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
	<%-- End of section --%>

</body>
</html>