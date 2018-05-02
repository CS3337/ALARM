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
		.sidenav {
		    height: 100%;
		    width: 200px;
		    position: fixed;
		    z-index: 1;
		    top: 0;
		    left: 0;
		    background-color: #111;
		    overflow-x: hidden;
		    padding-top: 20px;
		}
		.sidenav a {
		    padding: 6px 6px 6px 32px;
		    text-decoration: none;
		    font-size: 25px;
		    color: #818181;
		    display: block;
		}
		.sidenav a:hover {
		    color: #f1f1f1;
		}
		.main {
		    margin-top:20px;
		    margin-left: 250px;
		    margin-right: 50px;
		}
		@media screen and (max-height: 450px) {
		  .sidenav {padding-top: 15px;}
		  .sidenav a {font-size: 18px;}
		}
		</style>
		 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>

<body background="http://www.solidbackgrounds.com/images/2560x1440/2560x1440-cool-black-solid-color-background.jpg" style="color:white">
	
	<div class="sidenav">
		<a href="Homepage">Home</a>
		<a href="Photos">Photos</a>
		<a href="Videos">Videos</a>
		<a href="Live">Live</a>
		<a href="Settings">Settings</a>
		<a href="Logout">Logout</a>
	</div>
	
	<div class="main">
		<h1><strong>Recent Activity</strong></h1>
			<table id="myTable" class="table table-dark table-hover table-striped table-bordered" align="left">
				<th width="15%" onclick="sortTable(0)">Date</th>
				<th width="15%" onclick="sortTable(1)">Time</th>
				<th width="40%">Notes</th>
				<th width="15%"><center>View Image</center></th>
				<th width="15%"><center>View Recording</center></th>
				    <c:forEach var="row" items="${result.rows}">
				        <tr>
				        	<td>${row.date}</td>
				        	<td>${row.time}</td>
				       		<td>Description</td>
				            <td>
				            	<a href="${pageContext.request.contextPath}/CS3337/Photos?id=${row.id}"><center> View </center></a>
				            </td>
				            <td>
				            	<a href="${pageContext.request.contextPath}/CS3337/Videos?id=${row.id}"><center> View </center></a>
				            </td>
				        </tr>
				    </c:forEach>
			</table>
	</div>
	
	<script>
	
    $(function () {
        $('td').dblclick(function (event) {

            $(this).html('<input id="change_value" type="text" >')

        });
		
 });
    $('body').on('keypress', "#change_value", function (e) {
        var key = e.which;
        if (key == 13)  // the enter key code
        {
            $(this).parent().html($(this).val());

        }
    });
    
	function sortTable(n) {
	  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
	  table = document.getElementById("myTable");
	  switching = true;
	  dir = "asc"; 
	  while (switching) {
	    switching = false;
	    rows = table.getElementsByTagName("TR");
	    for (i = 1; i < (rows.length - 1); i++) {
	      shouldSwitch = false;
	      x = rows[i].getElementsByTagName("TD")[n];
	      y = rows[i + 1].getElementsByTagName("TD")[n];
	      if (dir == "asc") {
	        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
	          shouldSwitch= true;
	          break;
	        }
	      } else if (dir == "desc") {
	        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
	          shouldSwitch= true;
	          break;
	        }
	      }
	    }
	    if (shouldSwitch) {
	      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
	      switching = true;
	      switchcount ++;      
	    } else {
	      if (switchcount == 0 && dir == "asc") {
	        dir = "desc";
	        switching = true;
	      }
	    }
	  }
	}
	</script>
	
	
</body>
</html>