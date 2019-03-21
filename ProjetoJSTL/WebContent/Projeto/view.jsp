<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<base href="/" />
<meta charset="ISO-8859-1">
<sql:setDataSource var="ds"
	url="jdbc:mysql://localhost:3306/jstl?useSSL=true&serverTimezone=America/Sao_Paulo"
	user="root" password="wircd123" scope="session" />
<title>MOSTRA</title>
</head>
<body>


	<sql:query var="provas" dataSource="${ds}">
		SELECT * FROM PROVAS ORDER BY dataHora;
	</sql:query>

<form action="/InsereProva">
	
	<c:forEach var="cont" items="${provas.rows}" >
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
	</c:forEach>
</form>

</body>
</html>