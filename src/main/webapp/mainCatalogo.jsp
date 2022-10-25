<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.jacaranda.dao.CRUDCatalogo"%>
<%@page import="com.jacaranda.catalogo.Catalogo"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
%><%-- <jsp:forward page="errorPage.html"></jsp:forward> --%><%
}
%>

<header id="main-header">
	<a id="logo-header" href="mainCatalogo.jsp"><img src="final_75x75.png"></a>
	<a id="title" href="mainCatalogo.jsp">SPEED</a>

	<nav>
		<ul>
			<li><%
			out.print(bienvenida);
			%></li>
			<li><a href="index.jsp">Cerrar sesion</a></li>
			<li><a href="aboutAs.html">Acerca de</a></li>
			<li><a href="contactUs.html">Contacto</a></li>
		</ul>
	</nav>
</header>

<div id="cuerpoMain">
	<form action="main.jsp" method="get">
		<div id="tablaInfo">
			<h1><a href="annadirCatalogo.jsp?error=0" name="annadir" class="annadirBoton" style=" float:left; margin-left: 1em; margin-bottom: 1em; margin-top: 0.35em; ">+ Añadir Producto</a></h1>
			<table id="tabla" border="1">
				<tr id="titulos">
					<td class="tdId">
						<h2>ID</h2>
					</td>
					<td class="tdName">
						<h2>NAME</h2>
					</td>
					<td class="tdPrice">
						<h2>DESCRIPTION</h2>
					</td>
					<td id="buttonIcon">
						<h2>Ir</h2>
					</td>
					<td id="buttonIcon">
						<h2>BOTONES</h2>
					</td>
				</tr>
				<%
				List<Catalogo> lista=new ArrayList<>();
				lista=CatalogoBD.loadList();
					for(Catalogo ca: lista){
				%> 
					<tr>
						<td>
							<%=ca.getId() %>
						</td>
						<td>
							<%=ca.getName() %>
						</td>
						<td>
							<%=ca.getDescription() %>
						</td>
						<td>
							<a href="main.jsp?idCatalogo=<%=ca.getId()%>"><input type="button" value="ir"></a>
						</td>
						<td>
							<a href="borrarCatalogo.jsp?idCatalogo=<%=ca.getId()%>"><img src="https://cdn-icons-png.flaticon.com/512/4315/4315482.png" width = "26" height = "26"></a>
							<a href="editarCatalogo.jsp?idCatalogo=<%=ca.getId()%>"><img src="https://cdn-icons-png.flaticon.com/512/3817/3817309.png" width = "28" height = "28"></a><br>
							
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