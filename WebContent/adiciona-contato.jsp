<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C"%>
<%@ taglib tagdir ="/WEB-INF/tags" prefix="caelum" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="jquery-ui-1.12.1.custom/jquery-ui.css" rel="stylesheet">
<script type="text/javascript" src="jquery-ui-1.12.1.custom/external/jquery/jquery.js"></script>
<script type="text/javascript" src="jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<title>adiciona-contato</title>
</head>
<body>

	<C:import url="cabecalho.jsp" />

	<h1>Adiciona contatos</h1>
	<hr />
	<form action="adicionaContato">
		Nome: <input type="text" name="nome" /> <br />
		E-mail: <input	type="text" name="email" /> <br /> 
	    Endereço: <input type="text"name="endereco" /> <br />
	    Data Nascimento: <caelum:campoData id="dataNascimento"/> <br />
	    
	    
   	    <input type="submit" value="Gravar">


		<C:import url="rodape.jsp" />
	</form>
</body>
</html>