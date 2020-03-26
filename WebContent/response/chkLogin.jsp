<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> chkLogin.jsp<br>
	<%
		String id = "1", pwd = "1",  name = "홍길동";
		request.setCharacterEncoding("utf-8");
		if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
			response.sendRedirect("main.jsp");
		}else{%>
			<script type="text/javascript">
				alert("로그인 실패");
				location.href="loginForm.jsp";
			</script>	
			<% 
			//response.sendRedirect("loginForm.jsp");
		}
	%>

</body>
</html>