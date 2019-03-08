package br.com.incentivados.service;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import br.com.incentivados.model.Arquivo;
import br.com.incentivados.model.Projeto;
import br.com.incentivados.model.Usuario;
import br.com.incentivados.repository.ProjetoRepository;
import br.com.incentivados.utility.FileUpload;

@Service
public class ProjetoService {
	
	@Autowired
	private ProjetoRepository projetoRepository;
	
	// Serviço que faz a persistencia do PROJETO
	public Projeto save(Projeto projeto, Usuario usuario, HttpServletRequest request) {
		
		String path = "documentos/entidades/" + projeto.getEntidade().getNomeFantasia() + "/" + projeto.getTitulo();
		Arquivo logo = projeto.getDocumentosProjeto().getLogo();
		Arquivo propostaTecnica = projeto.getDocumentosProjeto().getPropostaTecnica();
		Arquivo propostaOrcamentaria = projeto.getDocumentosProjeto().getPropostOrcamentaria();
		Arquivo dadosBancarios = projeto.getDocumentosProjeto().getDadosBancarios();
		Arquivo certificado = projeto.getDocumentosProjeto().getCertificado();
		
		projeto.getDocumentosProjeto().getLogo().setPath(upload(request, logo.getFile(), "logo." + logo.getFile().getOriginalFilename().split("\\.")[1], path));
		projeto.getDocumentosProjeto().getPropostaTecnica().setPath(upload(request, propostaTecnica.getFile(), "proposta-tecnica." + propostaTecnica.getFile().getOriginalFilename().split("\\.")[1], path));
		projeto.getDocumentosProjeto().getPropostOrcamentaria().setPath(upload(request, propostaOrcamentaria.getFile(), "proposta-orcamentaria." + logo.getFile().getOriginalFilename().split("\\.")[1], path));
		projeto.getDocumentosProjeto().getDadosBancarios().setPath(upload(request, dadosBancarios.getFile(), "dados-bancarios" + dadosBancarios.getFile().getOriginalFilename().split("\\.")[1], path));
		projeto.getDocumentosProjeto().getCertificado().setPath(upload(request, certificado.getFile(), "certificado." + certificado.getFile().getOriginalFilename().split("\\.")[1], path));
		
		projeto.setUsuario(usuario);
		
		return projetoRepository.save(projeto);
	}
	
	// Serviço que verifica se o PROJETO já possui registro com mesmo TÍTULO
	public boolean existsByTitulo(String titulo) {
		return projetoRepository.existsByTitulo(titulo);
	}
	
	// Serviço que carrega os dados do PROJETO de acordo com o ID
	public Optional<Projeto> findById(Long id){
		return projetoRepository.findById(id);
	}
	
	// Serviço que carrega todos os PROJETOS
	public List<Projeto> findAll(){
		return projetoRepository.findAll();
	}
	
	// Serviço que carrega os 3 últimos PROJETOS persistidos
	public List<Projeto> findTop3ByOrderByIdDesc(){
		return projetoRepository.findTop3ByOrderByIdDesc();
	}
	
	// Serviço que carrega os PROJETOS de acordo com o USUÁRIO
	public List<Projeto> findByUsuario(Usuario usuario){
		return projetoRepository.findByUsuario(usuario);
	}
	
	// Serviço que contabiliza os projetos de acordo com o USUÁRIO
	public Long countByUsuario(Usuario usuario) {
		return projetoRepository.countByUsuario(usuario);
	}
	
	public String upload(HttpServletRequest request, MultipartFile arquivo, String nomeArquivo, String url) {
		return FileUpload.upload(request, arquivo, nomeArquivo, url);
	}

}