<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<script type="text/javascript" src="js/jquery-1.9.0.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function finalizaAgora(id){
	$.post("finalizaTarefa", {'id':id}, function(){
		$("#tarefa_"+id).html("Tarefa Finalizada!");
	});
}

function deletaTarefa(id){
	$.post("removeTarefa", {'id':id}, function(){
		$("#tarefaLinha_"+id).hide();
	});
}
</script>
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
<tr id="tarefaLinha_${tarefa.id}">
	<td>${tarefa.id}</td>
	<td>${tarefa.descricao}</td>
	<c:if test="${tarefa.finalizado eq false}">
	<td id="tarefa_${tarefa.id}"><a href="#" onclick="javascript:finalizaAgora(${tarefa.id})">Finalizar</a></td>
	</c:if>
	<c:if test="${tarefa.finalizado eq true}">
	<td>Finalizado</td>
	</c:if>
	<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" /> </td>
	<td><a href="#" onclick="javascript:deletaTarefa(${tarefa.id})">Remover</a> | <a href="mostraTarefa?tarefa.id=${tarefa.id}">Alterar</a></td>
</tr>
</c:forEach>
</table>

</body>
</html>