<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Noticia+Text|Orbitron"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="Styles//styleProva.css">
<meta charset="ISO-8859-1">
<title>Prova JSTL</title>
<jsp:useBean id="now" class="java.util.Date" />

</head>
<body>
	<div class="container">
		<form action="" method="post">
			<div id="conteudoProva">
				<h1>Prova JSTL</h1>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Aluno 1</span> <input type="text"
							name="hash" required maxlength="32" class="form-control" disabled
							value="Eduardo Felipe de Souza">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Aluno 2</span> <input type="text"
							name="hash" required maxlength="32" class="form-control" disabled
							value="Hericles Peixer">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Aluno 3</span> <input type="text"
							name="hash" required maxlength="32" class="form-control" disabled
							value="Leonardo Gabriel Giacomozzi">
					</div>
				</div>
				<fmt:formatDate type="both" var="hora" dateStyle="short"
					timeStyle="short" value="${now}" />
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Data/Hora Servidor</span> <input
							type="text" disabled value="${hora}" name="data"
							class="form-control"><br>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">C�digo HASH</span> <input
							type="text" name="hash" required maxlength="32"
							class="form-control">
					</div>
				</div>
			</div>
			<div id="conteudoProva2">
				<h1>Conte�do da Prova</h1>
				<div class="form-group">
					<textarea name="qustoes" required maxlength="64"
						class="form-control" placeholder="Digite a prova aqui..."></textarea>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Observa��es</span>
						<textarea name="observacoes" required maxlength="64"
							class="form-control"></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<button class="form-control" type="submit">Enviar</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>