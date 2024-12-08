<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
.container
{
	text-align: center;
}
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<h3 align = "center"><u>View Candidate By ID</u></h3><br/>
<div class="container">
<form method="post" action="displaycandidate">
<label>Select Candidate ID</label>
<select name="id" class="form-select" required>
<option value="">---Select---</option>
<c:forEach items="${candidatelist}" var="candidate">
<option value="${candidate.id}">${candidate.id}-${candidate.name}</option>
</c:forEach>
</select>
<br/><br/>
<input type="submit" value="View" class="btn btn-success"/>
</form>
</div>
</body>
</html>