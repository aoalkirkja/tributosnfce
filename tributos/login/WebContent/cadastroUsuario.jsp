<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cadastro de usuários</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
	<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
</head>
<body>
	<h3>Cadastro de usuários</h3>

	<form action="salvarUsuario" method="post">
		<table>
			<tr>
				<td>Código:</td>
				<td><input type="text" disabled="disabled" readonly="readonly" id="id" name="id" value="${user.id}"></td>
			</tr>
			<tr>
				<td>Login:</td>
				
				<td><input type="text" id="login" name="login" value="${user.login}"></td>
			</tr>
	
			<tr>
				<td>Senha:</td>
				<td><input type="password" id="senha" name="senha" value="${user.senha}"></td>
				
			</tr>

		</table>
		<br/>
		<button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
  			Salvar
		</button>
	</form>
	
	<table>
	 <c:forEach items="${usuarios}" var="user">
	 	<tr>
	 	<td style="width: 150px">
	 	  <c:out value="${user.id}">
	 	  </c:out> </td>
	 	  <td style="width: 150px">
	 	  <c:out value="${user.login}">
	 	  </c:out> </td>
	 	  <td><c:out value="${user.senha}"></c:out> </td>
	 	  
	 	  <td><a href="salvarUsuario?acao=delete&user=${user.login}">Excluir</a> </td>
	 	  <td><a href="salvarUsuario?acao=editar&user=${user.login}">Editar</a> </td>
	 	</tr>
	 </c:forEach>
	
	</table>
	
</body>
</html>