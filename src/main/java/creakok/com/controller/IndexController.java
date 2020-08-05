package creakok.com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	@RequestMapping(value="/", method =RequestMethod.GET)
	public String index() {
		return "index";
	}

	@RequestMapping(value="/community", method =RequestMethod.GET)
	public String community() {
		return "community";
	}


}
