package br.com.incentivados.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.incentivados.enumerated.Atuacao;
import br.com.incentivados.enumerated.Competencia;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
@Entity
@Table(name = "incentivo_fiscal")
public class IncentivoFiscal implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4814179166096065060L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "data_cadastro")
	private Date dataCadastro;

    private String legislacao;

    private String sigla;

    private String localidade;

    @Enumerated(EnumType.ORDINAL)
    private Competencia competencia;

    @Enumerated(EnumType.ORDINAL)
    private Atuacao atuacao;
    

}
