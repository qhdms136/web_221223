<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="content-list d-flex flex-wrap justify-content-between">
	<%
		//DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		//DB select
		String selectQuery = "select A.*, B.*"
			+	" from `seller` as A"
			+	" join `used_goods` as B"
			+	" on A.id = B.sellerId"
			+	" order by A.id desc;";
		ResultSet res = ms.select(selectQuery);
	%>
	<%
		// 반복문
		while(res.next()){
	%>
		<article class="list-box">
			<img src="<%=res.getString("picture") %>" alt="<%= res.getString("title")%>" width="320">
			<div class="title-text mt-2"><%= res.getString("title") %></div>
			<div class="text-secondary"><%= res.getInt("price") %>원</div>
			<div class="nickname"><%= res.getString("nickname") %></div>
		</article>
	<%
		}	// 반복문 끝
	
		//DB 연결 해제
		ms.disconnect();
	%>
</div>