<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.jacaranda.catalogo.Catalogo"%>
<%@page import="com.jacaranda.shoes.Shoes"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="Catalogo" class="com.jacaranda.catalogo.Catalogo"></jsp:useBean>
<jsp:useBean id="CatalogoBD" class="com.jacaranda.dao.CRUDCatalogo"></jsp:useBean>
<jsp:useBean id="Zapato" class="com.jacaranda.shoes.Shoes"></jsp:useBean>
<jsp:useBean id="ZapatoBD" class="com.jacaranda.dao.CRUDShoe"></jsp:useBean>
<title>SPEED: </title>
</head>
<body>

	 <%
	 int idCatalogo=Integer.parseInt(request.getParameter("idCatalogo"));
	 int id=Integer.parseInt(request.getParameter("Id"));
	 Boolean entrar=true;
	 List<Shoes> lista=ZapatoBD.loadList();
	for(Shoes s:lista){
		if(s.getIdShoes()==id){
			entrar=false;
		}
	}
	
	if(entrar==false){
		response.sendRedirect("annadirZap.jsp?error=1&idCatalogo="+idCatalogo);
	}
	else{
	 
	 
	 String name=request.getParameter("name");
	 double price=Double.parseDouble(request.getParameter("price"));
	 int sizes=Integer.parseInt(request.getParameter("size"));
	 LocalDate date=LocalDate.parse(request.getParameter("Date"));
	 LocalDate newDate =LocalDate.of(date.getYear(), date.getMonth(), date.getDayOfMonth()+1);
	 boolean stock=Boolean.parseBoolean(request.getParameter("Stock"));
	 
	 Shoes s=new Shoes(id, name, price, sizes, newDate, stock, idCatalogo);
	 ZapatoBD.addShoe(s);
	 
	 String redirect="main.jsp?idCatalogo="+idCatalogo;
	 response.sendRedirect(redirect); 
	}
    %>
</body>
</html>