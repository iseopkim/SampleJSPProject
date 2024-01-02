<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<%@ include file="static/common_style.html" %>
<%@ include file="static/main_style.html" %>

<c:choose>
	<c:when test="${cookie.UID != null}">
		<title>GoodMorning</title>
		<div>
			${cookie.UID.value}으로 로그인함
			<a href="logout.jsp">로그아웃</a>
			<a href="delete.jsp">회원탈퇴</a>
		</div>
		<div class="widget">
			<div>To-do</div>
			<a href="#" onClick="window.open('todo_form.jsp','name','width=600,height=400')">+</a>
			
		</div>
		<div class="widget">
			<div>날씨</div>
		</div>
		<div class="widget">
			<div>캘린더</div>
		</div>
		<div class="widget">
			<div>뉴스</div>
		</div>
		<div class="widget">
			<div>금융</div>
		</div>
	</c:when>
	<c:otherwise>
		<div>로그인 정보가 없습니다.</div>
		<a href="index.jsp">로그인하기</a>
	</c:otherwise>
</c:choose>

