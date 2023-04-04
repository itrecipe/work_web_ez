<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>17_movieList</title>
</head>
<body>
<%--begin은 시작 index(색인번호), end는 종료 index(포함), count는 반복횟수 --%>
<c:forEach var="cnt" begin="1" end="10" varStatus="status">
	${cnt}
	<c:if test="${not status.last}">,</c:if>
</c:forEach>
<br/><br/>
<table border="1" style="width: 100%;" text-align: center;>
	<tr>
		<th>index</th>
		<th>count</th>
		<th>cnt</th>
	</tr>
	<c:forEach var="cnt" begin="1" end="10" varStatus="status" step="2">
		<tr>
			<td>${status.index}</td>
			<td>${status.count}</td>
			<td>${cnt}</td>
	</c:forEach>
</table>
</body>
</html>