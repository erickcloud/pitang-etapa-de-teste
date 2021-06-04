<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Usuários</title>
</head>
<body>
	<h1>Lista de Usuários</h1>
	
	<table border="1">
	<tr>
		<td>Id</td>
		<td>Nome</td>
		<td>Email</td>
		<td>Senha</td>
		<td>Deletar</td>
	</tr>
	<c:forEach var="usuario" items="${lista}">
		<tr>
			<td> <a href="usuarios?opcao=editar&id=<c:out value="${usuario.id}"></c:out> "> <c:out value="${ usuario.id}"></c:out> </a> </td>
			<td> <c:out value="${ usuario.nome}"></c:out> </td>
			<td> <c:out value="${ usuario.email}"></c:out> </td>
			<td> <c:out value="${ usuario.senha}"></c:out> </td>
			<td> <a href="usuarios?opcao=deletarUsuario&id=<c:out value="${usuario.id}"></c:out> "> Deletar </a> </td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>