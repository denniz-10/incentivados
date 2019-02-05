package br.com.incentivados.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	private String path;

	@GetMapping({"/", "index"})
	public String main(HttpServletRequest request, Model model) {

		// Seta o path da requisição
		path = request.getContextPath();
		model.addAttribute("path", path);
		System.out.println(path);
		
		return "index";
	}

}
