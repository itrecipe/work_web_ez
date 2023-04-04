<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getCookies</title>
</head>
<body>

<h3>클라이언트로부터 얻어온 Cookie</h3>
<%--개발자가 만드는 쿠키외에 서버가 자동으로 생성하는 기본 쿠키 JSESSIONID를 가진다.--%>
<%
Cookie[] cookies = request.getCookies();
for(Cookie c : cookies) {
	out.println(c.getName() + " : " + c.getValue() + "<br>");
}
%>

</body>
</html>