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
                
				<li><a href="index.jsp">Cerrar sesion</a>
				<li><%
			out.print(bienvenida);
			%></li>
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