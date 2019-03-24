package br.com.kodeweave.validation;

import java.util.Calendar;
import java.util.InputMismatchException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.kodeweave.dao.UsuarioDao;
import br.com.kodeweave.models.Tarefa;
import br.com.kodeweave.models.Usuario;

public class UsuarioValidation implements Validator {
	
	

	@Override
	public boolean supports(Class<?> clazz) {
		return Usuario.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "login", "field.required");
        ValidationUtils.rejectIfEmpty(errors, "senha", "field.required");
        ValidationUtils.rejectIfEmpty(errors, "email", "field.required");
        ValidationUtils.rejectIfEmpty(errors, "confirmaSenha", "field.required");
        
        Usuario usuario = (Usuario) target;
        String email = usuario.getEmail();
        String regex = "[A-Za-z0-9\\._-]+@[A-Za-z]+\\.[A-Za-z]+";
        String regex2 = "[A-Za-z0-9\\._-]+@[A-Za-z]+\\.[A-Za-z]+\\.[A-Za-z]+";
        if(email.length() != 0)
	        if(!email.matches(regex) && !email.matches(regex2)) 
	        {
	        	errors.rejectValue("email", "field.emailErrado");
	        }
        
        String login = usuario.getLogin();
        
        if(login.length() != 0)
        {
        	Boolean cpfValido = isCPF(login);
        	if(!cpfValido)
        	{
        		errors.rejectValue("login", "field.cpfInvalido");
        	}
        }
        
        if(!(usuario.getSenha().equals(usuario.getConfirmaSenha())))
        	errors.rejectValue("senha", "field.senhaNConfirmada");
	    
	       
	        
/*
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
	        	*/
	 }
	
	public static boolean isCPF(String CPF) {
        // considera-se erro CPF's formados por uma sequencia de numeros iguais
        if (CPF.equals("00000000000") ||
            CPF.equals("11111111111") ||
            CPF.equals("22222222222") || CPF.equals("33333333333") ||
            CPF.equals("44444444444") || CPF.equals("55555555555") ||
            CPF.equals("66666666666") || CPF.equals("77777777777") ||
            CPF.equals("88888888888") || CPF.equals("99999999999") ||
            (CPF.length() != 11))
            return(false);
          
        char dig10, dig11;
        int sm, i, r, num, peso;
          
        // "try" - protege o codigo para eventuais erros de conversao de tipo (int)
        try {
        // Calculo do 1o. Digito Verificador
            sm = 0;
            peso = 10;
            for (i=0; i<9; i++) {              
        // converte o i-esimo caractere do CPF em um numero:
        // por exemplo, transforma o caractere '0' no inteiro 0         
        // (48 eh a posicao de '0' na tabela ASCII)         
            num = (int)(CPF.charAt(i) - 48); 
            sm = sm + (num * peso);
            peso = peso - 1;
            }
          
            r = 11 - (sm % 11);
            if ((r == 10) || (r == 11))
                dig10 = '0';
            else dig10 = (char)(r + 48); // converte no respectivo caractere numerico
          
        // Calculo do 2o. Digito Verificador
            sm = 0;
            peso = 11;
            for(i=0; i<10; i++) {
            num = (int)(CPF.charAt(i) - 48);
            sm = sm + (num * peso);
            peso = peso - 1;
            }
          
            r = 11 - (sm % 11);
            if ((r == 10) || (r == 11))
                 dig11 = '0';
            else dig11 = (char)(r + 48);
          
        // Verifica se os digitos calculados conferem com os digitos informados.
            if ((dig10 == CPF.charAt(9)) && (dig11 == CPF.charAt(10)))
                 return(true);
            else return(false);
                } catch (InputMismatchException erro) {
                return(false);
            }
        }

	

}
