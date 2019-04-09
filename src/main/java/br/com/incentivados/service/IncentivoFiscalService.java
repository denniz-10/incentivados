package br.com.incentivados.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.incentivados.model.IncentivoFiscal;
import br.com.incentivados.repository.IncentivoFiscalRepository;

@Service
public class IncentivoFiscalService {
	
	@Autowired
	private IncentivoFiscalRepository incentivoFiscalRepository;
	
	public IncentivoFiscal save(IncentivoFiscal incentivoFiscal) {
		return incentivoFiscalRepository.save(incentivoFiscal);
	}
	
	public Long count() {
		return incentivoFiscalRepository.count();
	}
	
	public List<IncentivoFiscal> findAll(){
		return incentivoFiscalRepository.findAll();
	}

}
