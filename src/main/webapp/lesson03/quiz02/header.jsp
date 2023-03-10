<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="d-flex align-items-center">
	<div class="logo mx-3">
		<a href="/lesson03/quiz02/list_layout.jsp">Melong</a>
	</div>
	<form action="/lesson03/quiz02/info_layout.jsp" method="get">
	<div class="input-group">
		<input type="text" class="form-control" id="search" name="search">
		<button class="btn btn-info" type="submit">검색</button>
	</div>
	</form>
</header>