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
<h3>교과목 목록</h3>
<table border=1 id="tab1">
	<tr>
		<th id="th1">과목코드</th>
		<th id="th1">과목명</th>
		<th id="th1">학점</th>
		<th id="th1">담당강사</th>
		<th id="th1">요일</th>
		<th id="th1">시작<br>시간</th>
		<th id="th1">종료<br>시간</th>
		<th id="th1">관리</th>
	</tr>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	try{
		String sql="select * from sub1122";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			String id=rs.getString("id");
			String subject_name=rs.getString("subject_name");
			int credit=rs.getInt("credit");
			int lecturer=rs.getInt("lecturer");
			int week=rs.getInt("week");
			int start_hour=rs.getInt("start_hour");
			int end_hour=rs.getInt("end_hour");
%>
	<tr>
		<td id="td1"><%=id %></td>
		<td id="td1"><%=subject_name %></td>
		<td id="td1"><%=credit %></td>
		<td id="td1"><%=lecturer %></td>
		<td id="td1"><%=week %></td>
		<td id="td1"><%=start_hour %></td>
		<td id="td1"><%=end_hour %></td>
		<td id="td1"><a href="subjectUpdate.jsp?id=<%=id %>">수정</a> / 
			<a href="subjectDelete.jsp?id=<%=id %>" onclick="if(!confirm('정말로 삭제하시겠습니까?'))
			return false;">삭제</a>
		</td>
	</tr>
<%
		}
	}catch(SQLException e){
		System.out.println("테이블 조회 실패");
	}
%>
</table>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>