package ua.service.implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import ua.entity.SpecificationGpu;
import ua.repository.SpecificationGpuRepository;
import ua.service.SpecificationGpuService;

@Service
public class SpecificationGpuServiceImpl implements SpecificationGpuService{

	@Autowired
	private SpecificationGpuRepository specificationGpuRepository;
	
	@Override
	public SpecificationGpu findOne(Integer id) {
		// TODO Auto-generated method stub
		return specificationGpuRepository.findOne(id);
	}

	@Override
	public List<SpecificationGpu> findAll() {
		// TODO Auto-generated method stub
		return specificationGpuRepository.findAll();
	}

	@Override
	public void save(SpecificationGpu entity) {
		// TODO Auto-generated method stub
		specificationGpuRepository.save(entity);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		specificationGpuRepository.delete(id);
	}

	@Override
	public Page<SpecificationGpu> findAll(Pageable pageable) {
		return specificationGpuRepository.findAll(pageable);
	}
}
