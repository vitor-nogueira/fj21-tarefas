package br.com.caelum.tarefas.modelo;

import java.util.Calendar;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Tarefa {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@NotNull (message="O campo nao pode estar vazio") @Size (min=5, message="Não pode ser menor que 5 caracteres")
	private String descricao;
	
	private boolean finalizado;
	
	@Temporal (TemporalType.DATE)
	@DateTimeFormat (pattern="dd/MM/yyyy")
	private Calendar dataFinalizacao;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public boolean isFinalizado() {
		return finalizado;
	}

	public void setFinalizado(boolean finalizado) {
		this.finalizado = finalizado;
	}

	public Calendar getDataFinalizacao() {
		return dataFinalizacao;
	}

	public void setDataFinalizacao(Calendar dataFinalizacao) {
		this.dataFinalizacao = dataFinalizacao;
	}

}
