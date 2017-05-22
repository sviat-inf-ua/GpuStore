package ua.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.service.BrandGpuService;
import ua.service.ProducerGpuService;
import ua.service.SpecificationGpuService;

@Controller
@RequestMapping("/specificationGpu")
public class ViewGpu {

	
	
	@Autowired
	private SpecificationGpuService specificationGpuService;
	
	@Autowired
	private BrandGpuService brandGpuService;
	
	@Autowired
	private ProducerGpuService producerGpuService;
	
	
	@GetMapping
	public String show(Model model, @PageableDefault Pageable pageable){
	
		model.addAttribute("specificationGpus", specificationGpuService.findAll(pageable));
		model.addAttribute("brandGpus", brandGpuService.findAll());
		model.addAttribute("producerGpus", producerGpuService.findAll());
		return "specificationGpu";
	}
	
	@GetMapping("/viewOne/{id}")
	public String viewOne(@PathVariable Integer id, Model model){
		model.addAttribute("specificationGpu", specificationGpuService.findOne(id));
		show(model, null);
		//specificationGpuService.findOne(id);
		return "view";
	}
}
