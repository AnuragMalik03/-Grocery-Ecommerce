<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="/resources/bootstrap.css">
<title>Admin Page</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class="container">

		<div class="page-header">

			<br>
		</div>

		<div class="container">
			<div class="row">
				<div clss="col-md-6">

					<div class="panel with-nav-tabs panel-primary">
						<div class="panel-heading">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab1primary" data-toggle="tab">Category</a></li>
								<li><a href="#tab2primary" data-toggle="tab">Supplier</a></li>
								<li><a href="#tab3primary" data-toggle="tab">Products</a></li>
							</ul>
						</div>

					</div>
					<div class="panel-body">
						<div class="tab-content">
							<div class="tab-pane fade in active" id="tab1primary">
								<form method="post" action="<c:url value="/savecat"/>"
									class="form-signin">
									<span id="reauth-email" class="reauth-email"></span>
									<h4 class="input-title">Category ID</h4>
									<input class="form-control" type="number" name="cid" required />
									<h4 class="input-title">Category Name</h4>
									<input class="form-control" type="text" name="name" required />
									<button class="btn btn-lg btn-primary" type="submit">Save</button>
									<button class="btn btn-lg btn-primary" type="reset">Cancel</button>

								</form>

							</div>

							<div class="tab-pane fade" id="tab2primary">
								<form method="post" action="<c:url value="/savesupp"/>"
									class="form-signin">
									<span id="reauth-email" class="reauth-email"></span>
									<h4 class="input-title">Supplier ID</h4>
									<input class="form-control" type="number" name="sid" required />
									<h4 class="input-title">Supplier Name</h4>
									<input class="form-control" type="text" name="supplierName"
										required />
									<button class="btn btn-lg btn-primary" type="submit">Save</button>
									<button class="btn btn-lg btn-primary" type="reset">Cancel</button>

								</form>

							</div>

							<div class="tab-pane fade" id="tab3primary">
								<form method="post" action="<c:url value="/saveProduct"/>"	class="form-signin" enctype="multipart/form-data">
									<span id="reauth-email" class="reauth-email"></span>


									<tr>
										<td>Product Name :</td>
										<td><input type="text" name="pname" required /></td>
									</tr>
									<tr>
										<td>Product Price :</td>
										<td><input type="text" name="pPrice" /></td>
									</tr>
									<tr>
										<td>Product Description :</td>
										<td><input type="text" name="pDescription" /></td>
									</tr>
									<tr>
										<td>Product Stock :</td>
										<td><input type="text" name="pStock" /></td>
									</tr>

									<div class="form-group">
										<td>Select Category</td>
										<td><select class="form-control" name="pCategory"
											required>
												<option>----Category----</option>
												<c:forEach items="${catList}" var="cat">
													<option value="${cat.cid}">${cat.name}</option>
												</c:forEach>
										</select>
									</div>

									<div class="form-group">
										<td>Select Supplier</td>
										<td><select class="form-control" name="pSupplier"
											required>
												<option>----Supplier----</option>
												<c:forEach items="${satList}" var="sate">
													<option value="${sate.sid}">${sate.supplierName}</option>
												</c:forEach>
										</select>
									</div>
									<br>
									<div class="fileinput fileinput-new" data-providers="fileinput">
										<tr>
											<td>Image</td>
											<td><input class="form-control" type="file" name="file"	accept="image/*"></td>
										</tr>

									</div>




									<button class="btn btn-lg btn-primary" type="submit">Save</button>
									<button class="btn btn-lg btn-primary" type="reset">Cancel</button>
								</form>

							</div>




						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
</body>
</html>