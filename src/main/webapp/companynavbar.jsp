<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Project</title>
<style>
body {
     /* Update the path to the uploaded image */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

.navbar {
    background-color: #2F4F4F; /* Dark Slate Gray */
    overflow: hidden;
}

.navbar a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
    font-size: 17px;
}

.navbar a:hover {
    background-color: #ADD8E6; /* Light Blue */
    color: #2F4F4F; /* Dark Slate Gray */
}

.navbar .active {
    background-color: #4682B4; /* Steel Blue */
    color: white;
}
</style>
</head>
<body>

<div class="navbar">
    <a href="companyhome" >Home</a>
    <a href="companyprofile">Company Profile</a>
    <a href="companylogout">Logout</a>
</div>
</body>
</html>