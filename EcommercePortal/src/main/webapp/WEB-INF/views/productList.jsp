<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <%@ include file="header.jsp" %>
  
<title>Admin Product List</title>
<style type="text/css">

table, td ,tr {
text-align:center; 
  vertical-align:middle;
    
} 

</style>
</head>
<body>

<br>
<br>
	
	<div class="container">
	<div class="page-header">
  <h1>All Products</h1>
</div>
	
	
	<table class="table table-hover table-bordered" id="category" class="display" border="1" width="80" align="center">
	
	<tr>
	<th>#</th><th>PID</th><th>Name</th><th>Brand</th><th>Supplier</th><th>Stock</th><th>Category</th><th>Price</th><th style="width:15">Description</th>
	<th>Image</th><th class="span2">Action</tr>
	
	<c:if test="${empty productList }"><tr><td colspan="9"  align="center">No Record Exists</td></tr></c:if>
	<c:forEach var="c" varStatus="st" items="${productList }">
	<tr>
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
	               <a class="btn btn-info" role="button"  href="<c:url value="/admin/deleteProduct/${c.id }"/>"><i class="glyphicon glyphicon-trash"></i></a>
	               <a class="btn btn-info" role="button" href="${contextRoot }/admin/updateProduct?id=<c:out value="${c.id}"></c:out>"><i class="glyphicon glyphicon-edit"></i></a>
	
	</td>
	
	</tr>
	</c:forEach>
	
	</table>
	
	</div>

</body>
</html>