<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:choose>
	<c:when test='<%=session.getAttribute("isUnregisteration") == null %>'>
		<%
			Cookie[] cookies = request.getCookies();
			for(Cookie c : cookies) {
				if(c.getName().equals("UID")) {
					c.setMaxAge(0);
					response.addCookie(c);
				}
			}
			response.sendRedirect("index.jsp");
		%>
	</c:when>
	<c:otherwise>
		<div>회원 탈퇴 성공</div>
		<a href="index.jsp">돌아가기</a>
	</c:otherwise>
</c:choose>

<%
	if(session.getAttribute("id") != null) session.invalidate();
%>