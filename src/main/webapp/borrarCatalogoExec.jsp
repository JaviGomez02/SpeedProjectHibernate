<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="Catalogo" class="com.jacaranda.catalogo.Catalogo"></jsp:useBean>
<jsp:useBean id="CatalogoBD" class="com.jacaranda.dao.CRUDCatalogo"></jsp:useBean>
<title>Insert title here</title>
</head>
<body>
	<%
	Catalogo=CatalogoBD.readCatalogo(Integer.parseInt(request.getParameter("id")));
	CatalogoBD.deleteCatalogo(Catalogo);
	
	String redirect="mainCatalogo.jsp";
	response.sendRedirect(redirect); %>
	
</body>
</html>