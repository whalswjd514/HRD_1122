<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<h3>교과목 추가</h3>
<form name="form" method="post" action="subjectInsert_Process.jsp">
<table border=1 id="tab2">
	<tr>
		<th id="th1">교과목 코드</th>
		<td><input type="text" name="id" id="in2"></td>
	</tr>
	<tr>
		<th id="th1">과 목 명</th>
		<td><input type="text" name="subject_name" id="in2"></td>
	</tr>
	<tr>
		<th id="th1">학 점</th>
		<td><input type="text" name="credit" id="in2"></td>
	</tr>
	<tr>
		<th id="th1">담 당 강 사</th>
		<td>
			<select name="lecturer">
				<option value="0">담당강사 선택</option>
				<option value="1">김교수</option>
				<option value="2">이교수</option>
				<option value="3">박교수</option>
				<option value="4">우교수</option>
				<option value="5">최교수</option>
				<option value="6">강교수</option>
				<option value="7">황교수</option>
			</select>
		</td>
	</tr>
	<tr>
		<th id="th1">요 일</th>
		<td><input type="radio" value="1"> 월
			<input type="radio" value="2"> 화
			<input type="radio" value="3"> 수
			<input type="radio" value="4"> 목
			<input type="radio" value="5"> 금
			<input type="radio" value="6"> 토
		</td>
	</tr>
	<tr>
		<th id="th1">시 작</th>
		<td><input type="text" name="start_hour" id="in2"></td>
	</tr>
	<tr>
		<th id="th1">종 료</th>
		<td><input type="text" name="end_hour" id="in2"></td>
	</tr>
	<tr>
		<td colspan=2 align=center>
			<input type="button" value="목록" id="btn2">
			<input type="button" value="등록" id="btn2" onclick="check()">
		</td>
	</tr>
</table>
</form>
<script>
	function check(){
		if(document.form.id.value==""){
			alert("교과목 코드가 입력되지 않았습니다.");
			document.form.id.focus();
		}else if(document.form.subject_name.value==""){
			alert("과목명이 입력되지 않았습니다.");
			document.form.subject_name.focus();
		}else if(document.form.credit.value==""){
			alert("학점이 입력되지 않았습니다.");
			document.form.credit.focus();
		}else if(document.form.start_hour.value==""){
			alert("시작시간이 입력되지 않았습니다.");
			document.form.start_hour.focus();
		}else if(document.form.end_hour.value==""){
			alert("종료시간이 입력되지 않았습니다.");
			document.form.end_hour.focus();
		}else{
			alert("완료되었습니다.");
			document.form.submit();
		}
	}
</script>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>