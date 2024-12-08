<%@page import="com.klef.jfsd.springboot.model.Candidate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Candidate c = (Candidate) session.getAttribute("candidate");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Candidate Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        color: black; /* Setting default color to black */
        margin: 0;
        padding: 0;
    }
    .profile-container {
        width: 50%;
        margin: 0 auto;
        margin-top: 50px;
        background-color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .profile-container h3 {
        margin-top: 0;
        color: #2F4F4F; /* Dark Slate Gray */
    }
    .profile-data {
        text-align: left;
        margin-top: 20px;
        color: black; /* Ensuring profile data is black */
        font-size: 18px;
    }
    .profile-data div {
        margin-bottom: 10px;
    }
    .profile-label {
        font-weight: bold;
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
</style>
</head>
<body>
<%@include file="candidatenavbar.jsp" %>
<br/><br/>
<div class="profile-container">
    <h3>My Profile</h3>
    <div class="profile-data">
        <div><span class="profile-label">Id:</span> <%=c.getId()%></div>
        <div><span class="profile-label">Name:</span> <%=c.getName()%></div>
        <div><span class="profile-label">Gender:</span> <%=c.getGender()%></div>
        <div><span class="profile-label">DOB:</span> <%=c.getDateofbirth()%></div>
        <div><span class="profile-label">Email:</span> <%=c.getEmail()%></div>
        <div><span class="profile-label">Location:</span> <%=c.getLocation()%></div>
        <div><span class="profile-label">Contact:</span> <%=c.getContact()%></div>
    </div>
</div>
</body>
</html>