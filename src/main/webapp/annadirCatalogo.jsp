<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Speed: Añadir</title>
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

    <form action="annadirCatalogoExec.jsp" method="get">
        <div id="cuerpoAnnadir">

            <div id="loginAnnadir">
                    <br>
                    		
                    	ID<br> <input type="number" class="annadirOrdenar" name="Id" placeholder="Id" required><br><br>
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