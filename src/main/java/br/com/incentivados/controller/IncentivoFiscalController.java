package br.com.incentivados.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.incentivados.enumerated.Atuacao;
import br.com.incentivados.enumerated.Competencia;
import br.com.incentivados.model.IncentivoFiscal;
import br.com.incentivados.service.IncentivoFiscalService;

@Controller
public class IncentivoFiscalController {

	@Autowired
	private IncentivoFiscalService incentivoFiscalService;

	@GetMapping("/painel/incentivos-fiscais/cadastro")
	public String getCadastrar(HttpServletRequest request, Model model) {

		// Seta o path da requisição
		model.addAttribute("path", request.getContextPath());
		// Seta o breadcrumb da página
		model.addAttribute("breadcrumb",
				"Incentivo Fiscal " + " <i class='fas fa-angle-double-right'></i> " + " Cadastro");

		Competencia competencias[] = Competencia.values();
		model.addAttribute("competencias", competencias);

		Atuacao atuacoes[] = Atuacao.values();
		model.addAttribute("atuacoes", atuacoes);

		return "painel/admin/incentivo-fiscal/cadastro";
	}

	@PostMapping("/painel/incentivos-fiscais/cadastro")
	public String postCadastrar(IncentivoFiscal incentivoFiscal, HttpServletRequest request, Model model) {

		// Seta o path da requisição
		model.addAttribute("path", request.getContextPath());
		// Seta o breadcrumb da página
		model.addAttribute("breadcrumb",
				"Incentivo Fiscal " + " <i class='fas fa-angle-double-right'></i> " + " Cadastro");

		try {
			incentivoFiscal = incentivoFiscalService.save(incentivoFiscal);
			return "painel/admin/incentivo-fiscal/cadastro-incentivo-fiscal-sucesso";
		} catch (Exception e) {
			return "painel/admin/incentivo-fiscal/cadastro-incentivo-fiscal-falha";
		}

	}

	@GetMapping("/painel/incentivos-fiscais")
	public String getListar(HttpServletRequest request, Model model) {

		// Seta o path da requisição
				model.addAttribute("path", request.getContextPath());
				// Seta o breadcrumb da página
				model.addAttribute("breadcrumb",
						"Incentivo Fiscal " + " <i class='fas fa-angle-double-right'></i> " + " Lista");


		model.addAttribute("page", "INCENTIVOS FISCAIS");

		model.addAttribute("qtdIncentivosFiscais", incentivoFiscalService.count());

		List<IncentivoFiscal> incentivosFiscais = new ArrayList<IncentivoFiscal>();
		incentivosFiscais = incentivoFiscalService.findAll();
		model.addAttribute("incentivosFiscais", incentivosFiscais);

		return "painel/admin/incentivo-fiscal/lista";
	}

}
