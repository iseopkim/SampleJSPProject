<%@ page language="java" contentType="text/html charset=UTF-8" %>
<jsp:useBean id="RegionIdDao" class="com.weather.RegionIdDao" scope="page"/>
<form action="template.jsp" method="post">
	<input name="reg_name" type="text"/>
	<input type="submit"/>
</form>
<% String regName = request.getParameter("reg_name"); %>
<p>해당 지역의 식별부호는 <%=RegionIdDao.resolve(regName) %>입니다.</p>