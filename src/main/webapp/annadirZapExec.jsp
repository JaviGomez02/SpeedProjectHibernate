<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.jacaranda.catalogo.Catalogo"%>
<%@page import="com.jacaranda.shoes.Shoes"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="Catalogo" class="com.jacaranda.catalogo.Catalogo"></jsp:useBean>
<jsp:useBean id="CatalogoBD" class="com.jacaranda.dao.CRUDCatalogo"></jsp:useBean>
<jsp:useBean id="Zapato" class="com.jacaranda.shoes.Shoes"></jsp:useBean>
<jsp:useBean id="ZapatoBD" class="com.jacaranda.dao.CRUDShoe"></jsp:useBean>
<title>Insert title here</title>
</head>
<body>
	 <%
    
	 int id=Integer.parseInt(request.getParameter("Id"));
	 String name=request.getParameter("name");
	 double price=Double.parseDouble(request.getParameter("price"));
	 int sizes=Integer.parseInt(request.getParameter("size"));
	 LocalDate date=LocalDate.parse(request.getParameter("Date"));
	 boolean stock=Boolean.parseBoolean(request.getParameter("Stock"));
	 int idCatalogo=Integer.parseInt(request.getParameter("idCatalogo"));
	 
	 Shoes s=new Shoes(id, name, price, sizes, date, stock, idCatalogo);
	 ZapatoBD.addShoe(s);
	 
	 String redirect="main.jsp?idCatalogo="+idCatalogo;
	 response.sendRedirect(redirect); 
    %>
</body>
</html>