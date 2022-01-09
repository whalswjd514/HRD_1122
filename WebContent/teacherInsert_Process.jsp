<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
<%@ include file="DBConn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String idx=request.getParameter("idx");
	String name=request.getParameter("name");
	String major=request.getParameter("major");
	String field=request.getParameter("field");
	PreparedStatement pstmt=null;
	try{
		String sql="insert into lecturer1122 values(?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, idx);
		pstmt.setString(2, name);
		pstmt.setString(3, major);
		pstmt.setString(4, field);
		pstmt.executeUpdate();
		System.out.println("데이터 등록 성공");
%>
	<script>
		alert("등록 성공");
		location.href="teacherSelect.jsp";
	</script>
<%
	}catch(SQLException e){
		System.out.println("데이터 등록 실패");
	}
%>
	<script>
		alert("등록 실패");
		location.href="teacherSelect.jsp";
	</script>
</section>
</body>
</html>