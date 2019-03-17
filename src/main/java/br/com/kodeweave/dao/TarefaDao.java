package br.com.kodeweave.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.kodeweave.models.Tarefa;

@Repository
@Transactional
public class TarefaDao {
	
	@PersistenceContext
    private EntityManager manager;

    public void gravar(Tarefa tarefa) {
        manager.persist(tarefa);
    }
    
    public List<Tarefa> listar(){
        return manager.createQuery("select t from Tarefa t", Tarefa.class).getResultList();
    }

}
