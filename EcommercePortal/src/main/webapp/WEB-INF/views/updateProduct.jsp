<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
              pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="/resources/bootstrap.css">
<title>Update Product</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<br><br><br><br>
<div class="container">

<c:url value="/productUpdate" var="pro"></c:url>
<form action="productUpdate" method="post" enctype="multipart/form-data">
<input type="text" name="pid" value="${prod.id }">
<label>Product Name</label>
<input type="text" name="pName" value="${prod.name }" required/>
<label>Product Description</label>
<input type="text" name="pDescription" value="${prod.description}" required/>
<label>Product Price</label>
<input type="text" name="pPrice" value="${prod.price }" required/>
<label>Product Stock</label>
<input type="text" name="pStock" value="${prod.stock }" required/>
<label>Product Category</label>
<select name="pCategory">
<option value="0">----Select Category----</option> 
<c:forEach items="${catList}" var="cate"> 
<option value="${cate.cid}">${cate.name}</option>
</c:forEach>
</select>
<select name="pSupplier">
<option value="0">----Select Supplier----</option> 
<c:forEach items="${satList}" var="sate"> 
<option value="${sate.sid}">${sate.supplierName}</option>
</c:forEach>
</select>
<tr><td>Image</td><br>
<td><input type="file" name="file"/></td></tr>
<button class="btn btn-lg btn-primary" type="update">Update</button>
</form>
</div>
 

</body>
</html>

