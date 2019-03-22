
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.util.Map"%>
<%@ page language="java" import="Bd.dao.AvaliacaoDAO"%>
<%@ page language="java" import="Bean.AvaliacaoBean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
<link rel="stylesheet" href="../Styles/styleView.css">

<meta charset="ISO-8859-1">
<sql:setDataSource var="ds"
	url="jdbc:mysql://localhost:3306/jstl?useSSL=true&serverTimezone=America/Sao_Paulo"
	user="root" password="hericles" scope="session" />
<title>Vizualizar Prova</title>
</head>
<body>


	<%
		AvaliacaoDAO provaDAO = new AvaliacaoDAO();
		Map<String, String> imagensMapa = provaDAO.consultaTodos();
	%>
	<sql:query var="provas" dataSource="${ds}">
		SELECT  dataHora, hashcode, questoesProva, comentarios FROM CONTEUDOPROVA  order by cd_cont desc LIMIT 1
	</sql:query>
	<div class="container">
		<form action="/InsereProva" method="post">

			<c:forEach var="row" items="${provas.rows}">
				<div id="conteudoProva">
					<h1>Prova JSTL</h1>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Data/Hora Servidor</span> <input
								type="text" name="dataServ" class="form-control"
								value="${ row.dataHora }" disabled> <input type="hidden"
								name="dataBanco" value="${ row.dataHora }">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Código HASH</span> <input
								type="text" name="hash" required maxlength="32"
								class="form-control" value="${row.hashcode }" disabled>
						</div>
					</div>


					<h1>Conteúdo da Prova</h1>
					<div class="form-group">
						<textarea name="questoes" required maxlength="65536"
							class="form-control" rows="20"
							placeholder="Digite a prova aqui..." disabled>${row.questoesProva} </textarea>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Observações</span>
							<textarea name="coments" maxlength="32768" class="form-control"
								required disabled><c:out value="${row.comentarios }"></c:out></textarea>
						</div>
					</div>
					<div>
						<img alt="" height="30%" width="30%" src='<%=(String) imagensMapa.get("pk")%>'>
					</div>
				</div>
			</c:forEach>
		</form>
	</div>

</body>
</html>