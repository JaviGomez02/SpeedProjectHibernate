<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="Catalogo" class="com.jacaranda.catalogo.Catalogo"></jsp:useBean>
<jsp:useBean id="CatalogoBD" class="com.jacaranda.dao.CRUDCatalogo"></jsp:useBean>
<title>Speed: Borrar</title>
<link href="style.css" rel="stylesheet" >
</head>
<body>
<header id="main-header">
		
		<a id="logo-header" href="main.jsp"><img src="final_75x75.png"></a>
		<a id="title" href="main.jsp">SPEED</a>

		<nav>
			<ul>
                
				<li><a href="main.jsp">Inicio</a></li>
				<li><a href="index.jsp">Cerrar sesion</a>
			</ul>
		</nav>

	</header>

        <div id="cuerpoAnnadir">
			
<%-- 			<input type="hidden" name="ID" value=<%=request.getParameter("id")%>> ESTO CREO QUE NO HACE FALTA --%>

            <div id="loginBorrar">
                    <br>
                    <%
                    	int id=Integer.parseInt(request.getParameter("idCatalogo"));
                    	Catalogo=CatalogoBD.readCatalogo(id);
                    %>
                    	<h1>¿Seguro que quieres borrar el catalogo <%=Catalogo.getName() %>?</h1><br>
                    	<a href="borrarCatalogoExec.jsp?id=<%=request.getParameter("idCatalogo")%>" class="joinCancelar" style="background: #333; margin-bottom: 1em;"><h2>Confirmar</h2></a>
                        <a href="mainCatalogo.jsp" class="joinCancelar"><h2>Cancelar</h2></a>
                    <br>
     
            </div>
    
        </div>
    
</body>
</html>