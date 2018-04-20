<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource var="dataSrc"
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://cs3.calstatela.edu/cs3337stu02" 
	user="cs3337stu02"
	password="jHhtJPQl" />
	
<sql:query var="result" dataSource="${dataSrc}">
        SELECT id, date, time FROM ImageTable
</sql:query>
    
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
			width: 100%;
			white-space: nowrap;
		}
		.row-job {
			width: 30%;
		}
		.custom {
			margin-top:20px;
		}
		#background {
		    width: 100%; 
		    height: 100%; 
		    left: 0px; 
		    top: 0px; 
		}
		.stretch {
		    width:100%;
		    height:100%;
		}
		</style>
</head>

<body background="http://www.icanbecreative.com/res/freeweb/2011/04/gossip.png" style="color:white">
	<div class="container custom">
		<div class="row justify-content-between">
			<h1>ALARM Homepage</h1>
			<h4><a href='Settings'> Settings </a> - <a href='Logout'>Logout</a></h4>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="panel-body">		
				<table class="table table-dark table-hover table-striped table-bordered">
					<th width="15%">Date</th>
					<th width="15%">Time</th>
					<th width="40%">PlaceHolder</th>
					<th width="15%"><center>View Image</center></th>
					<th width="15%">View Recording</th>
				    <c:forEach var="row" items="${result.rows}">
				        <tr>
				        	<td>${row.date}</td>
				        	<td>${row.time}</td>
				        	<td>Placeholder</td>
				            <td>
				               <a href="${pageContext.request.contextPath}/CS3337/Homepage?id=${row.id}"><center> View </center></a>
				            </td>
				            <td>Video Link </td>
				        </tr>
				    </c:forEach>
				</table>	
			</div>
		</div>
	</div>
	
</body>
</html>