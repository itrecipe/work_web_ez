<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page지시자</title>
</head>
<body>
<%
	Calendar date = Calendar.getInstance(); //현재 시각을 지닌 객체
	SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
	//문자열이나 날짜로 변환할떄 형식
	SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
%>

오늘은 <b><%= today.format(date.getTime()) %></b> 이다.<br>
<%--getTime은 Calendar 객체를 Date 객체로 변환한다.--%>
지금 시각은 <b><%= now.format(date.getTime()) %></b> 이다.

</body>
</html>