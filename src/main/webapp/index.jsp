<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Controle de Acesso</title>

	<link rel="stylesheet" href="css/estilo.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	
</head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<body class="fundo">
	<form class="form" action="login" method="post">
		<div class="card">
			<div class="card-top">
				<img class="imglogin" src="img/user.png" alt="">
				<h2 class="title">Equipe Pitang</h2>
				<p><i>Nossa equipe DEV</i></p>
			</div>

			<div class="card-group">
				<label>Email</label>
				<input type="email" name="email" placeholder="Digite seu email" required>
			</div>

			<div class="card-group">
					<label>Senha</label>
					<input type="password" name="senha" placeholder="Digite sua senha" required>
			</div>

			<div class="">
				<input type="submit" value="logar" name="opcao" class="btn btn-success mb-2 mt-2"></input>
			</div>
			
			<div class="">
				<a href="usuarios?opcao=criar" class="btn btn-primary">Cadastrar-se</a>
			</div>
			
	</form>

</body>
</html>