<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="post.jsp" method="post">
	<table border="1">
		<tr>
			<td>제 목</td>
			<td>조 회 수</td>
		</tr>
		<tr>
			<td><a href="post.jsp">안녕하세요</a></td>
			<td><%= request.getParameter("number") %></td>
		</tr>
	</table>
	</form>
</body>
</html>