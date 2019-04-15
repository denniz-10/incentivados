package br.com.incentivados.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@ToString
@Setter
@Getter
@Entity
public class Entidade implements Serializable {

	private static final long serialVersionUID = -5965040417561644262L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "data_cadastro")
	private Date dataCadastro;

	@Column(name = "nome_fantasia")
	private String nomeFantasia;

	@Column(name = "razao_social")
	private String razaoSocial;

	private String cnpj;
	
	@Column(columnDefinition = "TEXT")
	private String sobre;
	
	@JoinColumn(name = "endereco_id")
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Endereco endereco;

	@JoinColumn(name = "usuario_id")
	@ManyToOne(fetch = FetchType.EAGER)
	private Usuario usuario;
	
	@JoinColumn(name = "documentos_entidade_id")
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private DocumentosEntidade documentosEntidade;
	
	@OneToMany(fetch = FetchType.LAZY, orphanRemoval = true)
	private List<Projeto> projetos;
	
	//Construtor Padrão
	public Entidade() {
		this.dataCadastro = new Date();
	}
	
}
