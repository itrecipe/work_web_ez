<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>14_movieList.jsp</title>
</head>
<body>

<%
String[] movieList = {"타이타닉", "시네마 한국", "혹성 탈출", "킹콩"};
pageContext.setAttribute("movieList", movieList);
%>
<%--items로 EL사용시 attribute로 지정해야 사용가능하다. --%>
<c:forEach var="movie" items="${movieList}">
	${movie}<br/>
</c:forEach>
</body>
</html>