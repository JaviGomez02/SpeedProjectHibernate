<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="Catalogo" class="com.jacaranda.catalogo.Catalogo"></jsp:useBean>
<jsp:useBean id="CatalogoBD" class="com.jacaranda.dao.CRUDCatalogo"></jsp:useBean>
<title>Speed: Añadir</title>
<link href="style.css" rel="stylesheet" >
</head>
<body>
<header id="main-header">
		
		<a id="logo-header" href="mainCatalogo.jsp"><img src="final_75x75.png"></a>
		<a id="title" href="mainCatalogo.jsp">SPEED</a>

		<nav>
			<ul>
                
				<li><a href="mainCatalogo.jsp">Inicio</a></li>
				<li><a href="index.jsp">Cerrar sesion</a>
			</ul>
		</nav>

	</header>

    <form action="annadirCatalogoExec.jsp" method="get">
        <div id="cuerpoAnnadir">

            <div id="loginAnnadir">
                    <br>
                    	<%int error=Integer.parseInt(request.getParameter("error")); %>
                    	ID<br> <input type="number" class="annadirOrdenar" name="Id" placeholder="Id" required><br><br>
						<% if (error==1){
							%><small>Este ID ya existe</small><br><%
						}
						
						%>
                        Name <input type="text" class="annadirOrdenar" name="name" placeholder="Name" required><br><br>
                        Description <textarea  class="annadirOrdenar" name="descripcion" placeholder="Insert a description" min="1" required></textarea><br><br><br>
                        <button type="submit" name="boton" value="Guardar" class="join"><h2>Guardar</h2></button><br><br>
                        <a href="mainCatalogo.jsp" class="joinCancelar"><h2>Cancelar</h2></a>
                    <br>
   
            </div>
    
        </div>
    </form>

</body>
</html>