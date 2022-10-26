<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.jacaranda.users.Users"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="usuario" class="com.jacaranda.users.Users"></jsp:useBean> 
<jsp:useBean id="usuarioBD" class="com.jacaranda.dao.CRUDUsers"></jsp:useBean>  
<title>Insert title here</title>
</head>
<body>
<%
		String usuarioCadena= request.getParameter("usuario");
		String password= request.getParameter("password");
   		
   		List<Users>listaUsuarios=usuarioBD.loadList();
   		for(Users u: listaUsuarios){
   			if (usuarioCadena.equals(u.getUserName())){
   				usuario=usuarioBD.readUser(usuarioCadena);
   			}
   		}

	if(password.equals(usuario.getPassWord())){
		System.out.println("Si");
		HttpSession sesion=request.getSession();
		sesion.setAttribute("login", "True");
		sesion.setAttribute("usuario", usuarioCadena);
		String redirect="mainCatalogo.jsp";
		 response.sendRedirect(redirect);
	}
	else{
		 response.sendRedirect("errorPage.html");
	} 
%>



</body>
</html>