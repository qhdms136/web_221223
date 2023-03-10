<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>길이 변환</title>
</head>
<body>
	<%-- <%
		//nt number = Integer.parseInt(request.getParameter("number"));
	
		// checkbox처럼 여러 파라미터가 넘어올 때 getParamterValues
		//String[] unitArr = request.getParameterValues("unit");
		// ArrayList<String> list = new ArrayList<>();
		/* if(unitArr != null){
			double result = 0;
			for(int i = 0; i < unitArr.length; i++){
				if (unitArr[i].equals("인치")){
					result = number * 0.393701;
					list.add(String.valueOf(result + " in"));
				} else if (unitArr[i].equals("야드")){
					result = number * 0.010936;
					list.add(String.valueOf(result + " yd"));
				} else if (unitArr[i].equals("피트")){
					result = number * 0.032808;
					list.add(String.valueOf(result + " ft"));
				} else if (unitArr[i].equals("미터")){
					result = number * 0.01;
					list.add(String.valueOf(result + " m"));
				} else{}
			}
		} */
	%>
	<h1>길이 변환 결과</h1>
	<h3><%= number %>cm</h3>
	<hr>
	<h3>
		<% 
			for(int i = 0; i < list.size(); i++){
				out.println(list.get(i)+ "<br>");
			}
		%>
		
	</h3> --%>
	<%
	int cm = Integer.parseInt(request.getParameter("length"));

	// checkbox같은 여러 파라미터를 받아올 때
	String[] types = request.getParameterValues("type");
	%>

	<div class="container">
		<h1>길이 변환 결과</h1>
		
		<h3><%=cm%>cm</h3>
		<hr>
		<h2>
		<%
			for (String type : types) {
				if (type.equals("inch")) {
					double inch = cm * 0.39;
					out.print(inch + " in <br>");
				} else if (type.equals("yard")) {
					double yard = cm * 0.010936133;
					out.print(yard + " yd <br>");
				} else if (type.equals("feet")) {
					double feet = cm * 0.032808399;
					out.print(feet + " ft <br>");
				} else if (type.equals("meter")) {
					double meter = cm / 100.0;
					out.print(meter + " m <br>");
				}
			}
		%>
		</h2>
	</div>
</body>
</html>