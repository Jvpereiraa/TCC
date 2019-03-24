<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lista Tarefa</title>
     
    </head>
    <body>
    <h1>Lista Tarefa</h1>
    <div>${sucesso}</div>
	<table>
        <tr>
        	<td>ID</td>
            <td>Descricao</td>
            <td>Status</td>
            <td>Usuário Responsável</td>
            <td>Data Inicio</td>            
            <td>Data Entrega</td>
        </tr>
        
        <c:forEach items="${tarefas}" var="tarefa">
	        <tr>
	        	<td>
			        <a href="${s:mvcUrl('TC#detalhe').arg(0,tarefa.id).build()}">
		                ${tarefa.id}
		            </a>
		        </td>
	            <td>${tarefa.descricao}</td>
	            <td>${tarefa.status}</td>
	            <td>${tarefa.usuarioResponsavel}</td>
	            <td><fmt:formatDate pattern="dd/MM/yyyy" value='${tarefa.dataCriacao.time}'/></td>
	            <td><fmt:formatDate pattern="dd/MM/yyyy" value='${tarefa.dataEntrega.time}'/></td>
	        </tr>
	    </c:forEach>
    </table>
    </body>
</html>