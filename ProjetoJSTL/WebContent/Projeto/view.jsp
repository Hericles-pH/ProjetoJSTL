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
<title>MOSTRA</title>
</head>
<body>
<sql:setDataSource var="ds"
	url="jdbc:mysql://localhost:3306/jstl?useSSL=true&serverTimezone=America/Sao_Paulo"
	user="root" password="wircd123" scope="session" />

</head>

<form action="/InsereProva">
	<c:forEach var="cont" items="" >
		
	</c:forEach>
</form>

</body>
</html>