<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="Zapato" class="com.jacaranda.shoes.Shoes"></jsp:useBean>
<jsp:useBean id="ZapatoBD" class="com.jacaranda.dao.CRUDShoe"></jsp:useBean>
<title>Insert title here</title>
</head>
<body>
	 <%
	 LocalDate date=LocalDate.parse(request.getParameter("date"));
	 LocalDate newDate =LocalDate.of(date.getYear(), date.getMonth(), date.getDayOfMonth()+1);

	Zapato=ZapatoBD.readShoe(Integer.parseInt(request.getParameter("idZap")));
	 
	ZapatoBD.updateShoe(Zapato, request.getParameter("name"), Double.parseDouble(request.getParameter("price")), Integer.parseInt(request.getParameter("size")), newDate, Boolean.parseBoolean(request.getParameter("Stock")));            
	 
	String redirect="main.jsp?idCatalogo="+Zapato.getIdCatalogo();
	response.sendRedirect(redirect);
    %>
</body>
</html>