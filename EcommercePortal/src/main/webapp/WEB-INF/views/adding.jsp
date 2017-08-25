<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <%@ include file="header.jsp" %>
    
   
<title>Admin Page</title>
</head>
<body>

	<%-- <jsp:include page="header.jsp"></jsp:include> --%>
	
		<div class="container">
		<br>
		<br>
		
			<div class="row">
			
			<div class="page-header">
  <h1>Manage Products <small>(Category , Brand , Supplier , Products)</small></h1>
</div>
				<div clss="col-md-8">

					<div class="row">
						
							<ul class="nav nav-tabs nav-justified">
								<li class="active"><a  href="#tab1primary" data-toggle="tab">Category</a></li>
								<li><a  href="#tab2primary" data-toggle="tab">Supplier</a></li>
								<li><a   href="#tab4primary" data-toggle="tab">Brand</a></li>
								<li><a  href="#tab3primary" data-toggle="tab">Products</a></li>
							</ul>
						

					</div>
					<div class="panel-body">
						<div class="tab-content">
							<div class="tab-pane fade in active" id="tab1primary">
								<form method="post" action="<c:url value="/admin/savecat"/>"
									class="form-signin">
									<span id="reauth-email" class="reauth-email"></span>
									
									<h4 class="input-title">Category Name</h4>
									<input class="form-control" type="text" name="name" required />
									<br>
									<button class="btn btn-lg btn-primary" type="submit">Save</button>
									<button class="btn btn-lg btn-primary" type="reset">Cancel</button>

								</form>

							</div>

							<div class="tab-pane fade" id="tab2primary">
								<form method="post" action="<c:url value="/admin/savesupp"/>"
									class="form-signin">
									<span id="reauth-email" class="reauth-email"></span>
									
									<h4 class="input-title">Supplier Name</h4>
									<input class="form-control" type="text" name="supplierName"	required />
									<button class="btn btn-lg btn-primary" type="submit">Save</button>
									<button class="btn btn-lg btn-primary" type="reset">Cancel</button>

								</form>

							</div>
							
							<div class="tab-pane fade" id="tab4primary">
								<form method="post" action="<c:url value="/admin/savebrand"/>"
										class="form-signin" enctype="multipart/form-data">
									<!-- <span id="reauth-email" class="reauth-email"></span>
									<h4 class="input-title">Supplier ID</h4>
									<input class="form-control" type="number" name="sid" required />
									<h4 class="input-title">Supplier Name</h4>
									<input class="form-control" type="text" name="supplierName"
										required /> -->
										<div class="form-group">
										 <label class="col-sm-2 control-label" for="textinput">Brand Name</label>
										 <div class="col-sm-12">
									<input class="form-control" type="text" name="brandName"
										required />
										</div>
										</div>
										<br><br>
										<div class="fileinput fileinput-new" data-providers="fileinput">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="textinput">Image</label>
											<div class="col-sm-12"><input class="form-control" type="file" name="file"	accept="image/*"></div>
										</div>

									</div>
									 <div class="form-group">
                                    <div class="col-sm-12 ">
                                    <br>
									   <button class="btn btn-lg btn-primary" type="submit">Save</button>
									   <button class="btn btn-lg btn-primary" type="reset">Cancel</button>
									</div>
								</div>
								</form>

							</div>

							<div class="tab-pane fade" id="tab3primary">
								<form method="post" action="<c:url value="/admin/saveProduct"/>"	class="form-signin" enctype="multipart/form-data">
									<span id="reauth-email" class="reauth-email"></span>

              <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Product Name :</label>
            <div class="col-sm-4">
             <input type="text" name="pname" required />
            </div>
            
             <label class="col-sm-2 control-label" for="textinput">Product Price :</label>
            <div class="col-sm-4">
             <input type="text" name="pPrice" />
            </div>
            </div>
            <br><br><br>
						 <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Product Description :</label>
            <div class="col-sm-4">
             <input type="text" name="pDescription" />
            </div>
            
             <label class="col-sm-2 control-label" for="textinput">Product Stock :</label>
            <div class="col-sm-4">
             <input type="text" name="pStock" />
            </div>
            </div>		
									
									

<br>
									<br>
									<div class="form-group">
										<label class="col-sm-2 control-label" >Select Category</label>
										<div class="col-sm-12"><select class="form-control" name="pCategory"
											required>
												<option>----Category----</option>
												<c:forEach items="${catList}" var="cat">
													<option value="${cat.cid}">${cat.name}</option>
												</c:forEach>
										</select>
										</div>
									</div>
									
									<br>

									<div class="form-group">
										<label class="col-sm-2 control-label" >Select Supplier</label>
										<div class="col-sm-12"><select class="form-control" name="pSupplier"
											required>
												<option>----Supplier----</option>
												<c:forEach items="${satList}" var="sate">
													<option value="${sate.sid}">${sate.supplierName}</option>
												</c:forEach>
										</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" >Select Brand</label>
										<div class="col-sm-12"><select class="form-control" name="pBrand"
											required>
												<option>----Brand----</option>
												<c:forEach items="${brdList}" var="bro">
													<option value="${bro.bid}">${bro.brandName}</option>
												</c:forEach>
										</select>
										</div>
									</div>
									<br>
									<div class="fileinput fileinput-new" data-providers="fileinput">
										<div class="form-group">
											<label class="col-sm-2 control-label" >Image</label>
											<div class="col-sm-12"><input class="form-control" type="file" name="file"	accept="image/*"></div>
										</div>

									</div>

<br>

                                  <div class="form-group">
                                    <div class="col-sm-12 ">
                                    <br>
									   <button class="btn btn-lg btn-primary" type="submit">Save</button>
									   <button class="btn btn-lg btn-primary" type="reset">Cancel</button>
									</div>
								</div>
								</form>

							</div>




						</div>
					</div>

				</div>
			</div>

		</div>
	
</body>
</html>