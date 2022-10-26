<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jacaranda.shoes.Shoes"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Speed: Añadir</title>
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
		
		<a id="logo-header" href="main.jsp?idCatalogo=<%=request.getParameter("idCatalogo")%>"><img src="final_75x75.png"></a>
		<a id="title" href="main.jsp?idCatalogo=<%=request.getParameter("idCatalogo")%>">SPEED</a>

		<nav>
			<ul>
                
				<li><a href="main.jsp?idCatalogo=<%=request.getParameter("idCatalogo")%>">Inicio</a></li>
				<li><a href="index.jsp">Cerrar sesion</a>
				<li><%
			out.print(bienvenida);
			%></li>
			</ul>
		</nav>

	</header>

	<%int idCatalogo=Integer.parseInt(request.getParameter("idCatalogo")); %>
    <form action="annadirZapExec.jsp" method="get">
        <div id="cuerpoAnnadir">

            <div id="loginAnnadir">
                    <br>
                    	<%int error=Integer.parseInt(request.getParameter("error")); %>
                    	Id<br><input type="number" class="annadirOrdenar" name="Id" placeholder="Id" required min="1" max="99999">
						<% if (error==1){
							%><small>Este ID ya existe</small><br><%
						}
						
						%>
                    	
                    	
                        <br><br>Name<br><input type="text" class="annadirOrdenar" name="name" placeholder="Name" required maxlength="50" minlength="3">
                        <br><br>Price<br><input type="number" step="any" class="annadirOrdenar" name="price" placeholder="Price" min="1" max="1000"required>
                        <br><br>Size<br><input type="number" class="annadirOrdenar" name="size" placeholder="Sizes " min="35" max="51" required>
                        <br><br>Date<br><input type="date" class="annadirOrdenar" name="Date" placeholder="Date"  required><br>   
                        <input type="radio" class="radio" name="Stock" id="Stock" value="true" checked>Stock
                        <input type="radio" class="radio" name="Stock" id="noStock" value="false">No Stock
                        <button type="submit" name="boton" value="Guardar" class="join"><h2>Guardar</h2></button><br><br>
                        
                        <a href="main.jsp?idCatalogo=<%=idCatalogo%>" class="joinCancelar"><h2>Cancelar</h2></a>
                        <input type="text" name="idCatalogo" hidden value="<%=idCatalogo%>">
                    <br>
   
            </div>
    
        </div>
    </form>

</body>
</html>