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
	String id=request.getParameter("id");
	String subject_name=request.getParameter("subject_name");
	String credit=request.getParameter("credit");
	String lecturer=request.getParameter("lecturer");
	String week=request.getParameter("week");
	String start_hour=request.getParameter("start_hour");
	String end_hour=request.getParameter("end_hour");
	PreparedStatement pstmt=null;
	try{
		String sql="insert into sub1122 values(?,?,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, subject_name);
		pstmt.setString(3, credit);
		pstmt.setString(4, lecturer);
		pstmt.setString(5, week);
		pstmt.setString(6, start_hour);
		pstmt.setString(7, end_hour);
		pstmt.executeUpdate();
		System.out.println("데이터 등록 성공");
%>
	<script>
		alert("등록 성공");
		location.href="subjectSelect.jsp";
	</script>
<%
	}catch(SQLException e){
		System.out.println("데이터 등록 실패");
	}
%>
	<script>
		alert("등록 실패");
		location.href="subjectSelect.jsp";
	</script>
</section>
</body>
</html>