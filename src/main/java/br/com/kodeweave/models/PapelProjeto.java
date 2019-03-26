package br.com.kodeweave.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class PapelProjeto {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	@ManyToOne(targetEntity=Projeto.class)
	@JoinColumn(name="id_Projeto")
	private Projeto projeto;
	@ManyToOne(targetEntity=Role.class)
	@JoinColumn(name="id_Role")
	private Role role;
	
	public Projeto getProjeto() {
		return projeto;
	}
	public void setProjeto(Projeto projeto) {
		this.projeto = projeto;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
}
