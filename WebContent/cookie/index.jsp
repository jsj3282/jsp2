<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	cookie 폴더 -> index.jsp 생성
	<br>
	<h1 style="color: skyblue">CARE LAB</h1>
	<h3>방문해 주셔서 감사합니다</h3>
	<!-- cookie는 클라이언트에서 보관한다 , session은 서버에서 관리한다.-->
	<%
		boolean boo = false;
		Cookie cookieArr[] = request.getCookies();
		if (cookieArr != null) {
			for (Cookie c : cookieArr) {
				out.print("name : " + c.getName()+"<br>");
				out.print("value : " + c.getValue()+"<hr>");
				if(c.getValue().equals("myCookie")){
					boo = true;
				}
			}
		}
		//Cookie cookie = new Cookie("testCookie", "myCookie");
		//cookie.setMaxAge(5); //cookie를 얼마동안 살려둘것인가? -> 5초동안
		//response.addCookie(cookie);
	%>
	<% if(!boo){%> 
	<script type="text/javascript">
		window.open("popup.jsp", "","width=500, height=300, top=500, left=500");
	</script>
	<%} %>
</body>
</html>