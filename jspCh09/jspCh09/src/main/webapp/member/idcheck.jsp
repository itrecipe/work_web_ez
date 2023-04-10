<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>idcheck</title>
<script src="js/member.js">
</script>
</head>
<body>

<h2>아이디 중복확인</h2>
<form action="idCheck.do" method="get" name="frm">
	아이디 <input type=text name="userid" value="${userid}"> 
	<input	type=submit value="중복 체크"> <br>
	<!-- 중복시 1 -->
	<c:if test="${result == 1}">  
		<script type="text/javascript">
			opener.document.frm.userid.value = "";
		</script>
		${userid}는 이미 사용 중인 아이디입니다.
	</c:if>
	<c:if test="${result==-1}">
		${userid}는 사용 가능한 아이디입니다.
	<input type="button" value="사용" class="cancel"	onclick="idok('${userid}')">
	</c:if>
</form>
</body>
</html>