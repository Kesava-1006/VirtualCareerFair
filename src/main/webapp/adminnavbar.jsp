<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Project</title>
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
    float:left;
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
<div class="navbar">
<a href="adminhome">Home</a>&nbsp;&nbsp;
<a href="viewallcandidates">View All Candidates </a>&nbsp;&nbsp;
<a href="deletecandidate">Delete Candidate </a>&nbsp;&nbsp;
<a href="viewcandidatebyid">View Candidates By ID</a>&nbsp;&nbsp;
<a href="viewallcompanies">View All Companies </a>&nbsp;&nbsp;
<a href="viewallresumes">View All Resumes </a>&nbsp;&nbsp;
<a href="adminlogin">Logout</a>
</div>
</body>
</html>