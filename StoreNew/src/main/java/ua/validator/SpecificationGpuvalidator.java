package ua.validator;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import ua.form.SpecificationGpuForm;

public class SpecificationGpuvalidator implements Validator{
	
	private static final Pattern p = Pattern.compile("^[0-9]+$");

	@Override
	public boolean supports(Class<?> clazz) {
		return SpecificationGpuForm.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		SpecificationGpuForm form = (SpecificationGpuForm) target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "", "Can't be empty");
		if(form.getBrandGpu()==null){
			errors.rejectValue("brandGpu", "", "Select Brand Gpu");
		}
		if(form.getProducerGpu()==null){
			errors.rejectValue("producerGpu", "", "Select Producer Gpu");
		}
		if(!p.matcher(form.getClockSpeed()).matches()){
			errors.rejectValue("clockSpeed", "", "Enter only numbers");
		}
		if(!p.matcher(form.getMemory()).matches()){
			errors.rejectValue("memory", "", "Enter only numbers");
		}
	}

}
