<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="memberDto" class="com.goodmorning.member.MemberDTO" scope="page"/>
<jsp:useBean id="memberDao" class="com.goodmorning.member.MemberDAO" scope="page"/>
<jsp:setProperty name="memberDto" property="*"/>

<c:choose>
	<c:when test="<%=memberDao.isMember(memberDto.getUserId())%>">
		<div>이미 가입된 이메일 주소입니다.</div>
		<a href="register_form.jsp">다시 작성하기</a>
	</c:when>
	<c:otherwise>
		<c:choose>
			<c:when test="<%=memberDao.insertOne(memberDto)%>">
				<div>회원가입 성공</div>
				<a href="index.jsp">로그인 화면으로 이동하기</a>
			</c:when>
			<c:otherwise>
				<div>회원가입 실패</div>
				<a href="register_form.jsp">다시 시도하기</a>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>