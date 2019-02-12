package br.com.incentivados.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.incentivados.model.Empresa;
import br.com.incentivados.model.Usuario;
import br.com.incentivados.service.EmpresaService;

@Controller
public class EmpresaController {

	@Autowired
	private EmpresaService empresaService;

	private String path;

	@GetMapping("/empresas/cadastrar")
	public String getCadastrar(HttpServletRequest request, Model model) {

		// Seta o path da requisição
		path = request.getContextPath();
		model.addAttribute("path", path);
		return "empresa/cadastrar";
	}

	@PostMapping("/empresas/cadastrar")
	public String postCadastrar(Empresa empresa, HttpServletRequest request, Model model) {
		// Seta o path da requisição
		path = request.getContextPath();
		model.addAttribute("path", path);

		try {

			Usuario usuario = new Usuario();
			usuario = (Usuario) request.getSession().getAttribute("usuario");

			/*
			 * Verifica se existe cadastro para o cnpj informado e realiza o cadastro dos
			 * dados e upload do logo.
			 */
			if (!empresaService.existsbyCnpj(empresa.getCnpj())) {
				empresa = empresaService.save(empresa, usuario, request);
				model.addAttribute("empresaCadastrada", true);
			} else {
				model.addAttribute("cnpjCadastrado", true);
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return "empresa/cadastrar";
	}

	@GetMapping("/empresas/listar")
	public String getListar(@RequestParam(required = false) String nomeFantasia, HttpServletRequest request,
			Model model) {

		// Seta o path da requisição
		path = request.getContextPath();
		model.addAttribute("path", path);

		List<Empresa> empresas = new ArrayList<Empresa>();

		if (nomeFantasia.equals("")) {
			empresas = empresaService.findAll();
		}

		else {
			empresas = empresaService.findByNomeFantasiaContains(nomeFantasia);
		}

		model.addAttribute("empresas", empresas);

		return "empresa/listar";
	}

}
