package br.com.kodeweave.sessao.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.kodeweave.dao.UsuarioDao;
import br.com.kodeweave.models.Usuario;

@Controller
@Scope(value=WebApplicationContext.SCOPE_REQUEST)
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
    public String efetuaLogin(Usuario usuario, HttpSession session,
    		RedirectAttributes redirectAttributes) {
    	Boolean existeUsuario = usuarioDao.buscar(usuario);
        if(existeUsuario) {
            session.setAttribute("usuarioLogado", usuario);
            return "kodeweaveFolder/editor/index.jsp";
        }
        redirectAttributes.addFlashAttribute("falha", "Usuário Inexistente");
        return "redirect:loginForm";
    }
}
