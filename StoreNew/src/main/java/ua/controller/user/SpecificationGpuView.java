package ua.controller.user;

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
@RequestMapping("/specificationGpuView")
@SessionAttributes("specificationGpuView")
public class SpecificationGpuView {

	@Autowired
	private SpecificationGpuService specificationGpuService;
	
	@Autowired
	private BrandGpuService brandGpuService;
	
	@Autowired
	private ProducerGpuService producerGpuService;
	
	@ModelAttribute("specificationGpuView")
	public SpecificationGpu getForm(){
		return new SpecificationGpu();
	}
	
	@InitBinder("specificationGpuView")
	protected void initBinder(WebDataBinder binder){
		binder.registerCustomEditor(BrandGpu.class, new BrandGpuEditor(brandGpuService));
		binder.registerCustomEditor(ProducerGpu.class, new ProducerGpuEditor(producerGpuService));
	}
	
	@GetMapping
	public String show(Model model){
	
		model.addAttribute("specificationGpuViews", specificationGpuService.findAll());
		model.addAttribute("brandGpus", brandGpuService.findAll());
		model.addAttribute("producerGpus", producerGpuService.findAll());
		return "specificationGpuView";
	}
	
}













