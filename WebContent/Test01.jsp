<%@page import="java.util.Scanner"%>   <!-- jsp도 import가 가능하다 -->
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
		System.out.print("2 수 입력 : ");
		int num01 = new Scanner(System.in).nextInt();
		int num02 = new Scanner(System.in).nextInt();
		out.print("두 수 합 : " + (num01+num02));
	%>
</body>
</html>