<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testLogin</title>
</head>
<body>
<%
//변수는 로컬 변수
String id="pinksung";
String pwd="1234";
String name="하색기";
request.setCharacterEncoding("UTF-8");
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))) {
		response.sendRedirect("04_main.jsp?name= " + URLEncoder.encode(name, "UTF-8"));
		/* sendRedirect시에 쿼리 스트링으로 name의 값을, 
		 * 변수 name 값 성윤정을 UTF-8로 인코딩하여 보낸다.
		*/
	}
	else{
		response.sendRedirect("04_loginForm.jsp");
}

%>
</body>
</html>