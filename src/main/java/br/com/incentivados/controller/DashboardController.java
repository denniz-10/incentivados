package br.com.incentivados.controller;

import br.com.incentivados.enumerated.StatusPedido;
import br.com.incentivados.enumerated.TipoUsuario;
import br.com.incentivados.model.Entidade;
import br.com.incentivados.model.Pedido;
import br.com.incentivados.model.Projeto;
import br.com.incentivados.model.Usuario;
import br.com.incentivados.service.EntidadeService;
import br.com.incentivados.service.PedidoService;
import br.com.incentivados.service.ProjetoService;
import br.com.incentivados.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class DashboardController {

	@Autowired
	private UsuarioService usuarioService;

	@Autowired
	private EntidadeService entidadeService;

	@Autowired
	private ProjetoService projetoService;

	@Autowired
	private PedidoService pedidoService;

	@GetMapping("/login")
	public String getLogin(@ModelAttribute("redirectAttributesAcesso") String redirectAttributesAcesso,
			@ModelAttribute("redirectAttributesRedirect") String redirectAttributesRedirect,
			@RequestParam(required = false, defaultValue = "") String redirect, HttpServletRequest request,
			Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		// Seta a url de redirect
		if (redirectAttributesRedirect.equals("")) {
			model.addAttribute("redirect", redirect);
		} else {
			model.addAttribute("redirect", redirectAttributesRedirect);
		}

		if (redirectAttributesAcesso.equals("negado")) {
			model.addAttribute("acessoNegado", true);
		}

		return "main/usuario/login";

	}

	@PostMapping("/login")
	public String postLogin(@RequestParam(required = false, defaultValue = "") String redirect, String email,
			String senha, HttpServletRequest request, Model model, HttpSession session,
			RedirectAttributes redirectAttributes) {

		// Atribui para a view o path da requisição
		model.addAttribute("path", request.getContextPath());

		Usuario usuario = new Usuario();
		try {
			// Verifica a existencia do usuário no banco de dados e carrega os dados caso
			// exista. Senão exibe uma mensagem de erro
			if (usuarioService.existsByEmailAndSenha(email, senha)) {

				usuario = usuarioService.login(email);
				model.addAttribute("usuario", usuario);
				session.setAttribute("usuario", usuario);

				if (redirect.equals("")) {
					return "redirect:painel/dashboard";
				} else {
					return "redirect:" + redirect;
				}

			} else {
				redirectAttributes.addFlashAttribute("redirectAttributesRedirect", redirect);
				redirectAttributes.addFlashAttribute("redirectAttributesAcesso", "negado");
				return "redirect:login";

			}

		} catch (Exception e) {
			System.out.println(e);
			model.addAttribute("e", e);
			model.addAttribute("dataAtual", new Date());

			return "";
		}

	}

	@GetMapping("/painel/dashboard")
	public String getDashboard(HttpServletRequest request, Model model) {

		// Atribui para a view o path da requisição
		model.addAttribute("path", request.getContextPath());
		model.addAttribute("breadcrumb", "Dashboard");

		Usuario usuario = new Usuario();
		usuario = (Usuario) request.getSession().getAttribute("usuario");

		// Lista todas as entidades pertencentes ao usuário.
		List<Entidade> entidades = new ArrayList<Entidade>();
		List<Projeto> projetos = new ArrayList<Projeto>();
		List<Pedido> pedidos = new ArrayList<Pedido>();

		// Verifica qual tipo de usuário está logado e redireciona para sua respectiva
		// view
		switch (usuario.getTipoUsuario()) {

		case ENTIDADE:

			// Condicional que verifica se o usuário pode cadastrar um projeto
			model.addAttribute("cadastroProjeto", entidadeService.existsByUsuario(usuario));

			// Lista as infos e estatísticas de entidades por usuário
			entidades = entidadeService.findByUsuario(usuario);
			model.addAttribute("entidades", entidades);
			model.addAttribute("qtdEntidades", entidadeService.countByUsuario(usuario));

			// Lista as infos e estatísticas de projetos por usuário
			projetos = projetoService.findByUsuario(usuario);
			model.addAttribute("projetos", projetos);
			model.addAttribute("qtdProjetos", projetoService.countByUsuario(usuario));

			// Lista as infos e estatística de pedidos por usuário
			pedidos = pedidoService.findByUsuario(usuario);
			model.addAttribute("pedidos", pedidos);
			model.addAttribute("qtdPedidos", pedidoService.countByUsuario(usuario));

			return "painel/entidade/dashboard-entidade";

		case ANALISTA:
			return "painel/analista/dashboard-analista";

		case ADMIN:
			// Lista as infos e estatísticas das entidades cadastradas
			entidades = entidadeService.findTop3ByOrderByIdDesc();
			model.addAttribute("entidades", entidades);
			model.addAttribute("qtdEntidades", entidadeService.count());

			// Lista as infos e estatísticas dos projetos cadastrados
			projetos = projetoService.findTop3ByOrderByIdDesc();
			model.addAttribute("projetos", projetos);
			model.addAttribute("qtdProjetos", projetoService.count());

			// Lista as infos e estatísticas dos pedidos cadastrados
			model.addAttribute("qtdPedidos", pedidoService.count());
			model.addAttribute("qtdPedidosPendente", pedidoService.countByStatus(StatusPedido.PENDENTE));
			model.addAttribute("qtdPedidosAprovado", pedidoService.countByStatus(StatusPedido.APROVADO));
			model.addAttribute("qtdPedidosRecusado", pedidoService.countByStatus(StatusPedido.RECUSADO));
			return "painel/admin/dashboard-admin";

		default:
			return "";
		}

	}

	@GetMapping("/painel/perfil")
	public String getPerfil(HttpServletRequest request, Model model) {

		// Seta o path da requisição
		model.addAttribute("path", request.getContextPath());
		model.addAttribute("breadcrumb", "Perfil");

		Usuario usuario = new Usuario();
		usuario = (Usuario) request.getSession().getAttribute("usuario");
		model.addAttribute("usuario", usuario);

		if (usuario.getTipoUsuario() == TipoUsuario.ADMIN) {
			return "painel/admin/usuario/perfil";

		} else if (usuario.getTipoUsuario() == TipoUsuario.ENTIDADE) {
			return "painel/entidade/usuario/perfil";

		} else {
			return "";

		}

	}

	@GetMapping("/sair")
	public String getDashboard(HttpServletRequest request, Model model, HttpSession session) {

		// Seta o path da requisição
		model.addAttribute("path", request.getContextPath());
		session.invalidate();

		return "redirect:login";
	}

}
