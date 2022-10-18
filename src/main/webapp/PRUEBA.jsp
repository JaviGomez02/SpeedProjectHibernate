<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="com.jacaranda.shoes.Shoes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.jacaranda.dao.CRUDShoe"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	CRUDShoe c=new CRUDShoe();
	out.print(c.readShoe(3));
	Shoes s=new Shoes(2,"Nike air force 1",120.99,43,LocalDate.of(2002, 4, 3),true);
	c.add(s);
	
%>

</body>
</html>