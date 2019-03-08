package br.com.incentivados.service;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import br.com.incentivados.model.Arquivo;
import br.com.incentivados.model.Empresa;
import br.com.incentivados.model.Entidade;
import br.com.incentivados.model.Pedido;
import br.com.incentivados.model.Usuario;
import br.com.incentivados.repository.PedidoRepository;
import br.com.incentivados.utility.FileUpload;

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
				.setPath(upload(request, cartaOficio.getFile(), "Carta Ofício -" + entidade.getNomeFantasia() + "."
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

	// Serviço que contabiliza todos os PEDIDOS por USUÁRIO
	public Long countByUsuario(Usuario usuario) {
		return pedidoRepository.countByUsuario(usuario);
	}

	// Serviço de upload de arquivos para o servidor
	public String upload(HttpServletRequest request, MultipartFile arquivo, String nomeArquivo, String url) {
		return FileUpload.upload(request, arquivo, nomeArquivo, url);
	}

}
