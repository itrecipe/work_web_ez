<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testLogin</title>
</head>
<body>

그대가 입력한 정보(고전 방식)<hr>
ID : <%= request.getParameter("id") %><br/>
P/W : <%= request.getParameter("pwd") %><br/><br/>

그대가 입력한 정보(EL방식)
<hr/>
<%--param은 내장 객체로서 EL문에서 사용하며, 
    param은 getParameter를 사용할 경우에 쓴다.
--%>
ID : ${param.id}<br/>
P/W : ${param["pwd"]}
</body>
</html>