<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! int global_cnt = 0; %>
<%-- 선언부의 변수는 전역변수(멤버변수)
선언 태그는 doctype위에 관례적으로 둔다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>count.jsp</title>
</head>
<body>
	<%--scriptlet으로 자바 코드를 서술,_jspService()내에 포함되어 실행한다. --%>
	<%
		int local_cnt = 0; //로컬변수
		out.print("<br/> local_cnt : ");
		out.print(++local_cnt);
		out.print("<br/> global_cnt : ");
		out.print(++global_cnt);
	%>
</body>
</html>