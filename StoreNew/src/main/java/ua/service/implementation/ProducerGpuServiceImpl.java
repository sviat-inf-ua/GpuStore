package ua.service.implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.entity.ProducerGpu;
import ua.repository.ProducerGpuRepository;
import ua.service.ProducerGpuService;

@Service
public class ProducerGpuServiceImpl implements ProducerGpuService{

	@Autowired
	private ProducerGpuRepository producerGpuRepository;
	
	@Override
	public ProducerGpu findOne(Integer id) {
		// TODO Auto-generated method stub
		return producerGpuRepository.findOne(id);
	}

	@Override
	public List<ProducerGpu> findAll() {
		// TODO Auto-generated method stub
		return producerGpuRepository.findAll();
	}

	@Override
	public void save(ProducerGpu entity) {
		producerGpuRepository.save(entity);
	}

	@Override
	public void delete(Integer id) {
		producerGpuRepository.delete(id);
	}

}
