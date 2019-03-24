package br.com.kodeweave.sessao.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.kodeweave.dao.TarefaDao;
import br.com.kodeweave.infra.FileSaver;
import br.com.kodeweave.models.Tarefa;
import br.com.kodeweave.validation.TarefaValidation;

@Controller
@RequestMapping("/tarefa")
public class TarefaController {
	
	@Autowired
    private TarefaDao tarefaDao;
	
	@Autowired
	private FileSaver fileSaver;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    binder.addValidators(new TarefaValidation());
	}
	
	@RequestMapping("/form")
    public ModelAndView form(Tarefa tarefa) {
		ModelAndView modelAndView = new ModelAndView("kodeweaveFolder/tcc/tarefa/form.jsp");
	//	modelAndView.addObject("tipoStatus", TipoStatus.values());
        return modelAndView;
    }
	
	
	@RequestMapping(method=RequestMethod.POST)
	@CacheEvict(value="listaTarefa", allEntries=true)
	public ModelAndView gravar(MultipartFile sumario, @Valid Tarefa tarefa, BindingResult result,
			RedirectAttributes redirectAttributes) {
		
		if (result.hasErrors())
		    return form(tarefa);
		
		String path = fileSaver.write("arquivos-sumario", sumario);
        tarefa.setSumarioPath(path);
		
		tarefaDao.gravar(tarefa);
		redirectAttributes.addFlashAttribute("sucesso", "Tarefa cadastrada com sucesso!");

	    return new ModelAndView("redirect:tarefa");
	}
	
	@RequestMapping(method=RequestMethod.GET)
	@Cacheable(value="listaTarefa")
	public ModelAndView listar(){
	    List<Tarefa> tarefas = tarefaDao.listar();
	    ModelAndView modelAndView = new ModelAndView("kodeweaveFolder/tcc/tarefa/listaTarefa.jsp");
	    modelAndView.addObject("tarefas", tarefas);
	    return modelAndView;
	}
	
	@RequestMapping("/detalhe/{id}")
	public ModelAndView detalhe(@PathVariable("id") Integer id){

	    ModelAndView modelAndView = new ModelAndView("kodeweaveFolder/tcc/tarefa/detalhe.jsp");
	    Tarefa tarefa = tarefaDao.find(id);
	    modelAndView.addObject("tarefa", tarefa);

	    return modelAndView;
	}
	
	
}
