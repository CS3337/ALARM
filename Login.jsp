<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:useBean class="models.BGBean" id="bg"/>

<style>
.custom{
  margin-top:30px;
}
</style>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
		<style type="text/css">
			<jsp:setProperty name="bg" property ="*" />
			body {
				background-color: rgb(  ${bg.r},
										${bg.g},
										${bg.b} );
			}
		</style>
</head>
<body>

<body>
<div class="container-fluid">
	<div class="row">
		<div class=" col-sm-2 col offset-5">
			<div class="jumbotron text-center custom">
				<h1 class="display-4">ALARM</h1>
				<h4>A Loud Armed Raspberry Machine</h4>
			</div>
			
				<form action="Login" method="post">
					<div class="form-group">
						<label>Username (E-mail Address)</label> 
						<input class="form-control" type="text" name="username" placeholder="Email">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input class="form-control" type="password" name="password" placeholder="Password">
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="rememberMe">Remember Me </label>
					</div>
						<button type="submit" class="btn btn-primary">Login</button>
						<b> Temp Login: abcd/1234</b>
					</div>
				</form>
		</div>
	</div>
</div>

</body>
</html>