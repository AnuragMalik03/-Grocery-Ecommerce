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
<title>Invoice Page</title>

<style type="text/css">

.invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}
</style>


</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<br>
	<br>
	
	<div class="container">
    <div class="row">
        <div class="col-xs-12">
        	<div class="invoice-title">
    			<h2>Invoice</h2><h3 class="pull-right">Order # ${order.orderId }</h3>
    		</div>
    		<hr>
    		<div class="row">
    	
    			<div class="col-xs-6">
    				<address>
    				<strong>Billed To:</strong><br>
    					${orderDetails.name}<br>
    					${orderDetails.addrs1}<br>
    					${orderDetails.addrs2}<br>
    					${orderDetails.city} , ${orderDetails.state}<br>
    					
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
        			<strong>Shipped To:</strong><br>
    					${list.shipName }<br>
    					${list.shipadd1 }<br>
    					${list.shipcity }<br>
    					${list.shipstate }, ${list.shipzip }
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong>Payment Method:</strong><br>
    					${order.payment}<br>
    					${order.user}
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong>Order Date:</strong><br>
    					March 7, 2014<br><br>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong>Item</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>Quantity</strong></td>
        							<td class="text-right"><strong>Totals</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    					 <c:forEach var="c" items="${cart }">
    							<tr>
    							
    								<td><c:out value="${c.cartProductName }"></c:out></td>
    								<td class="text-center">$<c:out value="${c.cartPrice }"></c:out></td>
    								<td class="text-center"><c:out value="${c.cartQuantity }"></c:out></td>
    								<td class="text-right">$<c:out value="${c.cartQuantity * c.cartPrice }"></c:out></td>
    								<c:set var="gtot" value="${gtot +  c.cartQuantity * c.cartPrice}"></c:set>
    							</tr>
    							</c:forEach>
                             <tr>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line text-center"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right">$<c:out value="${gtot }"></c:out></td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Shipping</strong></td>
    								
    								<td class="no-line text-right" id="ship"></td>
    								
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Total</strong></td>
    								<td class="no-line text-right" id="final">$</td>
    							</tr>
    						</tbody>
    					</table>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
</div>
<script type="text/javascript">

var total = ${gtot};
if (total < 500){
	
	
	document.getElementById('ship').innerHTML  ='$'+ 25 ;
	
	document.getElementById('final').innerHTML  ='$' +(25 +total);
	
}else{
	
	document.getElementById('ship').innerHTML  = '$'+ 0;
	document.getElementById('final').innerHTML  = '$' +total;
}
</script>
</body>
</html>