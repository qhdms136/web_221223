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
	<%
		int number = Integer.parseInt(request.getParameter("number"));
	
		// checkbox처럼 여러 파라미터가 넘어올 때 getParamterValues
		String[] unitArr = request.getParameterValues("unit");
		ArrayList<String> list = new ArrayList<>();
		if(unitArr != null){
			double result = 0;
			for(int i = 0; i < unitArr.length; i++){
				if (unitArr[i].equals("인치")){
					result = number * 0.393701;
					list.add(String.valueOf(result));
				} else if (unitArr[i].equals("야드")){
					result = number * 0.010936;
					list.add(String.valueOf(result));
				} else if (unitArr[i].equals("피트")){
					result = number * 0.032808;
					list.add(String.valueOf(result));
				} else if (unitArr[i].equals("미터")){
					result = number * 0.01;
					list.add(String.valueOf(result));
				} else{}
			}
		}
	%>
	<h1>길이 변환 결과</h1>
	<h3><%= cm %>cm</h3>
	<hr>
	<%=list %>
</body>
</html>