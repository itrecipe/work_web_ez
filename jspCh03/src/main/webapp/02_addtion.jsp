<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_addtion</title>
</head>
<body>
<!-- %는 jsp의 태그 -->
<%
//자바 코드를 사용하는 스크립트릿 태그
int num1 = 20;
int num2 = 10;
int add = num1 + num2;
out.print(num1 + " + " + num2 + " = " + add); //html에 출력
%>
</body>
</html>