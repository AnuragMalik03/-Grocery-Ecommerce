<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<br>
<br>


<div class="container">
<div class="row">
<div class="col-lg-6 col-lg-offset-3 col-sm-12">
<div class="page-header">
  <h1>Thank You! <small>for Shopping With us. </small></h1>
</div>
<br>
<br>
<br>
<br>
<div style="text-align: center;">
<a  class="btn btn-primary btn-lg "  href="<c:url value="/"/>"> Continue Shopping!</a>
</div>
</div>
</div>
</div>
</body>
</html>