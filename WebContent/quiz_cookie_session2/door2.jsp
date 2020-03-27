<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="index.jsp" %>	
	<%
		if((String)session.getAttribute("loginUser")==null){
			response.sendRedirect("login.jsp");
		}
		String nick = (String)session.getAttribute("loginUser");
	%>
	<%=nick %>님 로그인 상태입니다<br>
	<input type="button" onclick="location.href='main.jsp';" value="main이동">
	
</body>
</html>