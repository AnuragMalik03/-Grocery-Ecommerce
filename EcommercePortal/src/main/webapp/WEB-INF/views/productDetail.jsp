<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script> -->
  
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
     <script src="assets/js/jquery.js"></script>
   <script src="assets/js/jquery.min.js"></script>
		
		
		
<title>Product Detail</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<br>
	<br>
	<br>
	<br>
	
	<div class="container">
	<div class="jumbotron">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="${pageContext.request.contextPath }/resources/${product.imgName}" height="252" width="400" /></div>
						 <!--  <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div> -->
						</div>
						
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">${product.name }</h3>
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
						<div class="product-description">
						<%-- <h2>${product.name}</h2> --%>
						<h4>${product.description}</h4>
						<h5>${product.supplier.supplierName}</h5>
						<h5>${product.brand.brandName}</h5>
						<%-- <h5>${product.price}</h5> --%>
						
						</div>
						<!-- <p >Suspendisse quos? Tempus cras iure temporibus? Eu laudantium cubilia sem sem! Repudiandae et! Massa senectus enim minim sociosqu delectus posuere.</p> -->
						<h4 class="price">current price: <span>${product.price}</span></h4>
						<!-- <p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p> -->
						<!-- <h5 class="sizes">sizes:
							<span class="size" data-toggle="tooltip" title="small">s</span>
							<span class="size" data-toggle="tooltip" title="medium">m</span>
							<span class="size" data-toggle="tooltip" title="large">l</span>
							<span class="size" data-toggle="tooltip" title="xtra large">xl</span>
						</h5> -->
						<!-- <h5 class="colors">colors:
							<span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
							<span class="color green"></span>
							<span class="color blue"></span>
						</h5> -->
						<form action="${pageContext.request.contextPath }/cart/addToCart" method="post">
						<input type="hidden" value="${product.id}" name="pId"/>
						<input type="hidden" value="${product.price}" name="pPrice"/>
						<input type="hidden" value="${product.name}" name="name"/>
						<input type="hidden" value="${product.imgName}" name="imagename"/>
						
						<security:authorize access="hasRole('ROLE_USER')">
						<label>Quantity</label>
						<input type="number" id="qty" class="form-control" name="quant" max="${product.stock }" min="1" step="1" required/>
						
						<div class="action">
							<button class="add-to-cart btn btn-default" type="submit" value="" onclick="check()">add to cart</button>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
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
      $(this).val(available-1);
      alert("Maximum is " +available);
    }
  });

});
</script>
</body>
</html>