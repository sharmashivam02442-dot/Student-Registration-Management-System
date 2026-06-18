package com.example.demo.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Student;
import com.example.demo.repositiry.StudentRepository;


@Service
public class StudentServiceImpl
implements StudentService{

    
    @Autowired
    private StudentRepository repository;

    
    
    // Save Student
    @Override
    public Student saveStudent(Student student) {

        return repository.save(student);
    }

    
    
    // Get All Students
    @Override
    public List<Student> getAllStudents() {

        return repository.findAll();
    }

    
    
    // Get Student By Id
    @Override
    public Student getStudentById(int id) {

        return repository.findById(id).get();
    }

    
    
    // Update Student
    @Override
    public Student updateStudent(Student student) {

        return repository.save(student);
    }

    
    
    // Delete Student
    @Override
    public void deleteStudent(int id) {

        repository.deleteById(id);
    }

}
