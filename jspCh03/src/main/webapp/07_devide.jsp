<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--JSP 페이지에서 에러가 발생했을 때 보여줄 에러 페이지로서 error.jsp를 설정한다. --%>
<%@ page errorPage="error.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

0으로 나누는 것은 불가능
<%--강제로 예외를 발생시킨다--%>
<%= 2/0 %>
</body>
</html>