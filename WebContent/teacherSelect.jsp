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
<h3>강사 리스트</h3>
<table border=1 id="tab1">
	<tr>
		<th id="th1">강사코드</th>
		<th id="th1">강사명</th>
		<th id="th1">전공</th>
		<th id="th1">세부전공</th>
		<th id="th1">관리</th>
	</tr>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	try{
		String sql="select * from lecturer1122";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			String idx=rs.getString("idx");
			String name=rs.getString("name");
			String major=rs.getString("major");
			String field=rs.getString("field");
%>
	<tr>
		<td id="td1"><%=idx %></td>
		<td id="td1"><%=name %></td>
		<td id="td1"><%=major %></td>
		<td id="td1"><%=field %></td>
		<td id="td1"><a href="teacherUpdate.jsp?id=<%=idx %>">수정</a> / 
			<a href="teacherDelete.jsp?id=<%=idx %>" onclick="if(!confirm('정말로 삭제하시겠습니까?'))
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