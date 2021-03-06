<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta charset="ISO-8859-1">
<title>Processando</title>
</head>
<body>
	<c:catch var="erro">
		<sql:transaction dataSource="${ conect }">
			<sql:update var="insereProva">
			INSERT INTO conteudoProva (hashcode, questoesProva, dataHora, comentarios) VALUES (?, ?, ?, ?);
				<sql:param value="${ param.hash }" />
				<sql:param value="${ param.questoes }" />
				<sql:param value="${ param.dataBanco }" />
				<sql:param value="${ param.coments }" />
			</sql:update>
		</sql:transaction>
	</c:catch>
	<h1>
		<c:out default="Dados gravados com sucesso!!" value="${ erro }" />
	</h1>
	
	<jsp:forward page="/DownloadServlet.html"> 
		<jsp:param name="idProva" value="${param.hash}"/>
		<jsp:param name="img" value="${param.img}" /> 
	</jsp:forward> 
</body>
</html>