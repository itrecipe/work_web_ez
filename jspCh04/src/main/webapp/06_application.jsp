<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application.jsp</title>
</head>
<body>

<%	
	/* 로컬변수
	 * application 내장 객체는 프로젝트(웹 애플리케이션)당 1개 생성됨
	 * ServletContext인터페이스를 구현한 객체	
	 */
	String appPath = application.getContextPath(); //jspCh04
	String filePath = application.getRealPath("06_application.jsp");
	//D:\h\apache-tomcat-9.0.71\wtpwebapps\jspCh04\06_application.jsp
	String serverInfo = application.getServerInfo();
	//Apache Tomcat/9.0.71
	application.setAttribute("name", "hyun"); //현 프로젝트의 모든 jsp에서 사용가능
	application.getAttribute("name");
%>
웹 애플리케이션의 컨텍스트 패스명<br/>
<b><%=appPath%></b><hr>
웹 애플리케이션 파일 경로명<br/><br/>
<b><%=filePath%></b><br/><br/>
컨테이너 명과 버전을 반환<br/><br/>
<b><%=serverInfo%></b>
</body>
</html>