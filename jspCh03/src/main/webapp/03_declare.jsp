<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_declare</title>
</head>
<body>
<%! //선언부
	String str = "안녕하냐?"; //멤버변수(변환되는 서블릿에서, jsp내부에서는 어디서나 사용가능)
	int a = 5, b = -5;
	
	public int abs(int n) { //멤버 메서드
		if(n < 0) {
			n = -n;
		}
		return n;
	}
%>

<% //사용부
		//out은 출력 처리를 하는 내장 객체
		out.print(str + "<br>");
		out.print(a + "의 절대값 : " + abs(a) + "<br>");
		out.print(b + "의 절대값 : " + abs(a) + "<br>");
%>
</body>
</html>