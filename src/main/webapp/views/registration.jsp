<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Form</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:linear-gradient(135deg,#667eea,#764ba2);
    padding:40px;
}

h1{
    text-align:center;
    color:white;
    margin-bottom:25px;
    font-size:40px;
}

form{
    width:900px;
    margin:auto;
    background:white;
    padding:35px;
    border-radius:15px;
    box-shadow:0px 8px 25px rgba(0,0,0,0.25);
}

table{
    width:100%;
    border-collapse:collapse;
}

td{
    padding:12px;
}

td:first-child{
    width:30%;
    font-weight:bold;
    color:#333;
    font-size:16px;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="tel"],
input[type="date"],
select,
textarea{
    width:100%;
    padding:12px;
    border:1px solid #ccc;
    border-radius:8px;
    font-size:14px;
    transition:0.3s;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus,
input[type="tel"]:focus,
input[type="date"]:focus,
select:focus,
textarea:focus{
    outline:none;
    border-color:#667eea;
    box-shadow:0 0 8px rgba(102,126,234,0.4);
}

input[type="radio"],
input[type="checkbox"]{
    margin-left:10px;
    margin-right:5px;
}

textarea{
    resize:none;
}

input[type="submit"]{
    background:#28a745;
    color:white;
    border:none;
    padding:12px 25px;
    border-radius:8px;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
}

input[type="submit"]:hover{
    background:#218838;
}

button{
    background:#007bff;
    color:white;
    border:none;
    padding:12px 25px;
    border-radius:8px;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
    margin-left:10px;
}

button:hover{
    background:#0056b3;
}

tr:hover{
    background:#f8f9fa;
}


.student-list-title{
    text-align:center;
    color:white;
    margin-top:40px;
    margin-bottom:20px;
    font-size:32px;
}

.student-grid{
    width:95%;
    margin:auto;
    background:white;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 8px 25px rgba(0,0,0,0.25);
}

.student-grid table{
    width:100%;
    border-collapse:collapse;
}

.student-grid th{
    background:#007bff;
    color:white;
    padding:15px;
    text-align:center;
}

.student-grid td{
    text-align:center;
    padding:12px;
    border-bottom:1px solid #ddd;
}

.student-grid tr:nth-child(even){
    background:#f5f5f5;
}

.student-grid tr:hover{
    background:#eef4ff;
}

.edit-btn{
    background:#17a2b8;
    color:white;
    padding:8px 15px;
    border-radius:5px;
    text-decoration:none;
    font-weight:bold;
}

.edit-btn:hover{
    background:#138496;
}

.delete-btn{
    background:#dc3545;
    color:white;
    padding:8px 15px;
    border-radius:5px;
    text-decoration:none;
    font-weight:bold;
}

.delete-btn:hover{
    background:#c82333;
}

</style>

<script>

function validateForm(){

    let name =
    document.forms["studentForm"]["studentName"].value;

    let father =
    document.forms["studentForm"]["fatherName"].value;

    let mobile =
    document.forms["studentForm"]["mobile"].value;

    let email =
    document.forms["studentForm"]["email"].value;

    let password =
    document.forms["studentForm"]["password"].value;

    let namePattern = /^[A-Za-z ]+$/;

    let mobilePattern = /^[0-9]{10}$/;

    let emailPattern =
    /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;

    let passwordPattern =
    /^(?=.*[A-Za-z])(?=.*[0-9]).{6,}$/;

    if(!name.match(namePattern)){

        alert("Name should contain only alphabets");
        return false;
    }

    if(!father.match(namePattern)){

        alert("Father Name should contain only alphabets");
        return false;
    }

    if(!mobile.match(mobilePattern)){

        alert("Mobile Number should contain only 10 digits");
        return false;
    }

    if(!email.match(emailPattern)){

        alert("Enter valid Email");
        return false;
    }

    if(!password.match(passwordPattern)){

        alert("Password must contain letters and numbers");
        return false;
    }

    return true;
}

</script>

</head>

<body>

<h1>Student Registration Form</h1>

<form name="studentForm"
action="saveStudent"
method="post"
onsubmit="return validateForm()">

<table border="1" cellpadding="10">

<tr>
    <td>Student Name :</td>

    <td>
        <input type="text"
        name="studentName"
        placeholder="Enter Name"
        required>
    </td>
</tr>

<tr>
    <td>Father's Name :</td>

    <td>
        <input type="text"
        name="fatherName"
        placeholder="Enter Father Name"
        required>
    </td>
</tr>

<tr>
    <td>Date of Birth :</td>

    <td>
        <input type="date"
        name="dob"
        required>
    </td>
</tr>

<tr>
    <td>Mobile No :</td>

    <td>
        <input type="tel"
        name="mobile"
        maxlength="10"
        placeholder="Enter Mobile Number"
        required>
    </td>
</tr>

<tr>
    <td>Email Id :</td>

    <td>
        <input type="email"
        name="email"
        placeholder="Enter Email"
        required>
    </td>
</tr>

<tr>
    <td>Password :</td>

    <td>
        <input type="password"
        name="password"
        placeholder="Letters and Numbers"
        required>
    </td>
</tr>

<tr>
    <td>Gender :</td>

    <td>

        <input type="radio"
        name="gender"
        value="Male"
        required> Male

        <input type="radio"
        name="gender"
        value="Female"> Female

        <input type="radio"
        name="gender"
        value="Others"> Others

    </td>
</tr>

<tr>
    <td>Languages :</td>

    <td>

        <input type="checkbox"
        name="language"
        value="Hindi"> Hindi

        <input type="checkbox"
        name="language"
        value="English"> English

        <input type="checkbox"
        name="language"
        value="Kannada"> Kannada

        <input type="checkbox"
        name="language"
        value="Japanese"> Japanese

        <input type="checkbox"
        name="language"
        value="Deutsch"> Deutsch

    </td>
</tr>

<tr>
    <td>State :</td>

    <td>

        <select name="state" required>

            <option value="">Select State</option>

            <option>Bihar</option>

            <option>Karnataka</option>

            <option>Uttar Pradesh</option>

            <option>Kerala</option>

            <option>Himachal Pradesh</option>

        </select>

    </td>
</tr>

<tr>
    <td>Address :</td>

    <td>

        <textarea rows="4"
        cols="40"
        name="address"
        required></textarea>

    </td>
</tr>

<tr>
    <td colspan="2" align="right">

        <input type="submit"
        value="Submit">

        <a href="viewStudents">

            <button type="button">

            View

            </button>

        </a>

    </td>
</tr>

</table>

</form>
<!-- THIS IS FOR STUDENT GREED -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${not empty students}">

```
<h2 class="student-list-title">Student List</h2>

<div class="student-grid">

    <table>

        <tr>
            <th>ID</th>
            <th>Student Name</th>
            <th>Father Name</th>
            <th>Mobile</th>
            <th>Email</th>
            <th>Gender</th>
            <th>State</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <c:forEach var="student" items="${students}">

            <tr>

                <td>${student.id}</td>
                <td>${student.studentName}</td>
                <td>${student.fatherName}</td>
                <td>${student.mobile}</td>
                <td>${student.email}</td>
                <td>${student.gender}</td>
                <td>${student.state}</td>

				<td>
				    <a class="edit-btn"
				       href="${pageContext.request.contextPath}/edit/${student.id}">
				        Edit
				    </a>
				</td>

				<td>
				    <a class="delete-btn"
				       href="${pageContext.request.contextPath}/delete/${student.id}">
				        Delete
				    </a>
				</td>

        </c:forEach>

    </table>

</div>
```

</c:if>

</body>
</html>