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
		double bmi = weight / ((height / 100.0) * (height / 100.0));
		/* String str;
		if(bmi >= 31){
			str = "비만";
		} else if (bmi >= 26 && bmi <= 30) {
			str = "과체중";
		} else if (bmi >= 21 && bmi <= 25) {
			str = "정상";
		} else if (bmi <= 20) {
			str = "저체중";
		} else {} */
	%>
	<h1>BMI 측정 결과</h1>
	<p>BMI 수치 : <%=bmi %></p>
</body>
</html>