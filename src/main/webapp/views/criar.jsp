<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Criar Usu�rio</title>

<link rel="stylesheet" href="css/criar.css">

</head>
<body>
	<div class="pagecentro">
	<img class="imgcriar" src="img/user.png" alt="">
	<h1 class="title">Criar Usu�rio</h1>
	
	<form action="usuarios" method="post">
	<input type="hidden" name="opcao" value="salvar">
		<table class="tablecadastro">
			<tr class="textocriar">
				<td class="tdcentro">Nome:</td>
				<td><input class="inputcentro" type="text" name="nome"></td>
			</tr>
			
			<tr class="textocriar">
				<td class="tdcentro">Email:</td>
				<td><input class="inputcentro" type="email" name="email"></td>
			</tr>
			
			<tr class="textocriar">
				<td class="tdcentro">Senha:</td>
				<td><input class="inputcentro" type="password" name="senha"></td>
			</tr>	
		</table>	
		<input type="submit" value="Salvar" class="salvarcentro">
	</form>
	</div>
</body>
</html>