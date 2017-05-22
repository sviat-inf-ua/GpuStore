package ua.service.implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.entity.BrandGpu;
import ua.repository.BrandGpuRepository;
import ua.service.BrandGpuService;

@Service
public class BrandGpuServiceImpl implements BrandGpuService{

	@Autowired
	private BrandGpuRepository brandGpuRepository;
	
	@Override
	public BrandGpu findOne(Integer id) {
		// TODO Auto-generated method stub
		return brandGpuRepository.findOne(id);
	}

	@Override
	public List<BrandGpu> findAll() {
		// TODO Auto-generated method stub
		return brandGpuRepository.findAll();
	}

	@Override
	public void save(BrandGpu entity) {
		brandGpuRepository.save(entity);
	}

	@Override
	public void delete(Integer id) {
		brandGpuRepository.delete(id);
	}

}
