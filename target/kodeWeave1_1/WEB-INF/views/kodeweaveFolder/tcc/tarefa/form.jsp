<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Tarefa</title>
</head>
<body>
    <form action="/kodeWeave1_1/tarefa" method="POST">
        <div>
            <label>Projeto</label>
            <input type="text" name="projeto" />
        </div>
        <div>
            <label>Data de Criação</label>
            <input type="date" name="dataCriacao" />
        </div>
        <div>
            <label>Data de Entrega</label>
            <input type="date" name="dataEntrega" />
        </div>
        <div>
            <label>Usuário Responsável</label>
            <input type="text" name="usuarioResponsavel" />
        </div>
        <div>
            <label>Usuário Criador</label>
            <input type="text" name="usuarioCriador" />
        </div>
        <div>
            <label>Descrição</label>
            <textarea rows="10" cols="20" name="descricao"></textarea>
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
			
			<select name="status" >
			 <option value="Em_andamento">Em andamento</option>
			 <option value="Concluido">Concluido</option>
			 <option value="Atrasado">Atrasado</option>
			</select> 
		</div> 	
        
        <button type="submit">Cadastrar</button>
    </form>
</body>
</html>