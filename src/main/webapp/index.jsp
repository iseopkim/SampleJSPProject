<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<%@ include file="static/common_style.html" %>
<title>Welcome</title>

<c:choose>
	<c:when test="${cookie.UID.value != null}">
		<c:redirect url="main.jsp"></c:redirect>
	</c:when>
	<c:otherwise>
		${cookie.UID}
		<form action="login.jsp" method="post">
			<div>
				<div>ID</div><div><input type="text" name="userId"></div>
				<br>
				<div>Password</div><div><input type="password" name="userPw"></div>
				<br>
				<input type="submit" value="로그인">
				<a href="register_form.jsp">회원가입</a>
			</div>
		</form>
	</c:otherwise>
</c:choose>