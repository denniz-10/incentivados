package br.com.incentivados.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController {

	@GetMapping("/")
	public String main(HttpServletRequest request, Model model) {

		model.addAttribute("path", request.getContextPath());
		
		return "main/index";
	}

}
