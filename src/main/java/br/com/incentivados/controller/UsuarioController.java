package br.com.incentivados.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.incentivados.model.Usuario;
import br.com.incentivados.service.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;

	private String path;

	@PostMapping("/login")
	public String postLogin(String cpf, String senha, HttpServletRequest request, Model model) {

		// Seta o path da requisição
		path = request.getContextPath();
		model.addAttribute("path", path);

		Usuario usuario = new Usuario();

		try {
			/*
			 * Verifica a existencia do usuário no banco de dados e carrega os dados caso
			 * exista. Senão exibe uma mensagem de erro
			 */
			if (usuarioService.exists(cpf, senha)) {
				usuario = usuarioService.login(cpf);
				model.addAttribute("loginPermitido", true);
				model.addAttribute("usuario", usuario);
				return "painel/index";
			} else {
				model.addAttribute("loginNegado", true);
				return "home/login";
			}
		} catch (Exception e) {
			// Exibe o erro caso não obitiver sucesso.
			System.out.println(e);
			model.addAttribute("e", e);
			model.addAttribute("dataAtual", new Date());
			return "erro/login-505.";
		}

	}

}
