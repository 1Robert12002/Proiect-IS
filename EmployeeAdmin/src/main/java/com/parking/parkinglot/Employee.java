package com.parking.parkinglot;

import com.parking.parkinglot.common.EmployeeDto;
import com.parking.parkinglot.ejb.EmployeeBean;
import jakarta.inject.Inject;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Employee", value = "/Employee")
public class Employee extends HttpServlet {
    @Inject
    EmployeeBean employeeBean;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<EmployeeDto> employees = employeeBean.findAllEmployees();
        request.setAttribute("employees",employees);
        request.getRequestDispatcher("/WEB-INF/pages/employee.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}