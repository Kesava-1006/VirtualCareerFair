<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Companies</title>
<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: lighgrey;
}

h3 {
    color: black;
    text-align: center;
    margin-top: 50px;
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

.header-container {
    text-align: center;
    margin-top: 30px;
}

.company-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin-top: 50px;
}

.company-box {
    background-color: #2F4F4F; /* Dark Slate Gray */
    border: 1px solid #4682B4; /* Steel Blue */
    border-radius: 10px;
    padding: 20px;
    margin: 10px;
    width: 300px;
    color: white;
    text-align: center;
}

.company-box h4 {
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
<%@ include file="adminnavbar.jsp" %>

<div class="header-container">
    <h3>View All Companies</h3>
    <p style="font-size: 18px;">Total Companies: <c:out value="${comcount}"></c:out></p>
</div>

<div class="company-container">
    <c:forEach items="${companylist}" var="company">
        <div class="company-box">
            <h4>Company: <c:out value="${company.name}"></c:out></h4>
            <p><strong>Email:</strong> <c:out value="${company.email}"></c:out></p>
            <p><strong>Location:</strong> <c:out value="${company.location}"></c:out></p>
            <p><strong>Contact:</strong> <c:out value="${company.contact}"></c:out></p>
            <p><strong>Job Title:</strong> <c:out value="${company.jobtitle}"></c:out></p>
            <p><strong>Description:</strong> <c:out value="${company.jobdescription}"></c:out></p>  
        </div>
    </c:forEach>
</div>

</body>
</html>
'