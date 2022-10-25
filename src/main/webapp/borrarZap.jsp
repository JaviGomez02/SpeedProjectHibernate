<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="Zapato" class="com.jacaranda.shoes.Shoes"></jsp:useBean>
<jsp:useBean id="ZapatoBD" class="com.jacaranda.dao.CRUDShoe"></jsp:useBean>
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
                    	int idZap=Integer.parseInt(request.getParameter("idZap"));
                    	Zapato=ZapatoBD.readShoe(idZap);
                    
                    %>
                    	<h1>¿Seguro que quieres borrar el zapato <%=Zapato.getName() %>?</h1><br>
                    	<a href="borrarZapExec.jsp?idZap=<%=idZap%>" class="joinCancelar" style="background: #333; margin-bottom: 1em;"><h2>Confirmar</h2></a>
                        <a href="main.jsp?idCatalogo=<%=Zapato.getIdCatalogo() %>" class="joinCancelar"><h2>Cancelar</h2></a>
                    <br>
     
            </div>
    
        </div>
    
</body>
</html>