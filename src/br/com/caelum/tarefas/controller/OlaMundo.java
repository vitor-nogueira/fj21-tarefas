package br.com.caelum.tarefas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OlaMundo {
	
	@RequestMapping ("/olaMundoSpring")
	public String execute(){
		System.out.println("Executando a logica com Spring MVC");
		return "ok";
	}
	

}
