package ua.form;

import ua.entity.BrandGpu;
import ua.entity.ProducerGpu;

public class SpecificationGpuForm {

	private Integer id;
	
	private ProducerGpu producerGpu;
	
	private BrandGpu brandGpu;
	
	private String title;
	private String clockSpeed;
	private String memory;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public ProducerGpu getProducerGpu() {
		return producerGpu;
	}
	public void setProducerGpu(ProducerGpu producerGpu) {
		this.producerGpu = producerGpu;
	}
	public BrandGpu getBrandGpu() {
		return brandGpu;
	}
	public void setBrandGpu(BrandGpu brandGpu) {
		this.brandGpu = brandGpu;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getClockSpeed() {
		return clockSpeed;
	}
	public void setClockSpeed(String clockSpeed) {
		this.clockSpeed = clockSpeed;
	}
	public String getMemory() {
		return memory;
	}
	public void setMemory(String memory) {
		this.memory = memory;
	}
	
	
}
