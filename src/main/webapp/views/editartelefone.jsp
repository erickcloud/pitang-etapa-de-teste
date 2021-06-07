<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Editar um Telefone</title>

<link rel="stylesheet" href="css/editartelefone.css">
</head>
<body>
	<div class="pagecentro">
		<img class="imgeditar" src="img/user.png" alt="">
	<h1 class="title">Editar um Telefone</h1>
		<form action="telefones" method="post">
		<c:set var="telefone" value="${telefone}"> </c:set>
			<input type="hidden" name="opcao" value="editar">
			<input type="hidden" name="id" value="${telefone.id}">
				<table class="tablecadastro">
					<tr class="textocriar">
						<td class="tdcentro">DDD:</td>
						<td><input class="inputcentro" type="text" name="ddd" value="${telefone.ddd}"></td>
					</tr>
					
					<tr class="textocriar">
						<td class="tdcentro">Numero:</td>
						<td><input class="inputcentro" type="text" name="numero" value="${telefone.numero}"></td>
					</tr>
					
					<tr class="textocriar">
						<td class="tdcentro">Tipo:</td>
						<td><input class="inputcentro" type="text" name="tipo" value="${telefone.tipo}"></td>
				</tr>	
			</table>	
		<input type="submit" value="Salvar" class="salvarcentro">
	</form>
	</div>
</body>
</html>