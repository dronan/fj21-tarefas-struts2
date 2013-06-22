<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="formularioTarefas">Criar nova tarefa</a>
<br><br>

<table>
<tr>
	<th>Id</th>
	<th>Descrição</th>
	<th>Finalizado</th>
	<th>Data de Finalização</th>
	<th>Ações</th>
</tr>
<c:forEach items="${tarefas}" var="tarefa">
<tr>
	<td>${tarefa.id}</td>
	<td>${tarefa.descricao}</td>
	<c:if test="${tarefa.finalizado eq false}">
	<td>Não finalizado</td>
	</c:if>
	<c:if test="${tarefa.finalizado eq true}">
	<td>Finalizado</td>
	</c:if>
	<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" /> </td>
	<td><a href="removeTarefa?tarefa.id=${tarefa.id}">Remover</a></td>
</tr>
</c:forEach>
</table>

</body>
</html>