<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lista-contatos</title>
</head>
<body>

	<!-- Cria o dao -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />

	<table border="1">
		<tr>
			<th>id</th>
			<th>Nome</th>
			<th>E-mail</th>
			<th>Endereco</th>
			<th>Data Nascimento</th>
		</tr>

		<C:forEach var="contato" items="${dao.lista}" varStatus="id">
			<tr bgcolor="${id.count % 2 == 0 ? 'C6E2FF' : 'FFFFFF'}">

				<td>${id.count}</td>
				<td>${contato.nome}</td>
				<td>
				 	<C:if test="${not empty contato.email}">
				 		<a href="mailto:${contato.email}">${contato.email}</a>
				 	</C:if>
				 	
				 	<C:if test="${empty contato.email}">
				 		E-mail não informado
				 	</C:if>
				</td>
				<td>${contato.endereco}</td>
				<td>${contato.dataNascimento.time}</td>
			</tr>
		</C:forEach>
	</table>
</body>
</html>