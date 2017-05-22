package ua.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="brandGpu")
public class BrandGpu extends AbstractEntity{
	
	private String name;
	
	@OneToMany(mappedBy="brandGpu")
	private List<SpecificationGpu> specificationGpus = new ArrayList<>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<SpecificationGpu> getSpecificationGpus() {
		return specificationGpus;
	}

	public void setSpecificationGpus(List<SpecificationGpu> specificationGpus) {
		this.specificationGpus = specificationGpus;
	}

	
}
