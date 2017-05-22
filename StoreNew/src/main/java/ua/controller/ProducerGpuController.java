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

import ua.entity.ProducerGpu;
import ua.service.ProducerGpuService;

@Controller
@RequestMapping("/admin/producerGpu")
@SessionAttributes("producerGpu")
public class ProducerGpuController {
	
	@Autowired
	private ProducerGpuService producerGpuService;
	
	@ModelAttribute("producerGpu")
	public ProducerGpu getForm(){
		return new ProducerGpu();
	}
	
	@GetMapping
	public String show(Model model){
		model.addAttribute("producerGpus", producerGpuService.findAll());
		return "producerGpu";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable Integer id){
		producerGpuService.delete(id);
		return "redirect:/admin/producerGpu";
	}
		
	@GetMapping("/update/{id}")
	public String update(@PathVariable Integer id, Model model){
		model.addAttribute("producerGpu", producerGpuService.findOne(id));
		show(model);
		return "producerGpu";
	}
	
	@GetMapping("/cancel")
	public String cancel(SessionStatus status){
		status.setComplete();
		return "redirect:/admin/producerGpu";
	}
	
	@PostMapping
	public String save(@ModelAttribute("producerGpu") ProducerGpu entity, SessionStatus status){
		producerGpuService.save(entity);
		status.setComplete();
		return "redirect:/admin/producerGpu";
	}

}
