<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	String hobby2 = "";
	if(request.getParameterValues("hobby")!=null){
		
		String[] hobby = request.getParameterValues("hobby");
		for(String hob:hobby){
			hobby2 += hob+" ";
		}
	}
	
	Enumeration paramEnum = request.getParameterNames();
	String[] name2 = new String[4];
	int i = 0;
	while(paramEnum.hasMoreElements()){
		String name = (String)paramEnum.nextElement();
		name2[i] = name;
		i++;
		out.print(name + "<br>");
	}

%>
	이름 : <%=request.getParameter("name") %><br>
	소개 : <%=request.getParameter("introduce") %><br>
	나이 : <%=request.getParameter("age") %><br>
	취미 : <%=hobby2 %><br>
	<hr>
	이름 : <%=request.getParameter(name2[0]) %><br>
	소개 : <%=request.getParameter(name2[1]) %><br>
	나이 : <%=request.getParameter(name2[2]) %><br>
	<% 
		String hobby3 = "";
		if(request.getParameterValues(name2[3])!=null){
			String[] hobby4 = request.getParameterValues("hobby");
			for(String hob:hobby4){
				hobby3 += hob+" ";
			}
		}
	%>
	취미 : <%=hobby3 %>
</body>
</html>