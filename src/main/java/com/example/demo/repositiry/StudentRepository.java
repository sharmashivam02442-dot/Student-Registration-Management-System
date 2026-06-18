package com.example.demo.repositiry;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Student;

public interface StudentRepository
extends JpaRepository<Student, Integer>{

}
