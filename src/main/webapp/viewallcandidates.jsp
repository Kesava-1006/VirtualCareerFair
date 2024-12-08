<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        color: black;
        margin: 0;
        padding: 0;
    }

    .navbar {
        background-color: #2F4F4F; /* Dark Slate Gray */
        overflow: hidden;
        text-align: center;
        padding: 14px 0;
    }

    .navbar a {
        display: inline-block;
        color: white;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
        font-size: 17px;
        margin: 0 10px;
    }

    .navbar a:hover {
        background-color: #ADD8E6; /* Light Blue */
        color: #2F4F4F; /* Dark Slate Gray */
        border-radius: 5px;
    }

    .navbar .active {
        background-color: #4682B4; /* Steel Blue */
        color: white;
    }

    .content {
        text-align: center;
        margin-top: 50px;
        font-size: 18px;
        background-color: #2F4F4F; /* Dark Slate Gray */
        padding: 20px;
        border-radius: 10px;
        color: white;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        max-width: 800px;
        margin-left: auto;
        margin-right: auto;
    }

    h3 {
        margin-top: 20px;
        color: #2F4F4F; /* Dark Slate Gray */
    }

    table {
        margin: 20px auto;
        border-collapse: collapse;
        width: 80%;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        background-color: white;
    }

    table, th, td {
        border: 1px solid #ddd;
        text-align: left;
    }

    th, td {
        padding: 12px;
        text-align: center;
    }

    th,td{
        background-color: #2F4F4F; /* Dark Slate Gray */
        color: white;
    }
  
  

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %><br/>
<div class="content">
    <p>Total Candidates: <c:out value="${count}"></c:out></p>
    <h3>View All Candidates</h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>EMAIL</th>
            <th>LOCATION</th>
            <th>CONTACT NO</th>
        </tr>
        <c:forEach items="${candidatelist}" var="candidate">
        <tr>
            <td><c:out value="${candidate.id}"></c:out></td>
            <td><c:out value="${candidate.name}"></c:out></td>
            <td><c:out value="${candidate.gender}"></c:out></td>
            <td><c:out value="${candidate.dateofbirth}"></c:out></td>
            <td><c:out value="${candidate.email}"></c:out></td>
            <td><c:out value="${candidate.location}"></c:out></td>
            <td><c:out value="${candidate.contact}"></c:out></td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>