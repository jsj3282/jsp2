<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>delSession.jsp<br>
	
	<%
		//session.removeAttribute("age");
		//session.setMaxInactiveInterval(5);		//5초동안만 세션 유지
		session.invalidate();		//세션 바로 삭제
	%>
	<a href="setSession.jsp">setSession이동</a>&nbsp;&nbsp;
	<a href="getSession.jsp">getSession이동</a>&nbsp;&nbsp;
</body>
</html>