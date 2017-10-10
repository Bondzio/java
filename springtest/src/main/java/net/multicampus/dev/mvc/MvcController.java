package net.multicampus.dev.mvc;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MvcController {
		
		/*@RequestMapping(value="hello",method=RequestMethod.GET)*/
	@RequestMapping("hello")
/*		public ModelAndView hello(HttpSession session) {
			return new ModelAndView("hello", "msg", "Hello @MVC");
		}*/
		/*public String hello(Model model) {
			model.addAttribute("msg", "Hello @MVC"); // addobject와 같은 기능. 
			return "hello";
			//ModelMap에다가 key, value를 담아서 바로 쓸 수 있다. 
		}*/
		public void hello(Model model) {
			model.addAttribute("msg", "Hello @MVC"); // addobject와 같은 기능. 
			// mapping 값을 찾아간다. (value="hello")를 보고 
		}
}
