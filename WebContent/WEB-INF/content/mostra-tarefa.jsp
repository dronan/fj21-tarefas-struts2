<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Alterar Tarefa: ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" value="${tarefa.id}" name="tarefa.id" />
		Descrição:<br>
		<textarea name="tarefa.descricao" rows="5" cols="100">${tarefa.descricao}</textarea>
		<br> Finalizado? <input type="checkbox" name="tarefa.finalizado"
			value="true" ${tarefa.finalizado?'checked':''} /><br> Data de
		Finalização:<br>  <input type="text" name="tarefa.dataFinalizacao"
			value='<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" />' /> 
		<br> <input type="submit" value="Alterar" />
	</form>

</body>
</html>