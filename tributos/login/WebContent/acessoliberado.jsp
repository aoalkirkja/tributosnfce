 <jsp:useBean id="calcula"  class="beans.BeanCursoJsp" type="beans.BeanCursoJsp" scope="page"/> 
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Sistema NFC-e</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
	<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>

</head> 
<body>
	<jsp:setProperty property="*" name="calcula"/>  
	<h3>Bem - vindo!</h3>
	<h3>Este é o sistema de tributações NFC-e.</h3>
	
	<a href="cadastroUsuario.jsp"> <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">Usuários</button></a>
	
<!-- 	 <a href="cadastroUsuario.jsp">Cadastro de usuários</a>  -->
	</body>
</html>