<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page errorPage = "error.jsp" %>		<!-- 에러가 발생하면 설정한 errorpage로 이동한다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>errorPage.jsp<br>
<%=10/0 %>

</body>
</html>