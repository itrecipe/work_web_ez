<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--위 코드는 지시자
  -- uri는 JSTL 종류 구분 식별자이며, 이를 간략하게 대신하는 접두사 prefix를 사용한다.
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_jstl.jsp</title>
</head>
<body>
<%--c:out은 인라인 표시 --%>
<c:out value="Hello"></c:out> <%--값 출력 --%>
<c:out value="Hello"/>
</body>
</html>