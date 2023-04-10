<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>memberUpdate</title>
<!-- 외부의 자바스크립트 파일 지정 -->
<script src="js/member.js"></script>
</head>
<body>

<h2>회원 수정</h2>
<form action="memberUpdate.do" method="post" name="frm">
	<table>
		<tr>
			<td>이름</td>
			<!-- setAttribute("mVo",mVo)의 mVo속성을 requestScope.mVo에서 resquestScope생략 -->
			<!-- readonly는 수정 불가 -->
			<td><input type="text" name="name" size="20" value="${mVo.name}" readonly></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="userid" size="20" value="${mVo.userid}" readonly></td>
		</tr>
		<tr>
			<td>암 &nbsp; 호</td>
			<td><input type="password" name="pwd" size="20">*</td>
		</tr>
		<tr height="30">
			<td width="80">암호 확인</td>
			<td><input type="password" name="pwd_check" size="20">*</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" size="20" value="${mVo.email}"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="phone" size="20" value="${mVo.phone}"></td>
		</tr>
		<tr>
			<td>등급</td>
			<td>
				<c:choose>
						<c:when test="${mVo.admin==0}">
								<input type="radio" name="admin" value="0" checked="checked"> 일반회원
								<input type="radio" name="admin" value="1"> 관리자
						</c:when>
						<c:otherwise>
								<input type="radio" name="admin" value="0"> 일반회원
								<input type="radio" name="admin" value="1" checked="checked"> 관리자
						</c:otherwise>
				</c:choose>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="확인"  onclick="return joinCheck()">
				<!-- return false이면 submit는 취소 true는 submit실행 -->
				<!-- 외부 자바스크립트 파일인 member.js사용 -->
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form>
</body>
</html>