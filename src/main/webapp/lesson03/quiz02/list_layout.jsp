<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜론</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <style>
  	#wrap{margin:auto;}
  	header{height:80px;font-size:28px;font-weight:bold;}
  	nav{height:60px;width:500px;}
  	.contents{height:650px;}
  	.content1{height:250px;}
  	.content2{height:400px}
  	footer{height:60px;}
  	.input-group{width:400px;height:40px;margin-left:50px;}
  	.menu a{color:#000000;font-weight:bold}
  	.menu a:hover{color:#1DDB16;}
  	.logo a{color:#1DDB16;text-decoration:none;}
  	.infofont{font-size:18px;font-weight:500;}
  	.info1{margin-left:50px;margin-bottom:100px;}
  	td a {text-decoration:none;}
  </style>
</head>
<body>
	<div id="wrap" class="container">
		<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
		
		
		<div class="contents">
		<jsp:include page="list_content.jsp"/>
		</div>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>