<%@page import="java.text.Format"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>

<%@ page
	import="br.com.caelum.agenda.dao.*,
       			 br.com.caelum.agenda.modelo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Lista de contatos</title>
</head>
<body>
	<table>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();

			for (Contato contato : contatos) {
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=contato.getDataNascimento().getTime()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>