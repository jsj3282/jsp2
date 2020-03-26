<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<%response.setCharacterEncoding("utf-8"); %>
<% 
	String[] hobby = request.getParameterValues("hobby");
	String hobby2 = "";
	for(String hob:hobby){
		hobby2 += hob+" ";
	}

%>
	이름 : <%=request.getParameter("name") %><br>
	소개 : <%=request.getParameter("introduce") %><br>
	나이 : <%=request.getParameter("age") %><br>
	취미 : <%=hobby2 %><br>
</body>
</html>