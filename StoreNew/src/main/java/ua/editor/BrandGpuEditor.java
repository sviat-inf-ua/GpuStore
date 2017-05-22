package ua.editor;

import java.beans.PropertyEditorSupport;

import ua.entity.BrandGpu;
import ua.service.BrandGpuService;

public class BrandGpuEditor extends PropertyEditorSupport{
	
	private final BrandGpuService service;

	public BrandGpuEditor(BrandGpuService service) {
		this.service = service;
	}
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		BrandGpu brandGpu = service.findOne(Integer.valueOf(text));
		setValue(brandGpu);
	}

}
