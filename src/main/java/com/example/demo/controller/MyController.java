package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import com.example.demo.entity.Student;
import com.example.demo.service.StudentService;
//import com.itextpdf.text.Document;
//import com.itextpdf.text.Paragraph;
//import com.itextpdf.text.pdf.PdfWriter;

import jakarta.servlet.http.HttpServletResponse;



@Controller
public class MyController {

    @Autowired
    private StudentService service;



    // Open Registration Page
    @GetMapping("/")
    public String openForm() {

        return "registration";
    }



    // Save Student
    @PostMapping("/saveStudent")
    public String saveStudent(Student student,
                              Model model) {

    
        service.saveStudent(student);

        model.addAttribute(
        "msg",
        "Student Saved Successfully");

        return "redirect:/viewStudents";
    }



    // View All Students
    @GetMapping("/viewStudents")
    public String viewStudents(Model model) {

        List<Student> students =
                service.getAllStudents();

        model.addAttribute("students", students);

        return "registration";
    }



    // Open Edit Page
    @GetMapping("/edit/{id}")
    public String editStudent(@PathVariable int id,
                              Model model) {

        Student student =
                service.getStudentById(id);

        model.addAttribute("student", student);

        return "editStudent";
    }



    // Update Student
    @PostMapping("/updateStudent")
    public String updateStudent(@ModelAttribute Student student,
                                Model model) {

        service.updateStudent(student);

        List<Student> students =
                service.getAllStudents();

        model.addAttribute("students", students);

        model.addAttribute(
        "msg",
        "Student Updated Successfully");

        return "redirect:/viewStudents";
    }



    // Delete Student
    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable int id,
                                Model model) {

        service.deleteStudent(id);

        List<Student> students =
                service.getAllStudents();

        model.addAttribute("students", students);

        model.addAttribute(
        "msg",
        "Student Deleted Successfully");

        return "redirect:/viewStudents";
    }
    
}