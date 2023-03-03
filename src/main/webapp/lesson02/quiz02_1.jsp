<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<title>Quiz02_1</title>
</head>
<body>
	<%
		String type = request.getParameter("type");
		
		Date now = new Date();
		SimpleDateFormat sdf = null;
		
		if(type.equals("time")){
			sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
		} else if(type.equals("date")){
			sdf = new SimpleDateFormat("오늘의 날자는 yyyy년 MM월 dd일 입니다.");
		}
		
		String result = sdf.format(now);
	%>
	<div class="container">
		<span class="display-4"><%=result %></span>
	</div>
</body>
</html>