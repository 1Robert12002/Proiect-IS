package com.parking.parkinglot.common;

import java.time.LocalDate;

public class EmployeeDto {
    Long id;
    String name;
    LocalDate dob;

    public EmployeeDto(Long id, String name, LocalDate dob) {
        this.id = id;
        this.name = name;
        this.dob = dob;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public LocalDate getDob() {
        return dob;
    }
}
