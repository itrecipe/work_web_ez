<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_select</title>
</head>
<body>
<form method="get" action="ss">
	<!-- 하나만 선택 -->
	<span style="float left; margin-right: 20px">
	<label for="job" name="job" size="1"></label>
		<select id="job" name="job" size="1"> <!-- size가 1이면 보통 combobox라고 한다. -->
			<option value="">선택해라</option>
			<option value="학생">학생</option>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="언론">언론</option>
			<option value="공무원">공무원</option>
			<option value="군인">군인</option>
			<option value="서비스업">서비스업</option>
			<option value="교육">교육</option>
		</select>
	<br/><br/>
	<!-- 다중선택 -->
	<label for="interest">관심분야</label>
		<select id="interest" name="interest" size="5" multiple="multiple"> <!-- multiple : 리스트박스 -->
			<option value="에스프레소">에스프레소</option>
			<option value="로스팅">로스팅</option>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="생두">생두</option>
			<option value="원두">원두</option>
			<option value="핸드드립">핸드드립</option>
		</select>
		<br/><br/>
		<input type="submit" value="전송"/>
	</span>
</form>
</body>
</html>