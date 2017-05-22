package ua.controller;

import static ua.util.ParamBuilder.buildParams;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ua.editor.BrandGpuEditor;
import ua.editor.ProducerGpuEditor;
import ua.entity.BrandGpu;
import ua.entity.ProducerGpu;
import ua.entity.SpecificationGpu;
import ua.service.BrandGpuService;
import ua.service.ProducerGpuService;
import ua.service.SpecificationGpuService;

@Controller
@RequestMapping("/admin/specificationGpu")
@SessionAttributes("specificationGpu")
public class SpecificationGpuController {

	@Autowired
	private SpecificationGpuService specificationGpuService;
	
	@Autowired
	private BrandGpuService brandGpuService;
	
	@Autowired
	private ProducerGpuService producerGpuService;
	
	@ModelAttribute("specificationGpu")
	public SpecificationGpu getForm(){
		return new SpecificationGpu();
	}
	
	@InitBinder("specificationGpu")
	protected void initBinder(WebDataBinder binder){
		binder.registerCustomEditor(BrandGpu.class, new BrandGpuEditor(brandGpuService));
		binder.registerCustomEditor(ProducerGpu.class, new ProducerGpuEditor(producerGpuService));
	}
	
	@GetMapping
	public String show(Model model, @PageableDefault Pageable pageable){
	
		model.addAttribute("specificationGpus", specificationGpuService.findAll(pageable));
		model.addAttribute("brandGpus", brandGpuService.findAll());
		model.addAttribute("producerGpus", producerGpuService.findAll());
		return "specificationGpu";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable Integer id, @PageableDefault Pageable pageable){
		specificationGpuService.delete(id);
		return "redirect:/admin/specificationGpu"+buildParams(pageable);
	}
	
	@GetMapping("/viewOne/{id}")
	public String viewOne(@PathVariable Integer id, Model model){
		model.addAttribute("specificationGpu", specificationGpuService.findOne(id));
		show(model, null);
		//specificationGpuService.findOne(id);
		return "view";
	}
	
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable Integer id, Model model, @PageableDefault Pageable pageable){
		model.addAttribute("specificationGpu", specificationGpuService.findOne(id));
		
		show(model, pageable);
		return "specificationGpu";
	}
	
	@GetMapping("/cancel")
	public String cancel(SessionStatus status, @PageableDefault Pageable pageable){
		status.setComplete();
		return "redirect:/admin/specificationGpu"+buildParams(pageable);
	}
	
	@PostMapping
	public String save(@ModelAttribute("specificationGpu") SpecificationGpu specificationGpu, SessionStatus status,  @PageableDefault Pageable pageable){
		specificationGpuService.save(specificationGpu);
		status.setComplete();
		return "redirect:/admin/specificationGpu"+buildParams(pageable);
	}

}













