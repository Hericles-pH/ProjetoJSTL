<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
    <link rel="stylesheet" href="Styles//styleLogin.css">
		<meta charset="ISO-8859-1">
		<title>Login</title>
	</head>
	<body>
<div id="login">

			<form action="Controller/Login.jsp" method="post">
		        <div class="container">
		          <label for="user.name"><b>Usuario</b></label>
		          <input type="text" placeholder="Nome de usuario" name="usuario" required>

		          <label for="user.senha"><b>Password</b></label>
		          <input type="password" placeholder="Digite sua senha" name="senha" required>
		          <button type="submit">Entrar</button>
		        </div>
			</form>

      </div>
	</body>
</html>
