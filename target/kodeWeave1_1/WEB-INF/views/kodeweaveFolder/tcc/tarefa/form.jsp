<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Tarefa</title>
</head>
<body>
	<form:form action="/kodeWeave1_1/tarefa" method="POST" modelAttribute="tarefa"
		enctype="multipart/form-data">
        <div>
            <label>Projeto</label>
            <form:input path="projeto" />
             <form:errors path="projeto" />
        </div>
        <div>
            <label>Data de Criação</label>
            <form:input path="dataCriacao" />
             <form:errors path="dataCriacao" />
        </div>
        <div>
            <label>Data de Entrega</label>
            <form:input path="dataEntrega" />
             <form:errors path="dataEntrega" />
        </div>
        <div>
            <label>Usuário Responsável</label>
            <form:input path="usuarioResponsavel" />
            <form:errors path="usuarioResponsavel" />
        </div>
        <div>
            <label>Usuário Criador</label>
            <form:input path="usuarioCriador" />
            <form:errors path="usuarioCriador" />
        </div>
        <div>
            <label>Descrição</label>
            <form:textarea path="descricao" rows="10" cols="20"/>
            <form:errors path="descricao" />
        </div>
        <div>
	        <label>Sumário</label> 
	        <input name="sumario" type="file" />
   		</div>
        <!-- 
        <c:forEach items="${tipoStatus}" var="tipoStatusAux" varStatus="status">
		    <div>
		        <label>${tipoStatusAux}</label>
		        <input type="text" name="precos[${status.index}].valor">
		        <input type="hidden" name="precos[${status.index}].tipo" value="${tipoStatusAux}">
		    </div>
		</c:forEach>
		 -->
		<div>
			
			<form:select path="status" >
			 <form:option value="Em_andamento">Em andamento</form:option>
			 <form:option value="Concluido">Concluido</form:option>
			 <form:option value="Atrasado">Atrasado</form:option>
			</form:select> 
		</div> 	
        
        <button type="submit">Cadastrar</button>
	</form:form>
</body>
</html>