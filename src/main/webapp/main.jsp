<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<%@ include file="static/common_style.html" %>

<c:choose>
	<c:when test="${cookie.UID != null}">
		<title>GoodMorning</title>
		<div>
			${cookie.UID.value}으로 로그인함
			<a href="logout.jsp">로그아웃</a>
			<a href="delete.jsp">회원탈퇴</a>
		</div>
		<div>
			<div>To-do</div>
		</div>
		<div>
			<div>날씨</div>
		</div>
		<div>
			<div>캘린더</div>
		</div>
		<div>
			<div>뉴스</div>
		</div>
		<div>
			<div>금융</div>
		</div>
	</c:when>
	<c:otherwise>
		<div>로그인 정보가 없습니다.</div>
		<a href="index.jsp">로그인하기</a>
	</c:otherwise>
</c:choose>

