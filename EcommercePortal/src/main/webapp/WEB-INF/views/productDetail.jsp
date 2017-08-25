<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    

		
		
		
<title>Product Detail</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	
	
	
	<div class="container">
	<div class="page-header"style="margin-top: 80px;">
  <h1>Product Detail </h1>
</div>
	<div class="jumbotron" style="margin-top: 50px;">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="${pageContext.request.contextPath }/resources/${product.imgName}" height="300" width="250" /></div>
						
						</div>
						
						
					</div>
					
			
					<div class="details col-md-6">
					<div class="row">
					<div class="col-md-6"><h3 class="product-title">Name :</h3></div>
						<div class="col-md-6"><h3 class="product-title"> ${product.name }</h3></div></div>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<%-- <h2>${product.name}</h2> --%>
						<%-- <h5>${product.supplier.supplierName}</h5> --%>
						<%-- <h5>${product.price}</h5> --%>
						<div class="row">
						<div class="col-md-6"><h4 class="product-Description">Description :</h3></div>
						<div class="col-md-6"><h4>${product.description}</h4></div>
						</div>
						<div class="row">
						<div class="col-md-6"><h4 class="product-title">By :</h4></div>
						<div class="col-md-6"><h4> ${product.brand.brandName}</h4></div>
						
						
						</div>
						<div class="row">
						<div class="col-md-6"><h4 class="price">Price :</h4></div>
						<div class="col-md-6"><h4 > ${product.price}</h4></div>
						</div>
						<form action="${pageContext.request.contextPath }/cart/addToCart" method="post">
						<input type="hidden" value="${product.id}" name="pId"/>
						<input type="hidden" value="${product.price}" name="pPrice"/>
						<input type="hidden" value="${product.name}" name="name"/>
						<input type="hidden" value="${product.imgName}" name="imagename"/>
						
						<security:authorize access="hasRole('ROLE_USER')">
						<div class="form-group">
						<label class="col-sm-2 control-label" >Quantity</label>
						<div class="col-sm-4">
						<input type="number" id="qty" class="form-control" name="quant" max="${product.stock }" min="1" step="1" required/>
						</div>
						<div class="col-sm-4">
							<button class="add-to-cart btn btn-primary" type="submit" value="" onclick="check()">add to cart</button>
							<!-- <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button> -->
						</div>
						</div>
						</security:authorize>
						</form>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	<script>
	
/* 	function check(){
		
		var quantity = document.getElementById("qty").value;
		
		if(quantity<=${product.stock}){
			
			return true;
			
		}else{
			
			alert( Quantity + " are not available in Stock , please select less quantity")
			return false;
		}
		
	} */
	$(document).ready(function() {
  $('input').focusout(function() {
    var max = $(this).val();
    var available = ${product.stock};
    if (max > available) {
      $(this).val(available);
      alert("Maximum is " +available);
    }
  });

});
</script>
</body>
</html>