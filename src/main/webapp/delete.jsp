<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="memberDao" class="com.goodmorning.member.MemberDAO" scope="page"/>

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
	<c:when test="<%= memberDao.deleteOne(userId) %>">
		<% 
			for(Cookie c : cookies) {
				if(c.getName().equals("UID")) {
					c.setMaxAge(0);
					response.addCookie(c);
				}
			}
		%>
		<div>회원 탈퇴 완료</div>
		<a href="index.jsp">돌아가기</a>
	</c:when>
	<c:otherwise>
		<div>회원 탈퇴 실패</div>
		<a href="index.jsp">돌아가기</a>
	</c:otherwise>
</c:choose>