<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<h3 align = "center">Add Resume</h3>
<form method="post" action="insertresume" enctype="multipart/form-data">
<label>Enter Candidate Name</label>
<input type="text" class="form-control" name="rcandiname" required />
<br/>
<label>Enter Company Name</label>
<input type="text" class="form-control" name="rcompyname" required />
<br/>
<label>Product image</label>
<input type="file" name="rimage" class="form-control" required />
<br/>
<input type="submit" value="Add" class="btn btn-success"/>
<input type="reset" value="Clear" class="btn btn-success"/>
</form>
</body>
</html>