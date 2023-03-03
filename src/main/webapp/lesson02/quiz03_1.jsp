<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
</head>
<body>
	<%
		int height = Integer.parseInt(request.getParameter("height"));
		int weight = Integer.parseInt(request.getParameter("weight"));
		// BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
		double bim = weight / ((height / 100.0) * (height / 100.0));
	%>
</body>
</html>