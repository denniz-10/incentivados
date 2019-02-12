package br.com.incentivados.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.incentivados.model.Empresa;

@Repository
public interface EmpresaRepository extends JpaRepository<Empresa, Long>{
	
	boolean existsByCnpj(String cnpj);
	
	Empresa findByCnpj(String cnpj);
	
	List<Empresa> findByNomeFantasiaContains(String nomeFantasia);

}
