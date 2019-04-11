package br.com.incentivados.service;

import br.com.incentivados.enumerated.StatusPedido;
import br.com.incentivados.model.*;
import br.com.incentivados.repository.PedidoRepository;
import br.com.incentivados.utility.FileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

@Service
public class PedidoService {

	@Autowired
	private PedidoRepository pedidoRepository;

	// Serviço de persistência de dados do PEDIDO
	public Pedido save(Pedido pedido, HttpServletRequest request, Usuario usuario, Usuario analista, Empresa empresa,
			Entidade entidade) {

		String path = "documentos/empresas/" + empresa.getNomeFantasia() + "/pedidos";
		Arquivo cartaOficio = pedido.getDocumentosPedido().getCartaOficio();

		pedido.setUsuario(usuario);
		pedido.setAnalista(analista);
		pedido.setEmpresa(empresa);
		pedido.setEntidade(entidade);		

		pedido.getDocumentosPedido().getCartaOficio()
				.setPath(upload(request, cartaOficio.getFile(), "carta-oficio-" + DateTimeFormatter.ofPattern("ddMMuuuuHHmmss").format(LocalDateTime.now()) + "."
						+ cartaOficio.getFile().getOriginalFilename().split("\\.")[1], path));

		return pedidoRepository.save(pedido);
	}

	// Serviço de busca objeto pelo ID
	public Optional<Pedido> findById(Long id) {
		return pedidoRepository.findById(id);
	}

	// Serviço de busca todos PEDIDOS
	public List<Pedido> findAll() {
		return pedidoRepository.findAll();
	}

	// Serviço de buscar PEDIDO pelo USUÁRIO
	public List<Pedido> findByUsuario(Usuario usuario) {
		return pedidoRepository.findByUsuario(usuario);
	}

	// Serviço que contabiliza todos os PEDIDOS
	public Long count() {
		return pedidoRepository.count();
	}

	// Serviço que contabiliza todos os PEDIDOS por STATUS
	public Long countByStatus(StatusPedido status) {
		return pedidoRepository.countByStatus(status);
	}

	// Serviço que contabiliza todos os PEDIDOS por USUÁRIO
	public Long countByUsuario(Usuario usuario) {
		return pedidoRepository.countByUsuario(usuario);
	}

	// Serviço de upload de arquivos para o servidor
	public String upload(HttpServletRequest request, MultipartFile arquivo, String nomeArquivo, String url) {
		return FileUpload.upload(request, arquivo, nomeArquivo, url);
	}

}
