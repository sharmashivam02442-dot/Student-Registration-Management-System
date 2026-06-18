package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.Student;

public interface StudentService {

    
    // Save Student
    Student saveStudent(Student student);

    
    // Get All Students
    List<Student> getAllStudents();

    
    // Get Student By Id
    Student getStudentById(int id);

    
    // Update Student
    Student updateStudent(Student student);

    
    // Delete Student
    void deleteStudent(int id);

}
