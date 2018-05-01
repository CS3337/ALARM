<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALARM: Live</title>
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
		<h1><strong>Live Feed</strong></h1>
		<div id="twitch-embed"></div>
			<script src="https://embed.twitch.tv/embed/v1.js">
			</script>
			<script type="text/javascript">
			var embed = new Twitch.Embed("twitch-embed", {
		    	width: 854,
		        height: 480,
		        channel: "monstercat",
		        layout: "video",
		        autoplay: false
			});
				embed.addEventListener(Twitch.Embed.VIDEO_READY, () => {
		        var player = embed.getPlayer();
		        player.play();
		    });
	    	</script>
		</div>
	</div>
</body>
</html>