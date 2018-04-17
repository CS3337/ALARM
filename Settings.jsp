<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<h1><center>My Settings</center></h1>
<h4><center><a href='Homepage'> Home </a>  - <a href='Logout'>Logout</a></center></h4>
<!--<c:out value="This is a test JSTL page" /> -->
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="panel-body">
                <center>
                <table class="table table-hover table-striped table-bordered">
                   <tr>
    					<th>Option</th>
    					<th>Choices</th> 
  				</tr>
 				<tr>
    					<td>Shutdown?</td>
    					<td><button>Power off</button></td>
  				</tr>
  				<tr>
    					<td>Reset?</td>
    					<td><button>Reset</button></td>
  				</tr>
  				<tr>
    					<td>Wipe Gallery?</td>
    					<td><button>Clear Data</button></td>
  				</tr>
                </table>
                </center>
            </div>
        </div>
    </div>
</div>

<img src="https://goo.gl/RxDRs7" alt="rattle">
</body>
</html>