<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<%
		response.setCharacterEncoding("utf-8");
	%>
	<%
		int i = 0;
		Enumeration paramEnum = request.getParameterNames();
		String[] name2 = new String[3];
		while (paramEnum.hasMoreElements()) {
			String name = (String) paramEnum.nextElement();
			name2[i] = name;
			i++;
			out.print(name + "<br>");
		}
	%>
	이름 :
	<%=request.getParameter(name2[0])%><br> 성별 :
	<%=request.getParameter(name2[1])%><br>
	<%
		String season2 = "";
		if (request.getParameterValues(name2[2]) != null) {
			String[] season = request.getParameterValues(name2[2]);
			for (String sea : season) {
				season2 += sea + " ";
			}
		}
	%>
	좋아하는 계절 :
	<%=season2%><br>

	<%
		request.setCharacterEncoding("utf-8");
		Enumeration paramEnum2 = request.getParameterNames();
		while (paramEnum.hasMoreElements()) {
			String name = (String) paramEnum2.nextElement();
			if (name.equals("season")) {
				String se[] = request.getParameterValues(name);
				for (String s : se)
					out.print(name + ":" + s + "<br>");
			} else {
				out.print(name + ":" + request.getParameter(name) + "<br>");
			}
		}
	%>

</body>
</html>