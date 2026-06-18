<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>


<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:linear-gradient(135deg,#74ebd5,#ACB6E5);
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:30px;
}

h1{
    text-align:center;
    color:#333;
    margin-bottom:20px;
}

form{
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
    width:850px;
}

table{
    width:100%;
    border-collapse:collapse;
}

td{
    padding:12px;
    border:none;
}

td:first-child{
    font-weight:bold;
    color:#444;
    width:30%;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="tel"],
input[type="date"],
select,
textarea{
    width:100%;
    padding:10px;
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
    border-color:#4CAF50;
    box-shadow:0 0 8px rgba(76,175,80,0.4);
}

input[type="radio"],
input[type="checkbox"]{
    margin-right:5px;
    margin-left:10px;
}

textarea{
    resize:none;
}

input[type="submit"]{
    background:#4CAF50;
    color:white;
    border:none;
    padding:12px 25px;
    border-radius:8px;
    cursor:pointer;
    font-size:16px;
    font-weight:bold;
    transition:0.3s;
}

input[type="submit"]:hover{
    background:#388E3C;
    transform:scale(1.05);
}

tr:hover{
    background:#f8f9fa;
}

</style>



</head>

<body>

<h1>Edit Student</h1>

<form action="/updateStudent" method="post">

<input type="hidden"
name="id"
value="${student.id}">

<table border="1" cellpadding="10">

<tr>
    <td>Student Name :</td>

    <td>
        <input type="text"
        name="studentName"
        value="${student.studentName}">
    </td>
</tr>

<tr>
    <td>Father Name :</td>

    <td>
        <input type="text"
        name="fatherName"
        value="${student.fatherName}">
    </td>
</tr>

<tr>
    <td>Date of Birth :</td>

    <td>
        <input type="date"
        name="dob"
        value="${student.dob}">
    </td>
</tr>

<tr>
    <td>Mobile No :</td>

    <td>
        <input type="tel"
        name="mobile"
        value="${student.mobile}">
    </td>
</tr>

<tr>
    <td>Email :</td>

    <td>
        <input type="email"
        name="email"
        value="${student.email}">
    </td>
</tr>

<tr>
    <td>Password :</td>

    <td>
        <input type="password"
        name="password"
        value="${student.password}">
    </td>
</tr>

<tr>
    <td>Gender :</td>

    <td>

        <input type="radio"
        name="gender"
        value="Male"
        ${student.gender == 'Male' ? 'checked' : ''}> Male

        <input type="radio"
        name="gender"
        value="Female"
        ${student.gender == 'Female' ? 'checked' : ''}> Female

        <input type="radio"
        name="gender"
        value="Others"
        ${student.gender == 'Others' ? 'checked' : ''}> Others

    </td>
</tr>

<tr>
    <td>Languages :</td>

    <td>

        <input type="checkbox"
        name="language"
        value="Hindi"
        ${student.language.contains('Hindi') ?
        'checked' : ''}> Hindi

        <input type="checkbox"
        name="language"
        value="English"
        ${student.language.contains('English') ?
        'checked' : ''}> English

        <input type="checkbox"
        name="language"
        value="Kannada"
        ${student.language.contains('Kannada') ?
        'checked' : ''}> Kannada

        <input type="checkbox"
        name="language"
        value="Japanese"
        ${student.language.contains('Japanese') ?
        'checked' : ''}> Japanese

        <input type="checkbox"
        name="language"
        value="Deutsch"
        ${student.language.contains('Deutsch') ?
        'checked' : ''}> Deutsch

    </td>
</tr>

<tr>
    <td>State :</td>

    <td>

        <select name="state">

            <option
            ${student.state == 'Bihar' ? 'selected' : ''}>
            Bihar
            </option>

            <option
            ${student.state == 'Karnataka' ? 'selected' : ''}>
            Karnataka
            </option>

            <option
            ${student.state == 'Uttar Pradesh' ? 'selected' : ''}>
            Uttar Pradesh
            </option>

            <option
            ${student.state == 'Kerala' ? 'selected' : ''}>
            Kerala
            </option>

            <option
            ${student.state == 'Himachal Pradesh' ? 'selected' : ''}>
            Himachal Pradesh
            </option>

        </select>

    </td>
</tr>

<tr>
    <td>Address :</td>

    <td>

        <textarea rows="4"
        cols="40"
        name="address">${student.address}</textarea>

    </td>
</tr>

<tr>
    <td colspan="2" align="right">

        <input type="submit"
        value="Update">

    </td>
</tr>

</table>

</form>

</body>
</html>