package br.com.incentivados.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.incentivados.enumerated.StatusPedido;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
@Entity
@Table(name = "pedido")
public class Pedido implements Serializable {

	private static final long serialVersionUID = 6294036397205620735L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "data_cadastro")
	private Date dataCadastro;

	@Column(columnDefinition = "TEXT")
	private String solicitacao;

	@JoinColumn(name = "documentos_pedido_id")
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private DocumentosPedido documentosPedido;

	@Enumerated(EnumType.ORDINAL)
	@Column(name = "status")
	private StatusPedido status;

	@JoinColumn(name = "usuario_id")
	@ManyToOne(fetch = FetchType.EAGER)
	private Usuario usuario;

	@JoinColumn(name = "analista_id")
	@ManyToOne(fetch = FetchType.EAGER)
	private Usuario analista;

	@JoinColumn(name = "entidade_id")
	@ManyToOne(fetch = FetchType.EAGER)
	private Entidade entidade;

	@JoinColumn(name = "empresa_id")
	@ManyToOne(fetch = FetchType.EAGER)
	private Empresa empresa;

	// Construtor
	public Pedido() {
		this.dataCadastro = new Date();
		this.status = StatusPedido.PENDENTE;
	}

}
