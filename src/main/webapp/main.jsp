<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.jacaranda.shoes.Shoes"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="Catalogo" class="com.jacaranda.catalogo.Catalogo"></jsp:useBean>
<jsp:useBean id="CatalogoBD" class="com.jacaranda.dao.CRUDCatalogo"></jsp:useBean>


<title>Speed Main</title>
<link href="style.css" rel="stylesheet"> 
</head>
<body>
<%
String bienvenida="";
HttpSession sesion=request.getSession();
String isSesion = (String) sesion.getAttribute("login");
String userSesion= (String) sesion.getAttribute("usuario");
if(isSesion != null && userSesion!=null && isSesion.equals("True")){
	bienvenida=("Sesion: "+userSesion);
}
else{
%> <jsp:forward page="errorPage.html"></jsp:forward> <%
}
%>



<header id="main-header">
	<a id="logo-header" href="mainCatalogo.jsp"><img src="final_75x75.png"></a>
	<a id="title" href="mainCatalogo.jsp">SPEED</a>

	<nav>
		<ul>	
			<li><a href="index.jsp">Cerrar sesion</a></li>
			<li><%
			out.print(bienvenida);
			%></li>
		</ul>
	</nav>
</header>
<%int idCatalogo=Integer.parseInt(request.getParameter("idCatalogo")); 
Catalogo=CatalogoBD.readCatalogo(idCatalogo);
Set<Shoes>listaZapatos=Catalogo.getShoesList();
%>
<div id="cuerpoMain">
	<form action="main.jsp" method="get">
		<div id="tablaInfo">
			<h1><a href="annadirZap.jsp?idCatalogo=<%=idCatalogo%>&error=0" name="annadir" class="annadirBoton" style=" float:left; margin-left: 1em; margin-bottom: 1em; margin-top: 0.35em; ">+ Añadir Producto</a></h1>
			
		
			
			<table class="tabla" border="1" >
				<tr id="titulos">
					<td class="tdId">
						<h2>ID</h2>
					</td>
					<td class="tdName">
						<h2>NAME</h2>
					</td>
					<td class="tdPrice">
						<h2>PRICE</h2>
					</td>
					<td class="tdSize">
						<h2>SIZE</h2>
					</td>
					<td class="tdRelease">
						<h2>RELEASE DATE</h2>
					</td>
					<td class="tdStock">
						<h2>STOCK</h2>
					</td>
					<td id="buttonIcon">
						<h2>BOTONES</h2>
					</td>
				</tr>
				<%
					String stockValor;
					for(Shoes s:listaZapatos){
						if (s.isStock()==true){
							stockValor="En stock";
						}
						else{
							stockValor="No hay stock";
						}
					
				%> 
					<tr>
						<td>
							<%=s.getIdShoes() %>
						</td>
						
						<td>
							<%=s.getName() %>
						</td>
						<td>
							<%=s.getPrice() %>
						</td>
						<td>
							<%=s.getSizes() %>
						</td>
						<td>
							<%=s.getReleaseDate() %>
						</td>
						<td>
							<%=stockValor %>
						</td>
						<td>
							<a href="editarZap.jsp?idZap=<%=s.getIdShoes()%>"><img src="https://cdn-icons-png.flaticon.com/512/3817/3817309.png" width = "28" height = "28"></a>
							<a href="borrarZap.jsp?idZap=<%=s.getIdShoes()%>"><img src="https://cdn-icons-png.flaticon.com/512/4315/4315482.png" width = "26" height = "26"></a><br>
						</td>
					</tr>
				<%}%>
			</table>
		</div>
	</form>
</div>
<script src="script.js"></script>
</body>
</html>