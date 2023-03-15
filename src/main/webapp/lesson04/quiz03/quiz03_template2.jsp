<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <style>
  	#wrap{height:1000px;}
  	header{height:80px; color:#ffffff;background-color:#FF7F50;}
  	nav{height:60px;background-color:#FF7F50;}
  	.menu{font-size:22px;}
  	.menu a{color:#ffffff; font-weight:bold;}
  	.menu a:hover{color:#B2EBF4;}
  	.contents{height:700px;}
  	.content-list{gap:20px 20px; padding-top:10px;}
  	.img-box{width:320px;height:213px;}
  	.list-box{padding:12px; width:350px;height:310px;border: 2px solid #FF7F50;}
  	.list-box:hover{background-color:#B2EBF4;}
  	.title-text{font-size:14px;font-weight:bold;}
  	.insert-box{padding-top:50px;padding-left:50px;}
  	.nickname{color:#FF7F50}
  	footer{height:80px;}
  </style>
</head>
<body>
	<div id="wrap" class="container bg-dark">	
			<jsp:include page="header.jsp"/>
			<jsp:include page="menu.jsp"/>
			<div class="contents bg-info">
				<jsp:include page="content_insert.jsp"/>
			</div>		
			<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>