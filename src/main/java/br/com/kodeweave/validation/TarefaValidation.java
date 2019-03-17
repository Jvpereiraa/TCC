package br.com.kodeweave.validation;

import java.util.Calendar;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.kodeweave.models.Tarefa;

public class TarefaValidation implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return Tarefa.class.isAssignableFrom(clazz);
    }
    

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmpty(errors, "projeto", "field.required");
        ValidationUtils.rejectIfEmpty(errors, "dataCriacao", "field.required");
        ValidationUtils.rejectIfEmpty(errors, "dataEntrega", "field.required");
        ValidationUtils.rejectIfEmpty(errors, "usuarioResponsavel", "field.required");
        ValidationUtils.rejectIfEmpty(errors, "usuarioCriador", "field.required");
        ValidationUtils.rejectIfEmpty(errors, "status", "field.required");

        Tarefa tarefa = (Tarefa) target;
        Calendar dataCricao = tarefa.getDataCriacao();
        Calendar dataEntrega = tarefa.getDataEntrega();
        if(dataCricao != null && dataEntrega!= null) 
        {
	        if(dataEntrega.before(dataCricao)) {
	            errors.rejectValue("dataCriacao", "field.dataCricao");
	            errors.rejectValue("dataEntrega", "field.dataCricao");
	        }
        }
        
        if(tarefa.getDescricao().length() == 0)
        	errors.rejectValue("descricao", "field.required");
    }

}