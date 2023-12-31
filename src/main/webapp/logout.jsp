<%@ page language="java" contentType="text/html; charset=UTF-8" %>
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