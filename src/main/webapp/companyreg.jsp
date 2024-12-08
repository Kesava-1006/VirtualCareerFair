<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    color: white;
}
h3
{
  color: black;
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

form {
    background-color: rgba(47, 79, 79, 0.8); /* Dark Slate Gray with transparency */
    padding: 50px;
    border-radius: 10px;
    width: 350px;
    margin: auto;
    margin-top: 50px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}

label {
    display: block;
    margin-bottom: 8px;
    font-size: 1.2em;
}

input[type="text"], input[type="email"], input[type="password"], input[type="date"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: none;
    border-radius: 5px;
    font-size: 1em;
}

input[type="radio"] {
    margin: 0 10px 0 5px;
}

input[type="submit"], input[type="reset"] {
    background-color: #2F4F4F; /* Dark Slate Gray */
    color: white;
    width: 150px;
    height: 40px;
    margin: 10px 5px;
    border: none;
    border-radius: 5px;
    font-size: 1em;
    cursor: pointer;
}

input[type="submit"]:hover, input[type="reset"]:hover {
    background-color: #ADD8E6; /* Light Blue */
    color: #2F4F4F; /* Dark Slate Gray */
    border: 2px solid #2F4F4F;
}
</style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
<h3 align = "center">Company Registration Form</h3>
<div>
<form method="post" action="insertcompany">
<label>Enter Name</label>
<input type="text" class="form-control" name="comname" required />
<br/>
<label>Enter Email Id</label>
<input type="email" name="comemail" required />
<br/>
<label>Enter password</label>
<input type="password" name="compwd" required />
<br/>
<label>Enter Location</label>
<input type="text" name="comlocation" required />
<br/>
<label>Enter Contact</label>
<input type="text" name="comcontact" required />
<br/>
<label>Enter Job Title</label>
<input type="text" name="comjobtitle" required />
<br/>
<label>Enter Job Description</label>
<input type="text" name="comjobdesc" required />
<br/>
<input type="submit" value="Register"/>
<input type="reset" value="Clear"/>
</form>
</div>
</body>
</html>