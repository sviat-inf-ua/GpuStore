package ua.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import ua.entity.SpecificationGpu;

public interface SpecificationGpuRepository extends JpaRepository<SpecificationGpu, Integer> {
	@Query("SELECT a FROM SpecificationGpu a LEFT JOIN FETCH a.brandGpu LEFT JOIN FETCH a.producerGpu WHERE a.id = ?1")
	SpecificationGpu findOne(Long id);

	@Query("SELECT a FROM SpecificationGpu a LEFT JOIN FETCH a.brandGpu LEFT JOIN FETCH a.producerGpu")
	List<SpecificationGpu> findAll();

	@Query(value = "SELECT a FROM SpecificationGpu a LEFT JOIN FETCH a.brandGpu LEFT JOIN FETCH a.producerGpu", countQuery = "SELECT count(a.id) FROM SpecificationGpu a")
	Page<SpecificationGpu> findAll(Pageable pageable);
}
