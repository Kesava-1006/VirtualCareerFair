<%@page import="com.klef.jfsd.springboot.model.Candidate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    color: white;
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

.welcome-message {
    text-align: center;
    margin-top: 50px;
    font-size: 24px;
    font-weight: bold;
    color: black;
}

.company-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin-top: 50px;
}

.company-box {
    background-color: #2F4F4F; /* Dark Slate Gray */
    border: 1px solid #2F4F4F; /* Dark Slate Gray */
    border-radius: 10px;
    padding: 20px;
    margin: 10px;
    width: 300px;
    color: white;
    text-align: center;
}

.company-box h3 {
    margin: 10px 0;
}

.company-box p {
    font-size: 14px;
    line-height: 1.5;
}

.register-button {
    background-color: #ADD8E6; /* Light Blue */
    color: #2F4F4F; /* Dark Slate Gray */
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 14px;
    margin-top: 10px;
}

.register-button:hover {
    background-color: #4682B4; /* Steel Blue */
    color: white;
}
</style>
</head>
<body>
<%@include file="candidatenavbar.jsp" %>
<div class="welcome-message">
    Welcome <%=c.getName()%>
</div>
<div class="company-container">
    <div class="company-box">
        <h3>Amazon</h3>
        <h4>Job Title: Software Engineer</h4>
        <p>Description: Responsible for developing and maintaining web applications.</p>
        <a href="https://precious-reflection-production.up.railway.app/addresume" class="register-button">Register</a>

    </div>
    <div class="company-box">
        <h3>Flipkart</h3>
        <h4>Job Title: Data Analyst</h4>
        <p>Description: Analyze data trends and provide actionable insights.</p>
        <a href="https://precious-reflection-production.up.railway.app/addresume" class="register-button">Register</a>

    </div>
    <div class="company-box">
        <h3>Google</h3>
        <h4>Job Title: Product Manager</h4>
        <p>Description: Oversee product development from conception to launch.</p>
        <a href="https://precious-reflection-production.up.railway.app/addresume" class="register-button">Register</a>

    </div>
    <div class="company-box">
        <h3>JetBrains</h3>
        <h4>Job Title: UX Designer</h4>
        <p>Description: Design user interfaces and enhance user experience.</p>
        <a href="https://precious-reflection-production.up.railway.app/addresume" class="register-button">Register</a>

    </div>
    <div class="company-box">
        <h3>Zomato</h3>
        <h4>Job Title: Marketing Specialist</h4>
        <p>Description: Develop marketing strategies to promote products and services.</p>
        <a href="https://precious-reflection-production.up.railway.app/addresume" class="register-button">Register</a>
    </div>
    <div class="company-box">
        <h3>Ola</h3>
        <h4>Job Title: Network Engineer</h4>
        <p>Description: Maintain and troubleshoot network infrastructure.</p>
        <a href="https://precious-reflection-production.up.railway.app/addresume" class="register-button">Register</a>

    </div>
</div>
</body>
</html>
