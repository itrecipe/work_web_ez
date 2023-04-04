<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>propertyDemo</title>
</head>
<body>

<%--jsp:useBean으로 빈 클래스 객체 생성, scope는 디폴트로 page
  --jsp:getProperty와 setProperty로 빈클래스의 멤버 변수를 
  	getter와 setter메서드로 처리한다.
  --getProperty는 그 위치에 출력한다. 
--%>
<jsp:useBean id="member" class="com.kook.jspCh06.MemberBean"/>
<hr>
- 자바빈 객체 생성 후 저장된 정보 출력<br/><br/>
이름 : <jsp:getProperty name="member" property="name"/><br/><br/>
아이디 : <jsp:getProperty name="member" property="userid" />
<hr>
- 정보 변경 후 변경된 정보 출력
<jsp:setProperty property="name" name="member" value="전수빈"/>
<jsp:setProperty property="userid" name="member" value="pinksubin"/><br/><br/>
이름 :
<jsp:getProperty name="member" property="name"/><br/>
아이디 :
<jsp:getProperty name="member" property="userid"/>
</body>
</html>