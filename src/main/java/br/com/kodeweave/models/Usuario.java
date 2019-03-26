package br.com.kodeweave.models;

import java.sql.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;

/**
 *
 * @author zelphy
 */

@Entity
//@Scope(value=WebApplicationContext.SCOPE_SESSION)
public class Usuario {
    
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String login;
    private String senha;
    private String confirmaSenha;
    private String email;
    private String formacao;
	private String pathFoto;
    private Date dataCricao;
    private String cnpj;
    @ManyToMany(targetEntity=PapelProjeto.class)
    @JoinColumn(name="id_PapelProjeto")
	private List<PapelProjeto> papelProjeto;
    
    
	public List<PapelProjeto> getPapelProjeto() {
		return papelProjeto;
	}
	public void setPapelProjeto(List<PapelProjeto> papelProjeto) {
		this.papelProjeto = papelProjeto;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFormacao() {
		return formacao;
	}
	public void setFormacao(String formacao) {
		this.formacao = formacao;
	}
	
	public Date getDataCricao() {
		return dataCricao;
	}
	public void setDataCricao(Date dataCricao) {
		this.dataCricao = dataCricao;
	}
	public String getCnpj() {
		return cnpj;
	}
	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
	public String getConfirmaSenha() {
		return confirmaSenha;
	}
	public void setConfirmaSenha(String confirmaSenha) {
		this.confirmaSenha = confirmaSenha;
	}
	public String getPathFoto() {
		return pathFoto;
	}
	public void setPathFoto(String pathFoto) {
		this.pathFoto = pathFoto;
	}

   
    
}

