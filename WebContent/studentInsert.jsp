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
<h3>학사 정보 등록 화면</h3>
<form name="form" method="post" action="studentInsert_Process.jsp">
<table border=1 id="tab1">
	<tr>
		<th id="th1">학번</th>
		<td><input type="text" name="id" id="in1"></td>
	</tr>
	<tr>
		<th id="th1">성명</th>
		<td><input type="text" name="name" id="in1"></td>
	</tr>
	<tr>
		<th id="th1">학과</th>
		<td>
			<select name="dept" id="s1">
				<option value="1" selected>컴퓨터공학과</option>
				<option value="2">기계공학과</option>
				<option value="3">전자과</option>
				<option value="4">영문학과</option>
				<option value="5">일어과</option>
				<option value="6">경영학과</option>
				<option value="7">무역학과</option>
				<option value="8">교육학과</option>
			</select>
		</td>
	</tr>
	<tr>
		<th id="th1">학년</th>
		<td>
			<select name="position" id="s1">
				<option value="1" selected>1학년</option>
				<option value="2">2학년</option>
				<option value="3">3학년</option>
				<option value="4">4학년</option>
			</select>
		</td>
	</tr>
	<tr>
		<th id="th1">주소</th>
		<td><input type="text" name="address" id="in1"></td>
	</tr>
	<tr>
		<th id="th1">연락처</th>
		<td><input type="text" name="phone" id="in1"></td>
	</tr>
	<tr>
		<td colspan=2 align=center>
			<input type="button" value="등록" id="btn1" onclick="check()">
			<input type="reset" value="취소" id="btn1">
		</td>
	</tr>
</table>
</form>
<script>
	function check(){
		if(document.form.id.value==""){
			alert("학번이 입력되지 않았습니다.");
			document.form.id.focus();
		}else if(document.form.name.value==""){
			alert("이름이 입력되지 않았습니다.");
			document.form.name.focus();
		}else if(document.form.address.value==""){
			alert("주소가 입력되지 않았습니다.");
			document.form.address.focus();
		}else if(document.form.phone.value==""){
			alert("연락처가 입력되지 않았습니다.");
			document.form.phone.focus();
		}else
			alert("등록이 완료되었습니다!")
			document.form.submit();
	}
</script>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>