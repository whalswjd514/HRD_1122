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
<%@ include file="DBConn.jsp" %>
<%
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int cnt=0;
	try{
		String sql="select max(idx) from lecturer1122";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		if(rs.next()){
			cnt=rs.getInt(1)+1;
		}else{
			cnt=1;
		}
	}catch(SQLException e){
		System.out.println("데이터 조회 실패");
	}
%>
<h3>강사 추가</h3>
<form name="form" method="post" action="teacherInsert_Process.jsp">
<table border=1 id="tab2">
	<tr>
		<th id="th1">강사 ID</th>
		<td><input type="text" name="idx" value="<%=cnt %>" id="in2">자동증가(마지막번호+1)</td>
	</tr>
	<tr>
		<th id="th1">강 사 명</th>
		<td><input type="text" name="name" id="in2"></td>
	</tr>
	<tr>
		<th id="th1">전공 </th>
		<td><input type="text" name="major" id="in2"></td>
	</tr>
	<tr>
		<th id="th1">세부 전공</th>
		<td><input type="text" name="field" id="in2"></td>
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
		if(document.form.name.value==""){
			alert("강사명이 입력되지 않았습니다.");
			document.form.name.focus();
		}else if(document.form.major.value==""){
			alert("전공이 입력되지 않았습니다.");
			document.form.major.focus();
		}else if(document.form.field.value==""){
			alert("세부 전공이 입력되지 않았습니다.");
			document.form.field.focus();
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