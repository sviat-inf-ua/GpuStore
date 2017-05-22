package ua.editor;

import java.beans.PropertyEditorSupport;

import ua.entity.SpecificationGpu;
import ua.service.SpecificationGpuService;

public class SpecificationGpuEditor extends PropertyEditorSupport{
	
	private final SpecificationGpuService specificationGpuService;

	public SpecificationGpuEditor(SpecificationGpuService specificationGpuService) {
		this.specificationGpuService = specificationGpuService;
	}
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		SpecificationGpu specificationGpu = specificationGpuService.findOne(Integer.valueOf(text));
		setValue(specificationGpu);
	}

}
