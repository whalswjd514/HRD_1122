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
<h3>학사정보 목록</h3>
<table border=1 id="tab1">
	<tr>
		<th id="th1">학번</th>
		<th id="th1">성명</th>
		<th id="th1">학과</th>
		<th id="th1">학년</th>
		<th id="th1">주소</th>
		<th id="th1">연락처</th>
		<th id="th1">관리</th>
	</tr>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	try{
		String sql="select * from stud1122";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			String id=rs.getString("studNo");
			String name=rs.getString("name");
			int dept=rs.getInt("dept");
			int position=rs.getInt("position");
			String address=rs.getString("address");
			String phone=rs.getString("phone");
			System.out.println("테이블 조회 성공");
		
%>
	<tr>
		<td id="td1"><%=id %></td>
		<td id="td1"><%=name %></td>
		<td id="td1"><%=dept %></td>
		<td id="td1"><%=position %></td>
		<td id="td1"><%=address %></td>
		<td id="td1"><%=phone %></td>
		<td id="td1"><a href="studentUpdate.jsp?id=<%=id%>">수정</a> /
			<a href="studentDelete.jsp?id=<%=id%>"
			onclick="if(!confrom('정말로 삭제하시겠습니까?'))
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