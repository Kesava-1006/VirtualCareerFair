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
<%@include file="adminnavbar.jsp" %><br/>
<h3 align="center">Delete Candidates</h3>
<table align="center" border="2" ">
<tr>
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<th>DATE OF BIRTH</th>
<th>EMAIL</th>
<th>LOCATION</th>
<th>CONTACT NO</th>
<th>Action</th>
</tr>

<c:forEach items="${candidatelist}" var="candidate">
<tr>
<td><c:out value="${candidate.id}"></c:out></td>
<td><c:out value="${candidate.name}"></c:out></td>
<td><c:out value="${candidate.gender}"></c:out></td>
<td><c:out value="${candidate.dateofbirth}"></c:out></td>
<td><c:out value="${candidate.email}"></c:out></td>
<td><c:out value="${candidate.location}"></c:out></td>
<td><c:out value="${candidate.contact}"></c:out></td>

<td>
<a href='<c:url value='delete?id=${candidate.id}'></c:url>'>Delete</a>
</td>
</tr>


</c:forEach>
</table>
</body>
</html>