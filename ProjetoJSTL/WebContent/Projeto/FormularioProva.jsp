<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<jsp:useBean id="now" class="java.util.Date" />
	
	</head>
	<body>

		<div class="container">
			<div>
				<ul>
					<li><p>Eduaro Felipe de Souza</p></li>
					<li><p>Hericles Peixer</p></li>
					<li><p>Leonardo Gabriel Giacomozzi</p></li>
				</ul>
				<fmt:formatDate type = "both" var="hora"
         				dateStyle = "short" timeStyle = "short" value = "${now}"/>
			</div>
			<form action="" method="post">
		        <div class="">
		        <input type="text" disabled value="${hora}" name="data"><br>	
		          <label for="prova.hash"><b>Codigo Hash</b></label><br>
		          <input type="text" placeholder="Nome de usuario" name="hash" required maxlength="32">
					<br>
		          <label ><b>Prova</b></label><br>
		          <textarea placeholder="Complete com as questões da prova" name="qustoes" required  maxlength="64"></textarea>
		          <br>
		          <label ><b>Observações</b></label><br>
		          <textarea placeholder="Descreva as suas observações" name="observacoes" required  maxlength="64"></textarea>
		          <br>
		          <button type="submit">Entrar</button>
		        </div>
			</form>
		</div>
	</body>
</html>