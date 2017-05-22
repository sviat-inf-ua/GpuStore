package ua.editor;

import java.beans.PropertyEditorSupport;

import ua.entity.ProducerGpu;
import ua.service.ProducerGpuService;

public class ProducerGpuEditor extends PropertyEditorSupport{
	
	private final ProducerGpuService service;

	public ProducerGpuEditor(ProducerGpuService service) {
		super();
		this.service = service;
	}
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		ProducerGpu producerGpu = service.findOne(Integer.valueOf(text));
		setValue(producerGpu);
	}

}
