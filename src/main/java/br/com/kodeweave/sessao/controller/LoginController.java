package br.com.kodeweave.sessao.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.kodeweave.dao.UsuarioDao;
import br.com.kodeweave.models.Usuario;

@Controller
public class LoginController{
	
	@Autowired
	private UsuarioDao usuarioDao;

	
	@RequestMapping("/")
    public String index(){
        System.out.println("Entrando na home da CDC");
        return "home.jsp";
    }
	
    @RequestMapping("/loginForm")
    public String loginForm() {
        return "kodeweaveFolder/tcc/index.jsp";
    }
    @RequestMapping(value = "/boasvindas", method = RequestMethod.GET)
    public ModelAndView boasVindas(@RequestParam(value = "inputCpf", required = false, defaultValue = "Cícero Ednilson") String nome) {

    	 ModelAndView modelAndView = new ModelAndView("boasVindas");
    	 modelAndView.addObject("mensagem", "Olá " + nome);

    	 return modelAndView;
    }
    
    @RequestMapping("/efetuaLogin")
    public String efetuaLogin(Usuario usuario, HttpSession session) {
    	Boolean existeUsuario = usuarioDao.buscar(usuario);
        if(existeUsuario) {
            session.setAttribute("usuarioLogado", usuario);
            return "kodeweaveFolder/tcc/tarefa/ok.jsp";
        }
        return "redirect:loginForm";
    }
}
