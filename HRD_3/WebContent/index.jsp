<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <div id="header"><h1>���θ� ���� ���α׷�</h1></div>
    <div id="nav">
    <a class = "Tag_A" href = "index.jsp?section=sell">�Ǹ� ���</a>
    <a class = "Tag_A" href = "index.jsp?section=log">���� ���� ���� ��ȸ</a>
    <a class = "Tag_A" href = "index.jsp?section=get">��ǰ�� ������Ȳ</a>
    <a class = "Tag_A" href = "index.jsp?section=now">ī�װ��� ������Ȳ ��ȸ</a>
    <a class = "Tag_A" href = "index.jsp?section=home">Ȩ����</a>
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