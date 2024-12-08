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
    .content {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .content h3 {
        color: #2F4F4F; /* Dark Slate Gray */
        text-align: center;
    }
    .content p {
        font-size: 18px;
        line-height: 1.6;
        margin: 10px 0;
    }
    .benefits {
        margin: 20px 0;
    }
    .benefit-item {
        margin-bottom: 15px;
    }
    .cta {
        text-align: center;
        margin-top: 30px;
    }
    .cta a {
        display: inline-block;
        background-color: #4682B4; /* Steel Blue */
        color: white;
        padding: 12px 24px;
        text-decoration: none;
        font-size: 16px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    .cta a:hover {
        background-color: #2F4F4F; /* Dark Slate Gray */
    }
</style>
</head>
<body>
<%@include file="companynavbar.jsp" %><br/>
<div class="content">
    <h3>Welcome</h3>
    <p>Welcome <%=c.getName() %>, thanks for enrolling into our website. We are excited to have you on board!</p>
    
    <div class="benefits">
        <h4>Why Choose Us?</h4>
        <div class="benefit-item">
            <h5>Expand Your Reach</h5>
            <p>Gain access to a large pool of talented candidates looking for opportunities in various fields.</p>
        </div>
        <div class="benefit-item">
            <h5>Efficient Hiring Process</h5>
            <p>Streamline your hiring process with our easy-to-use platform that helps you manage job postings, applications, and interviews efficiently.</p>
        </div>
        <div class="benefit-item">
            <h5>Build Your Brand</h5>
            <p>Enhance your company’s brand visibility among job seekers by showcasing your company culture, values, and benefits.</p>
        </div>
    </div>
    
    <div class="cta">
        <a href="companyprofile">Complete Your Profile</a>
    </div>
</div>
</body>
</html>