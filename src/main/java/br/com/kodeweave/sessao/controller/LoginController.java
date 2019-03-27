package br.com.kodeweave.sessao.controller;

import java.util.concurrent.Callable;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.kodeweave.dao.UsuarioDao;
import br.com.kodeweave.infra.FileSaver;
import br.com.kodeweave.models.Usuario;
import br.com.kodeweave.validation.UsuarioValidation;

@Controller
//@Scope(value=WebApplicationContext.SCOPE_REQUEST)
public class LoginController{
	
	@Autowired
	private UsuarioDao usuarioDao;
	
	@Autowired
	private FileSaver fileSaver;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    binder.addValidators(new UsuarioValidation());
	}

	
	@RequestMapping("/")
    public String index(){
        System.out.println("Entrando na home da CDC");
        return "home.jsp";
    }
	
    @RequestMapping("/loginForm")
    public ModelAndView loginForm() {
    	ModelAndView modelAndView = new ModelAndView("kodeweaveFolder/tcc/index.jsp");
        return modelAndView;
    }
    @RequestMapping(value = "/boasvindas", method = RequestMethod.GET)
    public ModelAndView boasVindas(@RequestParam(value = "inputCpf", required = false, defaultValue = "Cícero Ednilson") String nome) {

    	 ModelAndView modelAndView = new ModelAndView("boasVindas");
    	 modelAndView.addObject("mensagem", "Olá " + nome);

    	 return modelAndView;
    }
    
    @RequestMapping("/editor")
    public String editor() {
    	return "kodeweaveFolder/editor/index.jsp";
    }
    
    @RequestMapping("/home")
    public String home() {
    	return "kodeweaveFolder/tcc/home/home.jsp";
    }
    
    @RequestMapping("/efetuaLogin")
    public Callable<ModelAndView> efetuaLogin(Usuario usuario, HttpSession session,
    		RedirectAttributes redirectAttributes) {
    	return () -> {
	    	Boolean existeUsuario = usuarioDao.buscar(usuario);
	        if(existeUsuario) {
	            session.setAttribute("usuarioLogado", usuario);
	            return new ModelAndView("redirect:home");
	        }
	        redirectAttributes.addFlashAttribute("falha", "Usuário Inexistente");
	        return new ModelAndView("redirect:loginForm");
    	};
    }
    
    @RequestMapping("logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:loginForm";
    }
    
    
    @RequestMapping(value = "/cadastroUsuario",  method = RequestMethod.GET )
    public ModelAndView cadastroUsuario(Usuario usuario) {
    	ModelAndView modelAndView = new ModelAndView("kodeweaveFolder/tcc/usuario/cadastroUsuario.jsp");
    	return modelAndView;
    }
    
    @RequestMapping(value ="/cadastroUsuario",  method = RequestMethod.POST )
    public Callable<ModelAndView> gravaUsuario(MultipartFile foto, @Valid Usuario usuario, BindingResult result,
			RedirectAttributes redirectAttributes) {
    	return() ->{
	    	Boolean existe = usuarioDao.buscarUsuarioExistente(usuario);
	    	if(existe) {
	    		redirectAttributes.addFlashAttribute("usuarioExistente", 
	    				"Usuário já cadastrado com esse login");
	    		 return new ModelAndView("redirect:cadastroUsuario");
	    	} 
	    	
	    	if (result.hasErrors())
			    return cadastroUsuario(usuario);
	    	
			
			String path = fileSaver.write("arquivos-foto", foto);
	        usuario.setPathFoto(path);
			
			usuarioDao.gravar(usuario);
			redirectAttributes.addFlashAttribute("sucesso", "Usuário cadastrado com sucesso!");
	
		    return new ModelAndView("redirect:loginForm");
    	};
    }
    
}
