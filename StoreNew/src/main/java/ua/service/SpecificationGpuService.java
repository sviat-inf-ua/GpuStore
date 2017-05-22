package ua.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import ua.entity.SpecificationGpu;

public interface SpecificationGpuService extends CrudService<SpecificationGpu, Integer>{

	Page<SpecificationGpu> findAll(Pageable pageable);
}
