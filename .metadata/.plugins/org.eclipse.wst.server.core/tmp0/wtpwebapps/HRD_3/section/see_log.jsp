<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %><table border = "1">
<h2>통합 매출 내역 조회</h2>
<tr>
<td>판매 ID</td>
<td>상품명</td>
<td>구매 일자</td>
<td>총 구매 금액</td>
<td>구매 개수</td>
</tr>
<%
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection
		("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		Statement stmt = conn.createStatement();
		//String query = "select SALENO, SCODE, SALEDATE, PNAME, AMOUNT FROM TBL_SALELIST_01, TBL_PIZZA_01 where TBL_PIZZA_01.PCODE = TBL_SALELIST_01.PCODE";
		String query = "select * from TBL_SALE_01, TBL_PRODUCT_01";
		ResultSet rs = stmt.executeQuery(query);
		while (rs.next()) {
		%>	


		<tr>
		<td>
		<%= rs.getString(1)%>
		</td>
		<td>
		<%= rs.getString(2)%>
		</td>
		<td>
		<%= rs.getString(3)%>
		</td>
				<td>
		<%= rs.getString(4)%>
		</td>
				<td>
		<%= rs.getString(5)%>
		</td>
		</tr>
		<%
		}
		stmt.close();
		conn.close();
	}
	catch (Exception e) {
		e.printStackTrace();
	}
%>
</table>