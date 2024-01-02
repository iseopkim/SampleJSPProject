<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="todoDto" class="com.goodmorning.todo.TodoDTO" scope="page"/>
<jsp:useBean id="todoDao" class="com.goodmorning.todo.TodoDAO" scope="page"/>
<jsp:setProperty name="todoDto" property="*"/>

<c:choose>
	<c:when test="${cookie.UID != null}">
		<% 
			String userId = "";
			Cookie[] cookies = request.getCookies();
			for(Cookie c : cookies) {
				if(c.getName().equals("UID")) {
					userId = c.getValue();
				}
			}
		%>
		<c:choose>
			<c:when test="<%=todoDao.insertOne(todoDto, userId)%>">
				<div>등록 성공</div>
			</c:when>
			<c:otherwise>
				<div>등록 실패</div>
			</c:otherwise>
		</c:choose>
	</c:when>
	<c:otherwise>
		<div>로그인 정보가 없습니다.</div>
		<a href="index.jsp">로그인하기</a>
	</c:otherwise>
</c:choose>
