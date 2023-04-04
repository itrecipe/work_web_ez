<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>17_paramValues</title>
</head>
<body>

님이 선택한 항목
<hr>
<%--form에서 복수개로 넘어온 파라미터(checkbox)는 EL에선 paramValues내장 객체를 사용한다.
  --paramValues.form의 name속성 값
--%>
<c:forEach var="item" items="${paramValues.item}" varStatus="status">${item} 
<c:if test="${not status.last}">,</c:if>
</c:forEach>

</body>
</html>