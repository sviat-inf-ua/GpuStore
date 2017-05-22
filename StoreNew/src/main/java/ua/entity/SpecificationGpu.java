package ua.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="specificationGpu")
public class SpecificationGpu  extends AbstractEntity{
	
	@ManyToOne(fetch=FetchType.LAZY)
	private ProducerGpu producerGpu;
	
	@ManyToOne(fetch=FetchType.LAZY)
	private BrandGpu brandGpu;
	
	private String title;
	private int clockSpeed;
//	private int turboClockSpeed;
	private int memory;
//	private double floatingPointPerformance;
//	private int effectiveMemoryClockSpeed;
//	private int memoryBus;
//	private int tdp;
	
	public String getPresentation(){
		return title +" "+brandGpu.getName() + " " + producerGpu.getName();
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

	public int getClockSpeed() {
		return clockSpeed;
	}

	public void setClockSpeed(int clockSpeed) {
		this.clockSpeed = clockSpeed;
	}

	public int getMemory() {
		return memory;
	}

	public void setMemory(int memory) {
		this.memory = memory;
	}
	
	

}
