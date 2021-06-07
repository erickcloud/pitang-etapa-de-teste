<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<a href="telefones?opcao=criar&id=<c:out value="${usuario_id}"></c:out>">Cadastrar Número</a>
	
	<table class="tablecadastro">
	<tr class="textocriar">
		<td class="tdcentro">Id</td>
		<td class="tdcentro">DDD</td>
		<td class="tdcentro">Numero</td>
		<td class="tdcentro">Tipo</td>
		<td class="tdcentro">Deletar</td>
	</tr>
	<c:forEach var="telefone" items="${lista}">
		<tr class="textocriar">
			<td> <a href="telefones?opcao=editar&id=<c:out value="${telefone.id}"></c:out> ">Alterar ID <c:out value="${telefone.id}"></c:out> </a> </td>
			<td> <c:out value="${ telefone.ddd}"></c:out> </td>
			<td> <c:out value="${ telefone.numero}"></c:out> </td>
			<td> <c:out value="${ telefone.tipo}"></c:out> </td>
			<td> <a href="telefones?opcao=deletarTelefone&id=<c:out value="${telefone.id}"></c:out> "> Deletar </a> </td>
		</tr>
	</c:forEach>
	</table>
	</div>
</body>
</html>