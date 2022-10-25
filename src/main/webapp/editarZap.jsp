<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="Zapato" class="com.jacaranda.shoes.Shoes"></jsp:useBean>
<jsp:useBean id="ZapatoBD" class="com.jacaranda.dao.CRUDShoe"></jsp:useBean>
<title>SPEED: editar</title>
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

	<%
		int idZap=Integer.valueOf(request.getParameter("idZap"));
		Zapato=ZapatoBD.readShoe(idZap);
	%>
    <form action="editarZapExec.jsp" method="get">
        <div id="cuerpo">


            <div id="loginEditar">
                    <br>
                    <div id="introducir">
                        Name<input type="text" class="annadirOrdenar" name="name" value="<%=Zapato.getName() %>"required >
                    </div><br>
                    
                    <div id ="introducir">
                        Price<input type="number" max="99999" step="any" class="annadirOrdenar" required name="price" value="<%=Zapato.getPrice() %>" min="1">
                    </div><br>
                    <div id="introducir">
                       Size <input type="number" class="annadirOrdenar" name="size" required value="<%=Zapato.getSizes() %>" min="35" max="51" >
                    </div>
                    <input type="hidden" name="idZap" required value="<%=idZap%>"><br>
                    <div id="introducir">
                    	Date<input type="date" class="annadirOrdenar" name="date" placeholder="Date" value="<%=Zapato.getReleaseDate() %>" required><br>   
                    </div><br>
                    
                    
                    <div id="introducir">
                        <input type="radio" class="radio" name="Stock" value="true" checked>Stock
                        <input type="radio" class="radio" name="Stock" value="false">No Stock
                    </div>
                    <div id ="introducir">
                        <button type="submit" name="boton" value="Guardar" class="join"><h2>Guardar</h2></button><br><br>
                        <a href="main.jsp?idCatalogo=<%=Zapato.getIdCatalogo() %>" class="joinCancelarEditar"><h2>Cancelar</h2></a>
                    </div>
                    <br>

            </div>
    
        </div>
    </form>

</body>
</html>