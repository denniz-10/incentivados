package br.com.incentivados.service;

import br.com.incentivados.model.Usuario;
import br.com.incentivados.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class UsuarioService {

    @Autowired
    private UsuarioRepository usuarioRepository;
   
    // Método para adicionar um novo usuário
    public Usuario save(Usuario usuario) {
        return usuarioRepository.save(usuario);
    }

    public boolean existsByEmailAndSenha(String cpf, String senha){
        return usuarioRepository.existsByEmailAndSenha(cpf, senha);
    }
    
    public boolean existsByCpf(String cpf){
        return usuarioRepository.existsByCpf(cpf);
    }
    
    public boolean existsByEmail(String email){
        return usuarioRepository.existsByEmail(email);
    }

    public Usuario login(String email){
    	Usuario usuario = usuarioRepository.findByEmail(email);
    	ultimoAcesso(usuario);
        return usuario;
    }
    
    public Usuario ultimoAcesso(Usuario usuario) {
    	usuario.setUltimoAcesso(new Date());
    	return usuarioRepository.save(usuario);
    }
        
    public Optional<Usuario> findById(Long id) {
    	return usuarioRepository.findById(id);
    }
    
    public List<Usuario> findAll(){
    	return usuarioRepository.findAll();
    }   
    
    public List<Usuario> findByNomeContains(String nome){
    	return usuarioRepository.findByNomeContains(nome);
    }

}