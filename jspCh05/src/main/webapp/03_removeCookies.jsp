<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>removeCookies</title>
</head>
<body>

	<%
		Cookie c = new Cookie("id", "");
		c.setMaxAge(0);	//유효기간을 0으로 설정 하고
		response.addCookie(c); //클라이언트로 전송한다.
	%>
	
	<h3>쿠키 삭제 완료!</h3>
	<a href="02_getCookies.jsp">쿠키 삭제 내역 확인</a>
</body>
</html>