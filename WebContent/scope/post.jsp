<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		out.print("<h1>" + "게시글 입니다" + "</h1>");
	
	</script>
	<%
		int number = 1;
		application.setAttribute("name", "application man");
		
	%>
	<h1>게시글 입니다</h1>
	<h3>공지사항 입니다</h3>
	jsp application을 이용한<br>
	조회수 올리기 문제입니다
	<a href="board.jsp">돌아가기</a>
	<!-- <a href="">돌아가기</a>-->
</body>
</html>