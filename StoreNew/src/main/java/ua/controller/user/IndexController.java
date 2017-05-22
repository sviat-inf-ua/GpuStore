package ua.controller.user;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.entity.User;
import ua.service.SpecificationGpuService;
import ua.service.UserService;

@Controller
@RequestMapping("/")
public class IndexController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private SpecificationGpuService specificationGpuService;

	@RequestMapping("/")
	public String index(Principal principal){
		if(principal!=null)
		System.out.println(principal.getName());
		return "index";
	}
	
	@RequestMapping("/admin")
	public String admin(){
		return "admin";
	}
	
	@RequestMapping("/logout")
	public String logout(){
		return "logout";
	}
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	@GetMapping
	public String show(Model model){
		model.addAttribute("specificationGpus", specificationGpuService.findAll());
		return "index";
	}
	
	@RequestMapping("/registration")
	public String registration(Model model){
		model.addAttribute("userForm", new User());
		return "registration";
	}
	
	@RequestMapping(value="/registration", method=POST)
	public String registration(@ModelAttribute User user){
		userService.save(user);
		return "redirect:/login";
	}
	
	@RequestMapping(value = "/welcome")
    public String welcome(Model model) {
        return "welcome";
    }
	
	
}