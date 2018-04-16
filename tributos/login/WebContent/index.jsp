 <jsp:useBean id="calcula"  class="beans.BeanCursoJsp" type="beans.BeanCursoJsp" scope="page"/> 
 
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <%@ taglib prefix="myprefix" uri="WEB-INF/testetag.tld"%> 
 
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
	<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
</head> 
<body>
	<h3>Sistema de tributações</h3>

	<form action="LoginServlet" method="post">
		<br/>
		Usuário
		<br/> 
		<input type="text" id="login" name="login">
		<br/>
		Senha
		<br/>
		<input type="password" id="senha" name="senha">
		<br/>
		<br/>
		<button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
			Entrar
		</button>
		
		
	</form>
 
</body>
</html>