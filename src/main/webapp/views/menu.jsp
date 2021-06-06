<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="css/menu.css">
</head>
<body>
	<div class="pagecentro">
	<img class="imgmenu" src="img/user.png" alt="">
	<h1 class="title">Menu de Usuários</h1>
	
	<table border="1">
		<tr> 
			<button class="btn"><a href="usuarios?opcao=criar" class="frase">Criar um Usuário</a></button>
		</tr>
	</br></br>
		<tr> 
			<button class="btn"><a href="usuarios?opcao=lista" class="frase">Lista de Usuários</a></button>
		</tr>
	</table>
	</div>
</body>
</html>