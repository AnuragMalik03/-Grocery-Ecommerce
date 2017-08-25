<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error Page</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<br>
<br><br>
<br><br>
<br>
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3">
<h3>Sorry ! You are not Authorised to Access This Page</h3> 
<div style="text-align:center">
<a href="<c:url value="/"/>"><h2>Home Page</h2></a>
</div>
</div>
</div>
</div>
</body>
</html>