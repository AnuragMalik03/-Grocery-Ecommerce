<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
              pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script> -->
  
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
     <script src="assets/js/jquery.js"></script>
   <script src="assets/js/jquery.min.js"></script>
<title>Update Product</title>

<style>
body{
    background-color: #525252;
}
.centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<br><br><br><br>

<div class="container">
        <div class="row centered-form">
            		<div class="col-xs-6">
        <!-- <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4"> -->
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Update Product<small>Existing values</small></h3>
			 			</div>
			 			<div class="panel-body">
			 			<c:url value="/productUpdate" var="pro"></c:url>
			    		<form role="form" >
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label for="id" class="cols-sm-2 control-label">Product Id</label>
			                <input type="text" name="pid" value="${prod.id }" id="first_name" class="form-control input-sm" disabled  />
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label for="name" class="cols-sm-2 control-label">Product Name</label>
			    						<input type="text" name="pName" value="${prod.name }"  class="form-control input-sm" disabled />
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    			<label class="cols-sm-2 control-label">Product Description</label>
			    				<input  class="form-control input-sm" name="pDescription" value="${prod.description}" disabled />
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label class="cols-sm-2 control-label">Product Price</label>
			    						<input type="text" name="pPrice" value="${prod.price }"  class="form-control input-sm" disabled />
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label class="cols-sm-2 control-label">Product Stock</label>
			    						<input type="text" name="pStock" value="${prod.stock }"  class="form-control input-sm" disabled >
			    					</div>
			    				</div>
			    				
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label class="cols-sm-2 control-label">Product Category</label>
			    					<%-- <select name="pCategory" class="form-control input-sm" >
										<option value="">----Select Category----</option> 
												<c:forEach items="${catList}" var="cate"> 
														<option value="${cate.cid}">${cate.name}</option>
												</c:forEach>
									</select> --%>
			    						<input name="pCategory" value="${prod.category.name}" class="form-control input-sm" disabled  />
			    					</div>
			    				</div>
			    				
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label class="cols-sm-2 control-label">Product supplier</label>
			    					<%-- <select name="pSupplier" class="form-control input-sm">
											<option value="0">----Select Supplier----</option> 
												<c:forEach items="${satList}" var="sate"> 
														<option value="${sate.sid}">${sate.supplierName}</option>
												</c:forEach>
									</select> --%>
			    				 <input type="text" name="pStock" value="${prod.supplier.supplierName}"  class="form-control input-sm" disabled /> 
			    					</div>
			    				</div>
			    				
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label class="cols-sm-2 control-label">Product Brand</label>
			    					<%-- <select name="pSupplier" class="form-control input-sm">
											<option value="0">----Select Supplier----</option> 
												<c:forEach items="${satList}" var="sate"> 
														<option value="${sate.sid}">${sate.supplierName}</option>
												</c:forEach>
									</select> --%>
			    				 <input type="text" name="pStock" value="${prod.brand.brandName}"  class="form-control input-sm" disabled /> 
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    				<div class="form-group">
			    			    <label class="cols-sm-2 control-label">Image</label>
			    				<input  class="form-control input-sm" type="text" name="file" value="${prod.imgName }" disabled/>
			    			   </div>
			    				</div>
			    			</div>
			    			
			    			<button type="update"  class="btn btn-info btn-block" disabled>Update</button>
			    		
			    		</form>
			    	</div>
	    		</div>
    		<!-- </div> -->
    		</div>
        <div class="col-xs-6">
        <!-- <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4"> -->
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Update Product<small>Enter all fields</small></h3>
			 			</div>
			 			<div class="panel-body">
			 			<c:url value="/productUpdate" var="pro"></c:url>
			    		<form role="form" action="productUpdate" method="post" enctype="multipart/form-data">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label for="id" class="cols-sm-2 control-label">Product Id</label>
			                <input type="text" name="pid" value="${prod.id }" id="first_name" class="form-control input-sm" />
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label for="name" class="cols-sm-2 control-label">Product Name</label>
			    						<input type="text" name="pName" value="${prod.name }"  class="form-control input-sm" required/>
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    			<label class="cols-sm-2 control-label">Product Description</label>
			    				<input  class="form-control input-sm" name="pDescription" value="${prod.description}" required>
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label class="cols-sm-2 control-label">Product Price</label>
			    						<input type="text" name="pPrice" value="${prod.price }"  class="form-control input-sm" required/>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label class="cols-sm-2 control-label">Product Stock</label>
			    						<input type="text" name="pStock" value="${prod.stock }"  class="form-control input-sm" required>
			    					</div>
			    				</div>
			    				
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label class="cols-sm-2 control-label">Product Category</label>
			    					<select name="pCategory" class="form-control input-sm" >
										<option value="">----Select Category----</option> 
												<c:forEach items="${catList}" var="cate"> 
														<option value="${cate.cid}">${cate.name}</option>
												</c:forEach>
									</select>
			    						<%-- <input type="text" name="pStock" value="${prod.stock }"  class="form-control input-sm" required> --%>
			    					</div>
			    				</div>
			    				
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label class="cols-sm-2 control-label">Product supplier</label>
			    					<select name="pSupplier" class="form-control input-sm">
											<option value="">----Select Supplier----</option> 
												<c:forEach items="${satList}" var="sate"> 
														<option value="${sate.sid}">${sate.supplierName}</option>
												</c:forEach>
									</select>
			    						<%-- <input type="text" name="pStock" value="${prod.stock }"  class="form-control input-sm" required> --%>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label class="cols-sm-2 control-label">Product Brand</label>
			    					<select name="pBrand" class="form-control input-sm">
											<option value="">----Select Brand----</option> 
												<c:forEach items="${brdList}" var="brand"> 
														<option value="${brand.bid}">${brand.brandName}</option>
												</c:forEach>
									</select>
			    						<%-- <input type="text" name="pStock" value="${prod.stock }"  class="form-control input-sm" required> --%>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    				<div class="form-group">
			    			    <label class="cols-sm-2 control-label">Image</label>
			    				<input  class="form-control input-xs" type="file" name="file" required/>
			    			   </div>
			    				</div>
			    			</div>
			    			
			    			<button type="update"  class="btn btn-info btn-block">Update</button>
			    		
			    		</form>
			    	</div>
	    		</div>
    		<!-- </div> -->
    		</div>

    	</div>
    	
    </div>
<%-- <div class="container">

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
</div> --%>
 

</body>
</html>

