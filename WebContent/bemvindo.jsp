<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bem Vindo JSP</title>
</head>
<body>

	<%--comentarios em jsp --%>
	
	<%
		String mensagem = "Bem vindo ao sistema da agenda fj21!";
	%>
	
	<%out.print(mensagem); %>
	
	<br/>
	
	<% String desenvolvido = "Desenvolvido por Vinicius Guimarães"; %>
	
	<%out.print(desenvolvido); %>
	
	<br/>
	
	<%System.out.print("tudo foi executado!"); %>
	
</body>
</html>