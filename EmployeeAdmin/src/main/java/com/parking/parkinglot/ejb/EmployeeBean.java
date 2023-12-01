package com.parking.parkinglot.ejb;

import com.parking.parkinglot.common.EmployeeDto;
import com.parking.parkinglot.entities.Employee;
import jakarta.ejb.EJBException;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@Stateless
public class EmployeeBean {
    private static final Logger LOG = Logger.getLogger(EmployeeBean.class.getName());

    @PersistenceContext
    EntityManager entityManager;
    public List <EmployeeDto> findAllEmployees(){
        LOG.info("findAllEmployees");
        try{
            TypedQuery<Employee> typedQuery = entityManager.createQuery("SELECT e FROM Employee e",Employee.class);
            List<Employee>employees = typedQuery.getResultList();
            return copyEmployeesToDto(employees);
        } catch (Exception ex){
            throw new EJBException(ex);
        }
    }

    private List<EmployeeDto> copyEmployeesToDto(List<Employee> employees) {
        List<EmployeeDto> employeeDtoList = new ArrayList<>();

        for (Employee employee : employees) {
            EmployeeDto employeeDto = new EmployeeDto(
                    employee.getId(),
                    employee.getName(),
                    employee.getDob()


            );

            employeeDtoList.add(employeeDto);
        }

        return employeeDtoList;
    }

}
