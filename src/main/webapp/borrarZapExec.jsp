<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	Zapato=ZapatoBD.readShoe(Integer.parseInt(request.getParameter("idZap")));
	ZapatoBD.deleteShoe(Zapato);
	
	String redirect="main.jsp?idCatalogo="+Zapato.getIdCatalogo();
	response.sendRedirect(redirect); %>
	
</body>
</html>