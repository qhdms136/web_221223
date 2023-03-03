<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		private int sum = 0;
		private int number;
		public void getSum(int number){
			this.number = number;
			for(int i = 0; i < number; i++){
				sum += number;
			}
			System.out.print("합:" + sum);
		}
	%>
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		double average = 0.0;
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
		average = sum / 5.0;
	%>
	<strong>평균 점수는 : <%=average %> 입니다.</strong>
	
	<% List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"}); %>
</body>
</html>