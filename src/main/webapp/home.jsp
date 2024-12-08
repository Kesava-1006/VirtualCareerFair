<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Network It - Virtual Career Fair</title>
<style>
body {
    background-image: url('Main Bg.jpg'); /* Update the path to the uploaded image */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

.container {
    text-align: center;
    color: white;
    padding-top: 100px;
}

h1 {
    font-size: 3em;
    margin-bottom: 20px;
}

h3 {
    font-size: 1.5em;
    margin-bottom: 40px;
}

button {
    background-color: #2b82c4; /* Blue color */
    color: white;
    width: 150px;
    height: 40px;
    margin: 10px;
    border: none;
    border-radius: 5px;
    font-size: 1em;
    cursor: pointer;
}

button:hover {
    background-color: white;
    color: #0000FF; /* Blue color */
    border: 2px solid #0000FF;
}
</style>
</head>
<body>

<%@include file="mainnavbar.jsp" %>
<div class="container">
    <h1>Network It</h1>
    <h3>Where Ambitions Meet Opportunities in the Digital Era</h3>
    <button onclick="window.location.href='candidatereg'">Sign Up</button>
    <button onclick="window.location.href='candidatelogin'">Login</button>
</div>
</body>
</html>