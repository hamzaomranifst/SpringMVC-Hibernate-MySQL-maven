package com.hamzaomranifst.controller;
 
import java.io.IOException;
import java.util.List;
 
import javax.servlet.http.HttpServletRequest;
 
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.validation.BindingResult;
import com.hamzaomranifst.model.Employee;
import com.hamzaomranifst.validator.EmployeeValidator;
import com.hamzaomranifst.service.EmployeeService;
 
@Controller
public class EmployeeController {
 
    private static final Logger logger = Logger.getLogger(EmployeeController.class);
 
    public EmployeeController() {
        System.out.println("EmployeeController()");
    }
 
    @Autowired
    private EmployeeService employeeService;
    
    @Autowired
    private EmployeeValidator empValidator;

    @RequestMapping(value = "/")
    public ModelAndView listEmployee(ModelAndView model) throws IOException {
        List<Employee> listEmployee = employeeService.getAllEmployees();
        model.addObject("listEmployee", listEmployee);
        model.setViewName("index");
        return model;
    }
 
    @RequestMapping(value = "/newEmployee", method = RequestMethod.GET)
    public ModelAndView newContact(ModelAndView model) {
        Employee employee = new Employee();
        model.addObject("employee", employee);
        model.setViewName("EmployeeForm");
        return model;
    }
 
    @RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
    public ModelAndView saveEmployee(@ModelAttribute Employee employee, BindingResult bindingResult, ModelAndView model) {
        empValidator.validate(employee, bindingResult);
        
        if(bindingResult.hasErrors()) {
            model.addObject("employee", employee);
            model.setViewName("EmployeeForm");
            return model;
        }

        if (employee.getId() == 0) { 
            // if employee id is 0 then creating the employee other updating the employee
            employeeService.addEmployee(employee);
        } else {
            employeeService.updateEmployee(employee);
        }
        return new ModelAndView("redirect:/");
    }
 
    @RequestMapping(value = "/deleteEmployee", method = RequestMethod.GET)
    public ModelAndView deleteEmployee(HttpServletRequest request, ModelAndView model) {
        int employeeId = Integer.parseInt(request.getParameter("id"));
        employeeService.deleteEmployee(employeeId);
        model.setViewName("redirect:/");
        return model;
    }
 
    @RequestMapping(value = "/editEmployee", method = RequestMethod.GET)
    public ModelAndView editContact(HttpServletRequest request, ModelAndView model) {
        int employeeId = Integer.parseInt(request.getParameter("id"));
        Employee employee = employeeService.getEmployee(employeeId);
        model.addObject("employee", employee);
        model.setViewName("EmployeeForm");
        return model;
    }
 
}