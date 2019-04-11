package br.com.incentivados.repository;

import br.com.incentivados.model.Projeto;
import br.com.incentivados.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProjetoRepository extends JpaRepository<Projeto, Projeto>{
	
	
	boolean existsByTitulo(String titulo);
	
	Optional<Projeto> findById(Long id);
	
	List<Projeto> findTop3ByOrderByIdDesc();
	List<Projeto> findByUsuario(Usuario usuario);	
	
	Long countByUsuario(Usuario usuario);
	
}
