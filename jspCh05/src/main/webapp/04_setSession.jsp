<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setSession</title>
</head>
<body>

<%-- session은 내장 객체, setAttribute(문자열명, Object형 값); 형태로 사용
  -- session은 브라우저당 1개를 생성해서 브라우저를 종료시킬때까지 위치한다.
  -- session에는 여러개의 속성을 가질 수 있다.
  -- session은 HttpSession클래스의 내장 객체이다.
--%>
<%
session.setAttribute("id", "pinksung");
session.setAttribute("pwd", "test1234");
session.setAttribute("age", 20);
%>
<h3>세션 설정</h3>

<a href="05_getSession.jsp">설정된 session 속성 확인</a>
<a href="06_getSessions.jsp">설정된 session 모든 속성 확인</a>

</body>
</html>