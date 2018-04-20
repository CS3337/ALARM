<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALARM: Settings</title>
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
			<h1>Settings</h1>
			<h4><a href='Homepage'> Home </a> - <a href='Logout'>Logout</a></h4>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="panel-body">
				<table class="table table-dark table-hover table-striped table-bordered">
	               	<tr>
	    				<th>Option</th>
	    				<th>Choices</th> 
					</tr>
					<tr>
		   				<td>Shutdown?</td>
		   				<td><button class="btn btn-danger btn-sm">Shut Down</button></td>
		 			</tr>
		 			<tr>
		   				<td>Reset?</td>
		   				<td><button class="btn btn-danger btn-sm">Reset</button></td>
		 			</tr>
		 			<tr>
		   				<td>Wipe Gallery?</td>
		   				<td><button class="btn btn-danger btn-sm">Wipe</button></td>
		 			</tr>
	               </table>
	        </div>
	    </div>
	</div>

<img src="https://goo.gl/RxDRs7" alt="rattle">
</body>
</html>