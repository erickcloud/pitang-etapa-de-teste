<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Criar Telefone</title>

<link rel="stylesheet" href="css/criar.css">

</head>
<body>
	<div class="pagecentro">
	<img class="imgcriar" src="img/user.png" alt="">
	<h1 class="title">Criar Telefone</h1>
	
	<form action="usuarios" method="post">
	<input type="hidden" name="opcao" value="salvar">
		<table class="tablecadastro">
			<tr class="textocriar">
				<td class="tdcentro">DDD:</td>
				<td><input class="inputcentro" type="text" name="nome"></td>
			</tr>
			
			<tr class="textocriar">
				<td class="tdcentro">Tipo:</td>
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