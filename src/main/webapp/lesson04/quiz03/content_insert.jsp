<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="insert-box">
	<div class="display-3">물건 올리기</div>
	<div class="form-box">
		<form method="post" action="">
			<div>
			<%
				MysqlService ms = MysqlService.getInstance();
				ms.connect();
				
				String selectQuery = "select * from `seller`;";
				ResultSet res = ms.select(selectQuery);
				
			%>	
				<select name="id">
					<option value="아이디선택">-아이디 선택-</option>
				<%
				while(res.next()){
				%>
					<option value="<%= res.getInt("id")%>"><%= res.getString("nickname") %></option>
				<%
				} 
				%>
				</select>
			</div>
		</form>
	</div>
</div>