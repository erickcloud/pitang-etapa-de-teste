<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Criar Usuário</title>
</head>
<body>
	<h1>Criar Usuário</h1>
	
	<form action="usuarios" method="post">
	<input type="hidden" name="opcao" value="salvar">
		<table border="1">
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome" size="50"></td>
			</tr>
			
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" size="50"></td>
			</tr>
			
			<tr>
				<td>Senha:</td>
				<td><input type="password" name="senha" size="50"></td>
			</tr>	
		</table>	
		<input type="submit" value="Salvar">
	</form>
</body>
</html>