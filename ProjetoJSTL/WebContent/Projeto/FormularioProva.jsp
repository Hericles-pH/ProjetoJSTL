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
<script type="text/javascript" src="Scripts/UploadImg.js"></script>

<meta charset="ISO-8859-1">
<title>Prova JSTL</title>
<jsp:useBean id="now" class="java.util.Date" />

</head>
<body>
	<div class="container">
		<form action="../Projeto/Controller/InsereProva.jsp" method="post" enctype="multipart-formData">
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
				<fmt:formatDate type="both" var="hora" dateStyle="medium"
					timeStyle="medium" value="${now}" />
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Data/Hora Servidor</span> 
						<input type="text" name="dataServ" class="form-control" value="${hora}" disabled>
						<input type="hidden" name="dataBanco" value="${ hora }">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Código HASH</span> <input
							type="text" name="hash" required maxlength="32"
							class="form-control">
					</div>
				</div>
			</div>
			<div id="conteudoProva2">
				<h1>Conteúdo da Prova</h1>
				<div class="form-group">
					<textarea name="questoes" required maxlength="65536"
					class="form-control" rows="20" placeholder="Digite a prova aqui..."></textarea>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Observações</span>
						<textarea name="coments" maxlength="32768"
							class="form-control" required></textarea>
					</div>
				</div>
			</div>
			<div id="conteudoProva3">
				<h1>Inserir IMAGEM</h1>
				<div class="form-group">
					<div class="input-group">
						<input type="file" name="imgBanco" accept="image/*" class="form-control" onchange="upload();" id="input">
					</div>
				</div>
				<div>
					<img src="" name="imagem" width="200px" height="200px" id="teste">
				</div>
				<div class="form-group">
					<div class="input-group">
						<button class="form-control" type="submit" id="enviar">Enviar Tudo</button>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>
</html>