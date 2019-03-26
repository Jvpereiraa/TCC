package br.com.kodeweave.models;

import java.util.Calendar;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Projeto {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	private String nome;
	@DateTimeFormat
	private Calendar dataCriacao;
	@DateTimeFormat
	private Calendar dataFinalizacao;
	@ManyToOne(targetEntity=Usuario.class)
	@JoinColumn(name="id_Coordenador")
	private Usuario cordenador;
	@ManyToMany(targetEntity=Usuario.class)
	@JoinColumn(name="id_Participante")
	private List<Usuario> participante;
	@ManyToOne(targetEntity=StatusTarefa.class)
	@JoinColumn(name="status")
	private StatusTarefa status;
	
	public StatusTarefa getStatus() {
		return status;
	}
	public void setStatus(StatusTarefa status) {
		this.status = status;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Calendar getDataCriacao() {
		return dataCriacao;
	}
	public void setDataCriacao(Calendar dataCriacao) {
		this.dataCriacao = dataCriacao;
	}
	public Calendar getDataFinalizacao() {
		return dataFinalizacao;
	}
	public void setDataFinalizacao(Calendar dataFinalizacao) {
		this.dataFinalizacao = dataFinalizacao;
	}
	public Usuario getCordenador() {
		return cordenador;
	}
	public void setCordenador(Usuario cordenador) {
		this.cordenador = cordenador;
	}
	public List<Usuario> getParticipante() {
		return participante;
	}
	public void setParticipante(List<Usuario> participante) {
		this.participante = participante;
	}
	

}
