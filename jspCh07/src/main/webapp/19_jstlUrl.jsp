<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>19_jstlUrl.jsp</title>
</head>
<body>

<%--url값에 지정된 서버에 접속하여 데이터를 읽어와서 변수 var에 저장한다.
  --@include나 jsp:include와 유사하다.
--%>
<c:import url="http://localhost:8181/jspCh07/02_el.jsp" var="data"></c:import>
${data}
</body>
</html>