package br.com.kodeweave.models;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
public class Tarefa {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne(targetEntity=Projeto.class)
	@JoinColumn(name="id_Projeto")
	private Projeto projeto;
	@DateTimeFormat
	private Calendar dataCriacao = null;
	@DateTimeFormat
	private Calendar dataEntrega = null;
	@ManyToOne(targetEntity=Usuario.class)
	@JoinColumn(name="id_UsuarioResponsavel")
	private Usuario usuarioResponsavel;
	@ManyToOne(targetEntity=Usuario.class)
	@JoinColumn(name="id_UsuarioCriador")	
	private Usuario usuarioCriador;
	private String descricao = "";
	private String sumarioPath;
	@ManyToOne(targetEntity=StatusTarefa.class)
	@JoinColumn(name="status")
	private StatusTarefa status;
	
	
	public Projeto getProjeto() {
		return projeto;
	}
	public void setProjeto(Projeto projeto) {
		this.projeto = projeto;
	}
	public Calendar getDataCriacao() {
		return dataCriacao;
	}
	public void setDataCriacao(Calendar dataCriacao) {
		this.dataCriacao = dataCriacao;
	}
	public Calendar getDataEntrega() {
		return dataEntrega;
	}
	public void setDataEntrega(Calendar dataEntrega) {
		this.dataEntrega = dataEntrega;
	}
	public Usuario getUsuarioResponsavel() {
		return usuarioResponsavel;
	}
	public void setUsuarioResponsavel(Usuario usuarioResponsavel) {
		this.usuarioResponsavel = usuarioResponsavel;
	}
	public Usuario getUsuarioCriador() {
		return usuarioCriador;
	}
	public void setUsuarioCriador(Usuario usuarioCriador) {
		this.usuarioCriador = usuarioCriador;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public StatusTarefa getStatus() {
		return status;
	}
	public void setStatus(StatusTarefa status) {
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	/*
	@Override
    public String toString() {
        return "Tarefa [Projeto=" + projeto + ", descricao=" + descricao + 
        		", Data Criação=" + dataCriacao + ", Data Entrega=" + dataEntrega +
        		", usuario responsavel=" + usuarioResponsavel + ", usuario criador=" +
        		usuarioCriador + ", status=" + status + "]";
    }*/
	public String getSumarioPath() {
		return sumarioPath;
	}
	public void setSumarioPath(String sumarioPath) {
		this.sumarioPath = sumarioPath;
	}
	

}
