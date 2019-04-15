package br.com.incentivados.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.incentivados.model.Empresa;

@Repository
public interface EmpresaRepository extends JpaRepository<Empresa, Long>{
	
	boolean existsByCnpj(String cnpj);
	
	Optional<Empresa> findById(Long id);
	Optional<Empresa> findByCnpj(String cnpj);
	Optional<Empresa> findByNomeFantasia(String nomeFantasia);
	
	List<Empresa> findByNomeFantasiaContains(String nomeFantasia);

}
