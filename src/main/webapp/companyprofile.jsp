<%@page import="com.klef.jfsd.springboot.model.Company"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Company c = (Company) session.getAttribute("company");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        color: #333;
        margin: 0;
        padding: 0;
    }
    .profile-container {
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .profile-container h3 {
        text-align: center;
        color: #2F4F4F; /* Dark Slate Gray */
        margin-bottom: 20px;
    }
    .profile-data {
        font-size: 18px;
        line-height: 1.6;
    }
    .profile-data span {
        font-weight: bold;
        color: #2F4F4F; /* Dark Slate Gray */
    }
    .navbar {
        text-align: center;
        background-color: #2F4F4F; /* Dark Slate Gray */
        padding: 10px 0;
    }
    .navbar a {
        color: white;
        text-decoration: none;
        padding: 14px 20px;
        margin: 0 10px;
        font-size: 17px;
        display: inline-block;
    }
    .navbar a:hover {
        background-color: #ADD8E6; /* Light Blue */
        color: #2F4F4F; /* Dark Slate Gray */
        border-radius: 5px;
    }
    .navbar .active {
        background-color: #4682B4; /* Steel Blue */
        color: white;
        border-radius: 5px;
    }
</style>
</head>
<body>
<%@include file="companynavbar.jsp" %>
<br/><br/>
<div class="profile-container">
    <h3>My Profile</h3>
    <div class="profile-data">
        <p><span>Id:</span> <%=c.getId()%></p>
        <p><span>Name:</span> <%=c.getName()%></p>
        <p><span>Email:</span> <%=c.getEmail()%></p>
        <p><span>Location:</span> <%=c.getLocation()%></p>
        <p><span>Contact:</span> <%=c.getContact()%></p>
        <p><span>Job Title:</span> <%=c.getJobtitle()%></p>
        <p><span>Job Description:</span> <%=c.getJobdescription()%></p>
    </div>
</div>
</body>
</html>