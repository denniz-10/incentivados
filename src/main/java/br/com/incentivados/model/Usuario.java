package br.com.incentivados.model;

import br.com.incentivados.enumerated.TipoUsuario;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

@ToString
@Setter
@Getter
@Entity
@Table(name = "usuario")
public class Usuario implements Serializable {

	private static final long serialVersionUID = 4802512298815065850L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "data_cadastro")
	private Date dataCadastro;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "ultimo_acesso")
	private Date ultimoAcesso;

	@NotBlank(message = "Nome não pode ser nulo ou vazio.")
	private String nome;

	@NotBlank(message = "Sobrenome não pode ser nulo ou vazio.")
	private String sobrenome;

	@NotBlank(message = "Telefone não pode ser nulo ou vazio.")
	private String telefone;

	@NotBlank(message = "Cpf não pode ser nulo ou vazio.")
	@Length(min = 14, max = 14, message = "O cpf Deve conter 14 dígitos.")
	@Column(unique = true)
	private String cpf;

	@Email(message = "Informe um email válido")
	private String email;

	@NotNull(message = "Senha não pode ser nula.")
	@Length(min = 6, message = "Senha deve conter no mínimo 6 caracteres")
	private String senha;

	@Enumerated(EnumType.ORDINAL)
	@Column(name = "tipo_usuario")
	private TipoUsuario tipoUsuario;

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "endereco_id")
	private Endereco endereco;
}
