package br.com.kodeweave.models;

import java.sql.Date;
import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
public class Tarefa {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String projeto = "";
	@DateTimeFormat
	private Calendar dataCriacao = null;
	@DateTimeFormat
	private Calendar dataEntrega = null;
	private String usuarioResponsavel = "";
	private String usuarioCriador = "";
	private String descricao = "";
	private String status;
	private String sumarioPath;
	
	public String getProjeto() {
		return projeto;
	}
	public void setProjeto(String projeto) {
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
	public String getUsuarioResponsavel() {
		return usuarioResponsavel;
	}
	public void setUsuarioResponsavel(String usuarioResponsavel) {
		this.usuarioResponsavel = usuarioResponsavel;
	}
	public String getUsuarioCriador() {
		return usuarioCriador;
	}
	public void setUsuarioCriador(String usuarioCriador) {
		this.usuarioCriador = usuarioCriador;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
	@Override
    public String toString() {
        return "Tarefa [Projeto=" + projeto + ", descricao=" + descricao + 
        		", Data Criação=" + dataCriacao + ", Data Entrega=" + dataEntrega +
        		", usuario responsavel=" + usuarioResponsavel + ", usuario criador=" +
        		usuarioCriador + ", status=" + status + "]";
    }
	public String getSumarioPath() {
		return sumarioPath;
	}
	public void setSumarioPath(String sumarioPath) {
		this.sumarioPath = sumarioPath;
	}
	

}
