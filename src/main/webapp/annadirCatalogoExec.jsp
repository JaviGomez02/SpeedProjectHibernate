<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@page import="com.jacaranda.catalogo.Catalogo"%>

<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="Catalogo" class="com.jacaranda.catalogo.Catalogo"></jsp:useBean>
<jsp:useBean id="CatalogoBD" class="com.jacaranda.dao.CRUDCatalogo"></jsp:useBean>
<title>Insert title here</title>
</head>
<body>
	 <%
 	
	 int id=Integer.parseInt(request.getParameter("Id"));
	 
	 Boolean entrar=true;
	 List<Catalogo> lista=CatalogoBD.loadList();
	for(Catalogo c:lista){
		if(c.getId()==id){
			entrar=false;
		}
	}
	
	if(entrar==false){
		response.sendRedirect("annadirCatalogo.jsp?error=1");
	}
	else{
		 String name=request.getParameter("name");
		 String description=request.getParameter("descripcion");
		 
		 Catalogo=new Catalogo(id,name,description);
		 CatalogoBD.addCatalogo(Catalogo);
		 
		 String redirect="mainCatalogo.jsp";
		 response.sendRedirect(redirect);
	}
	 
	
    %>
</body>
</html>