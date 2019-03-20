<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

</head>
<body>
	<sql:setDataSource var="conect" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/jstl?useSSL=true&serverTimezone=America/Sao_Paulo"
		user="root" password="wircd123" scope="session" />
	<sql:query dataSource="${conect}" var="result">
		SELECT * FROM loginprova WHERE Usuario = ?
		<sql:param value="${param.usuario}" />
	</sql:query>
	<c:set var="ao" value="${param.senha}" />
	<c:forEach var="row" items="${result.rows}">
		<c:if test="${row.senha == param.senha}">
			<c:redirect url="../FormularioProva.jsp"></c:redirect>
		</c:if>
	</c:forEach>
	<c:redirect url="../index.jsp"></c:redirect>
</body>
</html>