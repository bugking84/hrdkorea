<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<h3>카테고리별 매출현황 조회</h3>
<table border="1">
    <tr>
        <td>카테고리 명</td>
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
            " TBL_CATEGORY_01.NAME, sum(TBL_SALE_01.SALE_PRICE), sum(TBL_SALE_01.AMOUNT) "+
            "FROM "+
            "TBL_SALE_01, TBL_PRODUCT_01, TBL_CATEGORY_01 "+
            "WHERE "+
            "    TBL_SALE_01.PRODUCT_ID = TBL_PRODUCT_01.PRODUCT_ID "+
            "AND "+
                    "TBL_CATEGORY_01.CATEGORY_ID = TBL_PRODUCT_01.CATEGORY_ID "+
            "GROUP BY "+
                    "    TBL_CATEGORY_01.CATEGORY_ID, TBL_CATEGORY_01.name ";
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString(1) %></td>
                    <td><%=rs.getInt(2) %></td>
                    <td><%=rs.getInt(3) %></td>
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