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
		url="jdbc:mysql://localhost:3306/JSTL?useSSL=true&serverTimezone=America/Sao_Paulo"
		user="root" password="hericles" />
	<sql:query dataSource="${conect}"
		sql="SELECT * FROM USUARIOS WHERE LOGIN = ${param.usuario}"
		var="result" />
	<c:if test="${ result.rowsCount == 1}">
		<c:if test="${ result.rows.senha == param.senha } ">
			<c:redirect url="FormularioProva.jsp"></c:redirect>
		</c:if>
	</c:if>
	<c:redirect url="index.jps"></c:redirect>

</body>
</html>