<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Lista de Telefones</title>

<link rel="stylesheet" href="css/listatelefone.css">
</head>
<body>
	<div class="pagecentro">
	<img class="imglistausuarios" src="img/user.png" alt="">
	<h1 class="title">Lista de Telefones</h1>
	
	<table class="tablecadastro">
	<tr class="textocriar">
		<td class="tdcentro">Id</td>
		<td class="tdcentro">DDD</td>
		<td class="tdcentro">Numero</td>
		<td class="tdcentro">Tipo</td>
		<td class="tdcentro">Deletar</td>
	</tr>
	<c:forEach var="usuario" items="${lista}">
		<tr class="textocriar">
			<td> <a href="usuarios?opcao=editar&id=<c:out value="${usuario.id}"></c:out> "> <c:out value="${ usuario.id}"></c:out> </a> </td>
			<td> <c:out value="${ usuario.nome}"></c:out> </td>
			<td> <c:out value="${ usuario.email}"></c:out> </td>
			<td> <c:out value="${ usuario.senha}"></c:out> </td>
			<td> <a href="usuarios?opcao=deletarUsuario&id=<c:out value="${usuario.id}"></c:out> "> Deletar </a> </td>
		</tr>
	</c:forEach>
	</table>
	</div>
</body>
</html>