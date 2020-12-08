<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div id="header"><h1>쇼핑몰 관리 프로그램</h1></div>
    <div id="nav">
    <a class = "Tag_A" href = "index.jsp?section=sell">판매 등록</a>
    <a class = "Tag_A" href = "index.jsp?section=log">통합 매출 내역 조회</a>
    <a class = "Tag_A" href = "index.jsp?section=get">상품별 매출현황</a>
    <a class = "Tag_A" href = "index.jsp?section=now">카테고리별 매출현황 조회</a>
    <a class = "Tag_A" href = "index.jsp?section=home">홈으로</a>
    </div>
    <div id="section">
    <%
    String result = request.getParameter("section");
    
    if(result != null){
    	switch (result){
    	case "sell" :
    	 	%>
        	<%@ include file = "../section/sell.jsp" %>
        	<%
    		break;
    	case "log" :
    	 	%>
        	<%@ include file = "../section/see_log.jsp" %>
        	<%
    		break;
    	case "get" :
    	 	%>
        	<%@ include file = "../section/get_now.jsp" %>
        	<%
    		break;
    	case "now" :
    	 	%>
        	<%@ include file = "../section/sell_now.jsp" %>
        	<%
    		break;
    	case "home" :
    	 	%>
        	<%@ include file = "../section/home.jsp" %>
        	<%
    		break;
    	default :
    	 	%>
        	<%@ include file = "../section/home.jsp" %>
        	<%
    		break;
    	}
    }
    else{
    	%>
    	<%@ include file = "../section/home.jsp" %>
    	<%
    }
    
    %>
    </div>
    <div id="footer"><h2>Copyright @ 2020 All right reserved SMC</h2></div>
</body>
</html>