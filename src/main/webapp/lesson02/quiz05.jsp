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
	<!-- <div class="container">
		<form action="/lesson02/quiz05_1.jsp" method="post">
		<h1>길이 변환</h1>
		<div class="d-flex align-items-end">
			<input type="text" name="number" class="form-control col-3 mr-2">
			<span>cm</span>
		</div>
		<div class="mt-2">
			<label class="mr-2">인치</label><input type="checkbox" name="unit" value="inch" class="mr-2">
			<label class="mr-2">야드</label><input type="checkbox" name="unit" value="yard" class="mr-2">
			<label class="mr-2">피트</label><input type="checkbox" name="unit" value="feet" class="mr-2">
			<label class="mr-2">미터</label><input type="checkbox" name="unit" value="meter" class="mr-2"><br>
			<button type="submit" class="btn btn-success">변환하기</button>
		</div>
		</form>
	</div> -->
	<div class="container">
		<h1>길이 변환</h1>
		<form method="post" action="/lesson02/quiz05_1.jsp">
			<div class="d-flex">
				<input type="text" name="length" class="form-control col-2">
				<span class="ml-2 mt-3">cm</span>
			</div>
			
			<div class="mt-2">
				<label>인치 <input type="checkbox" value="inch" name="type"></label>
				<label class="ml-2">야드 <input type="checkbox" value="yard" name="type"></label>
				<label class="ml-2">피트 <input type="checkbox" value="feet" name="type"></label>
				<label class="ml-2">미터 <input type="checkbox" value="meter" name="type"></label>
			</div>
			
			<input type="submit" class="btn btn-success" value="변환하기">
		</form>
	</div>
</body>
</html>