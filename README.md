# 🎓 Student Registration Management System

## 📌 Project Overview

Student Registration Management System is a web-based application developed using Spring Boot, JSP, Hibernate (JPA), and PostgreSQL. The system allows users to register student information, view records, update existing details, and delete records through a user-friendly interface.

The project follows a layered architecture using Controller, Service, Repository, Entity, and Database layers to ensure clean code organization and maintainability.

---

## 🚀 Features

### Student Registration
- Register student details
- Store data in PostgreSQL database
- Form submission through JSP pages

### Student Information Management
- View all registered students
- Edit existing student records
- Update student information
- Delete student records

### Student Details Captured
- Student Name
- Father Name
- Date of Birth
- Mobile Number
- Email Address
- Password
- Gender
- Languages Known
- State
- Address

---

## 🛠️ Technology Stack

### Backend
- Java 17
- Spring Boot
- Spring MVC
- Spring Data JPA
- Hibernate

### Frontend
- JSP
- HTML
- CSS
- JavaScript
- JSTL

### Database
- PostgreSQL

### Build Tool
- Maven

### Server
- Embedded Tomcat

---

## 📂 Project Structure

```text
registration_Management_System
│
├── src/main/java
│   ├── controller
│   ├── service
│   ├── repository
│   └── entity
│
├── src/main/resources
│   └── application.properties
│
├── src/main/webapp/views
│   ├── registration.jsp
│   └── editStudent.jsp
│
└── pom.xml
```

---

## ⚙️ Functional Modules

### Registration Module
Allows users to enter and save student information.

### View Module
Displays all registered students in tabular format.

### Update Module
Enables modification of existing student records.

### Delete Module
Removes student records from the database.

---

## 🔄 Application Flow

1. User opens Registration Page.
2. Student details are entered.
3. Data is validated and submitted.
4. Spring Boot Controller receives request.
5. Service layer processes data.
6. Repository saves data using JPA/Hibernate.
7. PostgreSQL stores student information.
8. Records can be viewed, updated, or deleted.

---

## 🎯 Learning Outcomes

This project demonstrates:

- Spring Boot MVC Architecture
- CRUD Operations
- Hibernate & JPA Integration
- PostgreSQL Database Connectivity
- JSP and JSTL Usage
- Form Handling
- MVC Design Pattern
- Layered Application Development

---

## 👨‍💻 Developer

**Shivam Kumar**

Java Full Stack Developer

### Skills Used
- Core Java
- Spring Boot
- Hibernate
- JPA
- PostgreSQL
- HTML
- CSS
- JavaScript
- JSP
- Maven
