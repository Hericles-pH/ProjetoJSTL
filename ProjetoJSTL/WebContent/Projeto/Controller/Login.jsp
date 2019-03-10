<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

</head>
<body>

 	<sql:setDataSource var = "conect" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/JSTL?useSSL=true&serverTimezone=America/Sao_Paulo"
         user = "root"  password = "wircd123" scope="session"/>
      <sql:query dataSource = "${conect}" sql = "SELECT * FROM USUARIOS WHERE LOGIN = "+${param.usuario } var = "result" />
      
      <c:if test="${ result.rowCount == 0}">
    <c:redirect url="">
         
</body>
</html>