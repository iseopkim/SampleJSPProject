<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<%@ include file="static/common_style.html" %>

<c:choose>
	<c:when test="${cookie.UID != null}">
		<title>New To-do</title>
		<form action="todo_insert.jsp" method="post">
			<div>Title</div><div><input type="text" name="todoTitle"></div>
			<br>
			<div>To-do</div><div><textarea name="todoContent"></textarea></div>
			<br>
			<button type="submit">저장</button>
		</form>
	</c:when>
	<c:otherwise>
		<div>로그인 정보가 없습니다.</div>
		<a href="index.jsp">로그인하기</a>
	</c:otherwise>
</c:choose>

