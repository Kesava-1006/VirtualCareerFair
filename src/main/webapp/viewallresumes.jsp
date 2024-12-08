<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<h3 align="center">View All RESUMES</h3>
<table align="center" border="2" class="table table-striped">
<tr>
<th>ID</th>
<th>CANDIDATE NAME</th>
<th>COMPANY NAME</th>
<th>Image</th>
</tr>

<c:forEach items="${resumes}" var="resume">
<tr>
<td><c:out value="${resume.id}"></c:out></td>
<td><c:out value="${resume.candidateName}"></c:out></td>
<td><c:out value="${resume.companyName}"></c:out></td>
<td>
<img src="displayresumeimage?id=${resume.id}" width="50%" height="50%">
</td>
</tr>


</c:forEach>
</table>
</body>
</html>