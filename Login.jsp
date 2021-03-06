<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALARM: Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<style>
		.customWidth{
			margin-right:10px;
		}
		.custom{
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

<body background="http://www.solidbackgrounds.com/images/2560x1440/2560x1440-cool-black-solid-color-background.jpg">
<body>
<div class="container">
	<div class="row justify-content-center">
		<div class=" col-5">
			<div style="background:white" class="jumbotron text-center custom">
				<h1>ALARM</h1>
				 <hr class="my-4">
				<h4>A Loud Armed Raspberry Machine</h4>
			</div>
			
			<div style="background:white" class="jumbotron">
				<form action="Login" method="post">
					<div class="form-group">
						<label>Username (E-mail Address)</label> 
						<input class="form-control" type="text" name="username" placeholder="alarmuser">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input class="form-control" type="password" name="password" placeholder="1234">
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="rememberMe"> Remember Me </label>
					</div>
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

</body>
</html>