<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
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

    h2 {
        color: black;
        margin-top: 20px;
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
        max-width: 600px;
        margin-left: auto;
        margin-right: auto;
    }

    .content p {
        margin: 10px 0;
    }
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %><br/><br/>
<div class="content">
    <p>Total Candidates: <c:out value="${count}"></c:out></p>
    <p>Total Companies: <c:out value="${comcount}"></c:out></p>
</div>
</body>
</html>