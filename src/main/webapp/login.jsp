<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="memberDto" class="com.goodmorning.member.MemberDTO" scope="page"/>
<jsp:useBean id="memberDao" class="com.goodmorning.member.MemberDAO" scope="page"/>
<jsp:setProperty name="memberDto" property="*"/>

<c:choose>
	<c:when test="<%= memberDao.isCorrectCred(memberDto.getUserId(), memberDto.getUserPw()) %>">
		<% 
			Cookie cookie = new Cookie("UID", memberDto.getUserId());
			response.addCookie(cookie);
			response.sendRedirect("main.jsp");
		%>
	</c:when>
	<c:otherwise>
		<div>비회원이거나 비밀번호가 틀렸습니다.</div>
		<a href="index.jsp">돌아가기</a>
	</c:otherwise>
</c:choose>