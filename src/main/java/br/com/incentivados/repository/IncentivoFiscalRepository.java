package br.com.incentivados.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.incentivados.model.IncentivoFiscal;

@Repository
public interface IncentivoFiscalRepository extends JpaRepository<IncentivoFiscal, Long>{

}
