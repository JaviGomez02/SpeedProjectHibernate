<%@page import="com.jacaranda.catalogo.Catalogo"%>
<%@page import="com.jacaranda.dao.CRUDCatalogo"%>
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
	CRUDCatalogo cr=new CRUDCatalogo();
	Catalogo ca = new Catalogo(6, "El niño", "Es la mejor marca");
/* 	cr.addCatalogo(ca);
 */	cr.deleteCatalogo(ca);
	/* out.print(cr.readCatalogo(1)); */
%>

</body>
</html>