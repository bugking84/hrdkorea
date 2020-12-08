<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<h3>상품별 매출 현황</h3>
<table border="1">
    <tr>
        <td>상품명</td>
        <td>총 구매 내역</td>
        <td>구매 개수</td>
    </tr>
    <%
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn = DriverManager.getConnection
                                ("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");

            Statement stmt = conn.createStatement();
            String query = "SELECT "+
            " PRODUCT.NAME, sum(TBL_SALE_01.SALE_PRICE), sum(TBL_SALE_01.AMOUNT) "+
            "FROM "+
            "TBL_SALE_01, TBL_PRODUCT_01 "+
            "WHERE "+
            "TBL_SALE_01.PRODUCT_ID = TBL_PRODUCT_01.PRODUCT_ID "+
            "GROUP BY "+
                    "    TBL_PRODUCT_01.PRODUCT_ID, TBL_PRODUCT_01.NAME ";
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString(1) %></td>
                    <td><%=rs.getString(2) %></td>
                    <td><%=rs.getString(3) %></td>
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