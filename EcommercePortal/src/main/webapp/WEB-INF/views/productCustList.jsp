<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <%@ include file="header.jsp" %>
<title>Admin Page</title>

<style type="text/css">

table, td ,tr {
text-align:center; 
  vertical-align:middle;
    
} 

</style>
</head>
<body>

	
	
	
	<div class="container" style="margin-top: 80px">
	<div class="row">
	


	
	<div class="page-header">
  <h1>Product List </h1>
</div>

 
	<table class="table table-hover table-bordered" id="category" class="display" border="3" width="80" align="center">
	<thead class="thead-default">
	<tr >
	<th>#</th><th>Image</th><th>Brand</th><!-- <th>Supplier</th><th>Stock</th>--><th>Name</th><th>Category</th><th style="width:15">Description</th>
	<th>Price</th><th>Action</th>
	</tr>
	</thead>

    <tbody>
    <c:if test="${empty productList }"><tr><td colspan="9"  align="center">No Record Exists</td></tr></c:if>

    <c:forEach var="p" varStatus="st" items="${productList }">
    
    <c:if test="${p.stock gt 0}">
	<tr>
	
	<td><c:out value="${st.count }"></c:out></td>
	<td><img src="${pageContext.request.contextPath }/resources/${p.imgName}" height="80px" width="80px"></td>
	<%-- <td><c:out value="${p.id }"></c:out></td> --%>
	<td><c:out value="${p.brand.brandName }"></c:out></td>
	<td><c:out value="${p.name }"></c:out></td>
	
	<%-- <td><c:out value="${p.supplier.supplierName }"></c:out></td> --%>
	<%-- <td><c:out value="${p.stock }"></c:out></td> --%>
	<td><c:out value="${p.category.name }"></c:out></td>
	<td><c:out value="${p.price }"></c:out></td>
	<td class="span2"><c:out value="${p.description }"></c:out></td>
	
	
	<td>
	<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
	<a class="btn btn-info" role="button"  href="<c:url value="/productDetail/${p.id }"/>"><i class="glyphicon glyphicon-info-sign"></i></a>
	</td>
	
	</tr>
	</c:if>
	</c:forEach>
	</tbody>
	
	</table>
	
	</div>
	</div>

</body>
</html>