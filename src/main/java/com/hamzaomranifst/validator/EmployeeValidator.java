package com.hamzaomranifst.validator;

import com.hamzaomranifst.model.Employee;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
public class EmployeeValidator implements Validator {
    
    public boolean supports(Class<?> aClass) {
        return Employee.class.equals(aClass);
    }

    public void validate(Object o, Errors errors) {
        Employee emp = (Employee) o;

        Pattern pattern;
        Matcher matcher;
        final String EMAIL_PATTERN ="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        final String PHONE_NUMBER_PATTERN ="^\\+(?:[0-9] ?){6,14}[0-9]$";

        // Name Validation
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");
        if (emp.getName().length() < 5 || emp.getName().length() > 32) {
            errors.rejectValue("name", "Size.name");
        }

        // Email Validation
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");
        pattern = Pattern.compile(EMAIL_PATTERN);
        matcher = pattern.matcher(emp.getEmail());
        if (!matcher.matches())   {
            errors.rejectValue("email", "Valid.email");
        }

        // Address Validation
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty");
        if (emp.getAddress().length() < 10 || emp.getAddress().length() > 50) {
            errors.rejectValue("address", "Size.address");
        }

        // Phone number Validation
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "telephone", "NotEmpty");
        pattern = Pattern.compile(PHONE_NUMBER_PATTERN);
        matcher = pattern.matcher(emp.getTelephone());
        if (!matcher.matches())   {
            errors.rejectValue("telephone", "valid.telephone");
        }

    }
    
}
