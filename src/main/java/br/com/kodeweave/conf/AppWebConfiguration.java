package br.com.kodeweave.conf;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.format.datetime.DateFormatterRegistrar;
import org.springframework.format.support.DefaultFormattingConversionService;
import org.springframework.format.support.FormattingConversionService;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import br.com.kodeweave.dao.TarefaDao;
import br.com.kodeweave.dao.UsuarioDao;
import br.com.kodeweave.infra.FileSaver;
import br.com.kodeweave.sessao.controller.LoginController;

@EnableWebMvc
@ComponentScan(basePackageClasses={LoginController.class, TarefaDao.class,
		UsuarioDao.class, FileSaver.class})
public class AppWebConfiguration implements WebMvcConfigurer{
	
	private ApplicationContext applicationContext;

    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }
	
	@Bean
	public InternalResourceViewResolver internalResourceViewResolver(){
	    InternalResourceViewResolver resolver = new InternalResourceViewResolver();
	    resolver.setPrefix("/WEB-INF/views/");
	    //resolver.setSuffix(".html");
	    return resolver;
	}
	
	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }
	
	@Bean
	public MessageSource messageSource() {
	    ReloadableResourceBundleMessageSource messageSource =
	        new ReloadableResourceBundleMessageSource();

	    messageSource.setBasename("/WEB-INF/messages");
	    messageSource.setDefaultEncoding("UTF-8");
	    messageSource.setCacheSeconds(1);

	    return messageSource;
	}
	
	@Bean
	public FormattingConversionService mvcConversionService() {
	    DefaultFormattingConversionService conversionService = 
	        new DefaultFormattingConversionService();
	    DateFormatterRegistrar registrar = new DateFormatterRegistrar();
	    registrar.setFormatter(new DateFormatter("dd/MM/yyyy"));
	    registrar.registerFormatters(conversionService);

	    return conversionService;
	}
	
	@Bean
	public MultipartResolver multipartResolver() {
	    return new StandardServletMultipartResolver();
	}

}
