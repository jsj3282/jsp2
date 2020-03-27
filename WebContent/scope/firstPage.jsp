<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	firstPage.jsp<br>
	<h1>범주 알아보기</h1>
	<%
		pageContext.setAttribute("name", "page man");	//현재 page에서만 유지
		request.setAttribute("name", "request man");	//현재 page에서만 유지(그러나 다음 페이지로 값 전달 가능)
		session.setAttribute("name", "session man");	//브라우저가 살아있는 동안 유지
		application.setAttribute("name", "application man");	//서버가 살아있는 동안 유지
		//page->request->session->application 순으로 scope 범위가 커짐
		out.print("firstPage.jsp<br>");
		out.print("하나의 페이지 속성 : " + pageContext.getAttribute("name") + "<br>");
		out.print("하나의 요청 속성 : " + request.getAttribute("name")+"<br>");
		out.print("하나의 세션 속성 : " + session.getAttribute("name")+"<br>");
		out.print("하나의 애플리케이션 속성 : " + application.getAttribute("name")+"<br>");
		request.getRequestDispatcher("secondPage.jsp").forward(request, response);
		//response.sendRedirect()	//request값을 넘겨줄 수 없음
	%>
	<a href="secondPage.jsp">secondPage</a>
</body>
</html>