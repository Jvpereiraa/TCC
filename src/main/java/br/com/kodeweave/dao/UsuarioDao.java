package br.com.kodeweave.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.stereotype.Repository;

import br.com.kodeweave.models.Usuario;

@Repository
@Transactional
public class UsuarioDao {
	
	@PersistenceContext
    private EntityManager manager;
	
	public void gravar(Usuario usuario) {
	        manager.persist(usuario);
	 }
    
	
	public Boolean buscar(Usuario usuario) {
		//StringBuilder sb =  new StringBuilder();
		//sb.append("select * from Usuario where login=\" +\n" + 
		//		usuario.getLogin() + " and senha=" + usuario.getSenha());
		System.out.println("aq");
		List<Usuario> usuarios = manager.createQuery("select u from Usuario u where u.login='" + 
				usuario.getLogin()+"'" + " and u.senha='" + usuario.getSenha()+"'", Usuario.class).getResultList();
		if(usuarios.isEmpty())
			return false;
		else
			return true;
	
	}


	public Boolean buscarUsuarioExistente(Usuario usuario) {
		List<Usuario> usuarios = manager.createQuery("select u from Usuario u where u.login='" + 
				usuario.getLogin()+"'" + " and u.senha='" + usuario.getSenha()+"'", Usuario.class).getResultList();
		if(usuarios.isEmpty())
			return false;
		else
			return true;
	}

   

}
