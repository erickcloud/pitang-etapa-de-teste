<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Controle de Acesso</title>

	<link rel="stylesheet" href="css/estilo.css">

</head>
<body>

	<form class="form" action="login" method="post">
	<input type="hidden" name="opcao" value="logar">
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

			<div class="card-group btn">
				<button type="submit">ACESSAR</button>
			</div>
			
	</form>

</body>
</html>