<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<sql:setDataSource var="conect" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/jstl?useSSL=true&serverTimezone=America/Sao_Paulo"
		user="root" password="hericles" />

	<sql:query var="qryObs" dataSource="${ conect }">
	select a.date_hora, a.comentarios, b.usuario from conteudoprova a, loginprova b where a.loginProva_cd_log = b.cd_log;
</sql:query>

	<c:forEach var="obs" items="${ qryObs.rows }">
		<div class="container">
			<div class="media">
				<div class="media-body">
					<h4 class="media-heading">
						${ obs.usuario } <small><i>Posted on February <fmt:formatDate value="${ obs.date_hora }"/> </i></small>
					</h4>
					<p>${ obs.comentarios }</p>
				</div>
			</div>
		</div>
	</c:forEach>
</body>
</html>