<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lista-contatos</title>
</head>
<body>

	<C:import url="cabecalho.jsp"></C:import>

	<!-- Cria o dao -->
	

	<table border="1">
		<tr>
			<th>id</th>
			<th>Nome</th>
			<th>E-mail</th>
			<th>Endereco</th>
			<th>Data Nascimento</th>
		</tr>

		<C:forEach var="contato" items="${contatos}" varStatus="id">
			<tr bgcolor="${id.count % 2 == 0 ? 'C6E2FF' : 'FFFFFF'}">

				<td>${id.count}</td>

				<td>${contato.nome}</td>

				<td><C:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</C:if> <C:if test="${empty contato.email}">
				 		E-mail não informado
				 	</C:if></td>

				<td>${contato.endereco}</td>

				<td><fmt:formatDate value="${contato.dataNascimento.time}"
						pattern="dd/MM/yyyy" /></td>

				<td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a></td>
			</tr>
		</C:forEach>
	</table>

	<C:import url="rodape.jsp"></C:import>
</body>
</html>