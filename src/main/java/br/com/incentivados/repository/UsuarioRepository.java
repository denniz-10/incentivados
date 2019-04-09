package br.com.incentivados.repository;

import br.com.incentivados.model.Usuario;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {

	boolean existsByCpf(String cpf);
	boolean existsByEmail(String email);
	boolean existsByEmailAndSenha(String cpf, String senha);  
    
    Usuario findByEmail(String cpf);
    
    List<Usuario> findByNomeContains(String name);
}
