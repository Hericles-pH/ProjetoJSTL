<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>

</head>
<body>
	<sql:setDataSource var="connect" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/jstl?useSSL=true&serverTimezone=America/Sao_Paulo"
		user="root" password="hericles" />

	<sql:query var="qryComents" dataSource="${ connect }">
	select a.date_hora, a.comentarios, b.usuario from conteudoprova a, loginprova b where a.loginProva_cd_log = b.cd_log;
</sql:query>

	<c:forEach var="coments" items="${ qryComents.rows }">
		
			<div class="media">
				<div class="media-body">
					<h4 class="media-heading">
						${ coments.usuario } <small><i>Posted on February <fmt:formatDate value="${ coments.date_hora }"/> </i></small>
					</h4>
					<p>${ coments.comentarios }</p>
				</div>
			</div>
		
	</c:forEach>
</body>
</html>