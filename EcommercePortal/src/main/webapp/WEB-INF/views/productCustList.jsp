<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script> -->
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
     <script src="assets/js/jquery.js"></script>
   <script src="assets/js/jquery.min.js"></script>
<title>Admin Page</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<br>
	<br>
	<br>
	<div class="container">
	<div class="row">
	


	
	<h2>Product List</h2>
	
	
	
	
	
	
<%-- 	
	
	<div class="card-group">
	<c:forEach var="c" varStatus="st" items="${productList }">
	
  <div class="card">
  <div class="card-header">
      <small class="text-muted text-left"><c:out value="${st.count }"></c:out></small>
      <small class="card-text pull-right" style="color:red;" >Save <i class="fa fa-inr"></i>.20 <i class="fa fa-diamond"></i></small>
    </div>
    <img class="card-img-top" src="${pageContext.request.contextPath }/resources/${c.imgName}" height="200px" alt="Card image cap">
    <div class="card-block ">
      <p class="text-muted"><c:out value="${c.name }"></c:out></p> 
      <p class="card-text">Rs.<c:out value="${c.price }"></c:out></p>
     <p class="card-text"> <c:out value="${c.description }"></c:out></p> 
      <c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
	<a class="btn btn-info" role="button"  href="<c:url value="/productDetail/${c.id }"/>"><i class="fa fa-info-circle"></i></a>
    </div>
    <div class="card-footer">
      <small class="text-muted">Standard Delivery: Tomorrow Morning</small>
    </div>
  </div>
 
  </c:forEach>
 </div> --%>
 
 
	<table class="table table-hover table-bordered" id="category" class="display" border="3" width="80" align="center">
	<thead class="thead-default">
	<tr>
	<th>Sr No.</th><th>PID</th><th>Name</th><th>Brand</th><th>Supplier</th><th>Stock</th><th>Category</th><th>Price</th><th style="width:15">Description</th>
	<th>Image</th><th>Action</th>
	</tr>
	</thead>

    <tbody>
    <c:if test="${empty productList }"><tr><td colspan="9"  align="center">No Record Exists</td></tr></c:if>

    <c:forEach var="c" varStatus="st" items="${productList }">
    
	<tr>
	<%-- <c:if test="${c.stock } > 0"> --%>
	<td><c:out value="${st.count }"></c:out></td>
	<td><c:out value="${c.id }"></c:out></td>
	<td><c:out value="${c.name }"></c:out></td>
	<td><c:out value="${c.brand.brandName }"></c:out></td>
	<td><c:out value="${c.supplier.supplierName }"></c:out></td>
	<td><c:out value="${c.stock }"></c:out></td>
	<td><c:out value="${c.category.name }"></c:out></td>
	<td><c:out value="${c.price }"></c:out></td>
	<td class="span2"><c:out value="${c.description }"></c:out></td>
	<td><img src="${pageContext.request.contextPath }/resources/${c.imgName}" height="60px" width="60px"></td>
	
	<td>
	<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
	<a class="btn btn-info" role="button"  href="<c:url value="/productDetail/${c.id }"/>"><i class="fa fa-info-circle"></i></a>
	</td>
	<%-- </c:if> --%>
	</tr>
	
	</c:forEach>
	</tbody>
	
	</table>
	
	</div>
	</div>

</body>
</html>