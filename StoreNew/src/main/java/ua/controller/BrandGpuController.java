package ua.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ua.entity.BrandGpu;
import ua.service.BrandGpuService;

@Controller
@RequestMapping("/admin/brandGpu")
@SessionAttributes("brandGpu")
public class BrandGpuController {
	
	@Autowired
	private BrandGpuService brandGpuService;
	
	@ModelAttribute("brandGpu")
	public BrandGpu getForm(){
		return new BrandGpu();
	}
	
	@GetMapping
	public String show(Model model){
		model.addAttribute("brandGpus", brandGpuService.findAll());
		return "brandGpu";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable Integer id){
		brandGpuService.delete(id);
		return "redirect:/admin/brandGpu";
	}
		
	@GetMapping("/update/{id}")
	public String update(@PathVariable Integer id, Model model){
		model.addAttribute("brandGpu", brandGpuService.findOne(id));
		show(model);
		return "brandGpu";
	}
	
	@GetMapping("/cancel")
	public String cancel(SessionStatus status){
		status.setComplete();
		return "redirect:/admin/brandGpu";
	}
	
	@PostMapping
	public String save(@ModelAttribute("brandGpu") BrandGpu entity, SessionStatus status){
		brandGpuService.save(entity);
		status.setComplete();
		return "redirect:/admin/brandGpu";
	}
	
}
