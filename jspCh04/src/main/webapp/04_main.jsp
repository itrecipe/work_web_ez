<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
</head>
<body>

<%= request.getParameter("name") %>님 ㅎㅇ!
<%--
sendRedirect시 url?name=name형식의 쿼리로 올때에도 getParameter를 사용한다.
표현식 %= 자바 코드 또는 리터럴을 사용하며 ;은 사용하면 안된다.
--%>
 <br/>
 내 홈페이지에 방문해줘서 고마워요!<br/> 
 즐거운 시간 되세요!<br/>
</body>
</html>