<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="Catalogo" class="com.jacaranda.catalogo.Catalogo"></jsp:useBean>
<jsp:useBean id="CatalogoBD" class="com.jacaranda.dao.CRUDCatalogo"></jsp:useBean>
<title>SPEED: editar</title>
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

	<%
		int id=Integer.valueOf(request.getParameter("idCatalogo"));
		Catalogo=CatalogoBD.readCatalogo(id);
	%>
    <form action="editarCatalogoExec.jsp" method="get">
        <div id="cuerpo">


            <div id="loginEditar">
                    <br>
                    <div id="introducir">
                        Name: <input type="text" class="annadirOrdenar" name="name" value="<%=Catalogo.getName() %>"required minlength="1" maxlength="50">
                    </div><br>
                    
                    <div id ="introducir"><!-- CAMBIAR EN EL CSS EL TAMAÑO--> 
                        Description: <textarea class="annadirOrdenar" rows="4" name="descrip"  minlegth="1" maxlength="150" required><%=Catalogo.getDescription() %></textarea>
                    </div><br>
                    
                    <div id ="introducir">
                        <button type="submit" name="boton" value="Guardar" class="join"><h2>Guardar</h2></button><br><br>
                        <a href="mainCatalogo.jsp" class="joinCancelarEditar"><h2>Cancelar</h2></a>
                    </div>
                    <input type="text" name="id" hidden value="<%=id%>">
                    <br>

            </div>
    
        </div>
    </form>

</body>
</html>