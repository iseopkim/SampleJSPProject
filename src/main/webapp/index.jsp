<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<%@ include file="static/common_style.html" %>
<title>Welcome</title>
<form action="login.jsp" method="post">
	<div>
		<div>ID</div><div><input type="text" name="id"></div>
		<br>
		<div>Password</div><div><input type="password" name="pass"></div>
		<br>
		<input type="submit" value="로그인">
		<a href="register_form.jsp">회원가입</a>
	</div>
</form>