<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11_jstlCore.jsp</title>
</head>
<body>

<c:set var="msg" value="Hello" scope="page"></c:set> 
<%--변수 msg설정 및 값 설정 scope는 생략되어 page이다. --%>
\${msg} = ${msg}<br/>
<%--\${}는 EL을 문자열로 간주 --%>
<c:set var="age">
30
</c:set>
<%--value를 내용에 추가--%>
\${age} = ${age}<hr/>
<c:set var="member" value=
"<%= new com.kook.jspCh07.MemberBean() %>"></c:set>
<%--빈 클래스를 변수로 설정하는 법 --%>
<c:set target="${member}" property="name" value="전수빈"></c:set>
<c:set target="${member}" property="userid">pinksubln</c:set>
<%--변수로 설정된 빈을 사용시 target속성을 사용해 EL로 값을 지정한다. --%>
\${nenber} = ${member}<hr>
<c:set var="add" value="${10 + 5}"></c:set>
\${add} = ${add}<br/>
<c:set var="flag" value="${10 > 5}"></c:set>
<%--value값에 EL연산 사용가능--%>
\${flag} = ${flag}<br/>
<c:remove var="age"/>
<%--변수제거--%>
<c:out value="${flag}"></c:out>
<%--EL만 사용하는것보다 c:out 사용을 권고한다.--%>
</body>
</html>