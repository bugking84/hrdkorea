<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
    <%
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn = DriverManager.getConnection
                                ("jdbc:oracle:thin:@//localhost:1521/xe", "order_admin", "order_password");
            
            if (conn != null) {
                System.out.println("Database Connected!");
            }
            else {
                System.out.println("Database Connect Fail!");
            }

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT SYSTEM, 10 FROM DUAL");

            while (rs.next()) {

            }

            stmt.close();
            conn.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>