<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="css/menutelefone.css">
</head>
<body>
	<div class="pagecentro">
	<img class="imgmenu" src="img/user.png" alt="">
	<h1 class="title">Menu de Telefone</h1>
	
	<table border="1">
		<tr> 
			<button class="btn" type="submit" ><a href="telefones?opcao=criar" class="frase">Adicionar um Telefone</a></button>
		</tr>
	</br></br>
		<tr> 
			<button class="btn" type="submit"><a href="telefones?opcao=lista" class="frase">Lista de Telefones</a></button>
		</tr>
	</table>
	</div>
</body>
</html>