package br.com.incentivados.service;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import br.com.incentivados.model.Empresa;
import br.com.incentivados.model.Usuario;
import br.com.incentivados.repository.EmpresaRepository;
import br.com.incentivados.utility.FileUpload;

@Service
public class EmpresaService {

	@Autowired
	private EmpresaRepository empresaRepository;

	public Empresa save(Empresa empresa, Usuario usuario, HttpServletRequest request) {

		empresa.setDataCadastro(new Date());
		empresa.setUsuario(usuario);

		// Upload do logo
		empresa.getDocumentosEmpresa()
				.setPathLogo(upload(request, empresa.getDocumentosEmpresa().getLogo(), "logo." +empresa.getDocumentosEmpresa().getLogo().getOriginalFilename().split("\\.")[1],
						"documentos/empresa/" + empresa.getNomeFantasia()));

		return empresaRepository.save(empresa);
	}

	public boolean existsbyCnpj(String cnpj) {
		return empresaRepository.existsByCnpj(cnpj);
	}

	public Empresa findByCnpj(String cnpj) {
		return empresaRepository.findByCnpj(cnpj);
	}

	public String upload(HttpServletRequest request, MultipartFile arquivo, String nomeArquivo, String url) {
		return FileUpload.upload(request, arquivo, nomeArquivo, url);
	}

	public List<Empresa> findAll() {
		return empresaRepository.findAll();
	}
	
	public List<Empresa> findByNomeFantasiaContains(String nomeFantasia){
		return empresaRepository.findByNomeFantasiaContains(nomeFantasia);
	}

}
