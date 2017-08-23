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
 <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
     <script src="assets/js/jquery.js"></script>
   <script src="assets/js/jquery.min.js"></script>

<title>Cart</title>

<style type="text/css">

html,body,.wrapper{
    background: #f7f7f7;
}
.steps {
    margin-top: -41px;
    display: inline-block;
    float: right;
    font-size: 16px
}
.step {
    float: left;
    background: white;
    padding: 7px 13px;
    border-radius: 1px;
    text-align: center;
    width: 100px;
    position: relative
}
.step_line {
    margin: 0;
    width: 0;
    height: 0;
    border-left: 16px solid #fff;
    border-top: 16px solid transparent;
    border-bottom: 16px solid transparent;
    z-index: 1008;
    position: absolute;
    left: 99px;
    top: 1px
}
.step_line.backline {
    border-left: 20px solid #f7f7f7;
    border-top: 20px solid transparent;
    border-bottom: 20px solid transparent;
    z-index: 1006;
    position: absolute;
    left: 99px;
    top: -3px
}
.step_complete {
    background: #357ebd
}
.step_complete a.check-bc, .step_complete a.check-bc:hover,.afix-1,.afix-1:hover{
    color: #eee;
}
.step_line.step_complete {
    background: 0;
    border-left: 16px solid #357ebd
}
.step_thankyou {
    float: left;
    background: white;
    padding: 7px 13px;
    border-radius: 1px;
    text-align: center;
    width: 100px;
}
.step.check_step {
    margin-left: 5px;
}
.ch_pp {
    text-decoration: underline;
}
.ch_pp.sip {
    margin-left: 10px;
}
.check-bc,
.check-bc:hover {
    color: #222;
}
.SuccessField {
    border-color: #458845 !important;
    -webkit-box-shadow: 0 0 7px #9acc9a !important;
    -moz-box-shadow: 0 0 7px #9acc9a !important;
    box-shadow: 0 0 7px #9acc9a !important;
    background: #f9f9f9 url(../images/valid.png) no-repeat 98% center !important
}

.btn-xs{
    line-height: 28px;
}

/*login form*/
.login-container{
    margin-top:30px ;
}
.login-container input[type=submit] {
  width: 100%;
  display: block;
  margin-bottom: 10px;
  position: relative;
}

.login-container input[type=text], input[type=password] {
  height: 44px;
  font-size: 16px;
  width: 100%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}

.login-container input[type=text]:hover, input[type=password]:hover {
  border: 1px solid #b9b9b9;
  border-top: 1px solid #a0a0a0;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}

.login-container-submit {
  /* border: 1px solid #3079ed; */
  border: 0px;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1); 
  background-color: #357ebd;/*#4d90fe;*/
  padding: 17px 0px;
  font-family: roboto;
  font-size: 14px;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.login-container-submit:hover {
  /* border: 1px solid #2f5bb7; */
  border: 0px;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #357ae8;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.login-help{
  font-size: 12px;
}

.asterix{
    background:#f9f9f9 url(../images/red_asterisk.png) no-repeat 98% center !important;
}

/* images*/
ol, ul {
  list-style: none;
}
.hand {
  cursor: pointer;
  cursor: pointer;
}
.cards{
    padding-left:0;
}
.cards li {
  -webkit-transition: all .2s;
  -moz-transition: all .2s;
  -ms-transition: all .2s;
  -o-transition: all .2s;
  transition: all .2s;
  background-image: url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
  background-position: 0 0;
  float: left;
  height: 32px;
  margin-right: 8px;
  text-indent: -9999px;
  width: 51px;
}
.cards .mastercard {
  background-position: -51px 0;
}
.cards li {
  -webkit-transition: all .2s;
  -moz-transition: all .2s;
  -ms-transition: all .2s;
  -o-transition: all .2s;
  transition: all .2s;
  background-image: url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
  background-position: 0 0;
  float: left;
  height: 32px;
  margin-right: 8px;
  text-indent: -9999px;
  width: 51px;
}
.cards .amex {
  background-position: -102px 0;
}
.cards li {
  -webkit-transition: all .2s;
  -moz-transition: all .2s;
  -ms-transition: all .2s;
  -o-transition: all .2s;
  transition: all .2s;
  background-image: url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
  background-position: 0 0;
  float: left;
  height: 32px;
  margin-right: 8px;
  text-indent: -9999px;
  width: 51px;
}
.cards li:last-child {
  margin-right: 0;
}
/* images end */



/*
 * BOOTSTRAP
 */
.container{
    border: none;
}
.panel-footer{
    background:#fff;
}
.btn{
    border-radius: 1px;
}
.btn-sm, .btn-group-sm > .btn{
    border-radius: 1px;
}
.input-sm, .form-horizontal .form-group-sm .form-control{
    border-radius: 1px;
}

.panel-info {
    border-color: #999;
}

.panel-heading {
    border-top-left-radius: 1px;
    border-top-right-radius: 1px;
}
.panel {
    border-radius: 1px;
}
.panel-info > .panel-heading {
    color: #eee;
    border-color: #999;
}
.panel-info > .panel-heading {
    background-image: linear-gradient(to bottom, #555 0px, #888 100%);
}

hr {
    border-color: #999 -moz-use-text-color -moz-use-text-color;
}

.panel-footer {
    border-bottom-left-radius: 1px;
    border-bottom-right-radius: 1px;
    border-top: 1px solid #999;
}

.btn-link {
    color: #888;
}

hr{
    margin-bottom: 10px;
    margin-top: 10px;
}

/** MEDIA QUERIES **/
@media only screen and (max-width: 989px){
    .span1{
        margin-bottom: 15px;
        clear:both;
    }
}

@media only screen and (max-width: 764px){
    .inverse-1{
        float:right;
    }
}

@media only screen and (max-width: 586px){
    .cart-titles{
        display:none;
    }
    .panel {
        margin-bottom: 1px;
    }
}

.form-control {
    border-radius: 1px;
}

@media only screen and (max-width: 486px){
    .col-xss-12{
        width:100%;
    }
    .cart-img-show{
        display: none;
    }
    .btn-submit-fix{
        width:100%;
    }
    
}
/*
@media only screen and (max-width: 777px){
    .container{
        overflow-x: hidden;
    }
}*/
</style>
<style>

.stepwizard-step p {
    margin-top: 10px;
}

.stepwizard-row {
    display: table-row;
}

.stepwizard {
    display: table;
    width: 100%;
    position: relative;
}

.stepwizard-step button[disabled] {
    opacity: 1 !important;
    filter: alpha(opacity=100) !important;
}

.stepwizard-row:before {
    top: 14px;
    bottom: 0;
    position: absolute;
    content: " ";
    width: 100%;
    height: 1px;
    background-color: #ccc;
    z-order: 0;

}

.stepwizard-step {
    display: table-cell;
    text-align: center;
    position: relative;
}

.btn-circle {
  width: 30px;
  height: 30px;
  text-align: center;
  padding: 6px 0;
  font-size: 12px;
  line-height: 1.428571429;
  border-radius: 15px;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<br>
<br>
<br>

<div class="container">
<div class="stepwizard">
    <div class="stepwizard-row setup-panel">
        <div class="stepwizard-step">
            <a href="#step-1" type="button" class="btn btn-primary rounded">1</a>
            <p>Cart Items</p>
        </div>
        <div class="stepwizard-step">
            <a href="#step-2" type="button" class="btn btn-default rounded" disabled="disabled">2</a>
            <p>Checkout</p>
        </div>
        <div class="stepwizard-step">
            <a href="#step-3" type="button" class="btn btn-default rounded" disabled="disabled">3</a>
            <p>Invoice</p>
        </div>
    </div>
</div>

    <div class="row setup-content" id="step-1">
   
       
     
            <div class="col-sm-12">
        <table class="table table-hover table-bordered " id="category" class="display" border="1"  align="center">
        
	<tr>
        <th>Sr No.</th><th>Name</th><th>Quantity</th><th>Price</th><th>Image</th><th>total</th><th class="span2">Action</th></tr>
       
       
	<c:if test="${empty cartInfo }"><tr><td colspan="9"  align="center">No Record Exists</td></tr></c:if>

	<c:forEach var="c" varStatus="st" items="${cartInfo }">
	<tr>
	
	<td><c:out value="${st.count }"></c:out></td>
	<td><c:out value="${c.cartProductName }"></c:out></td>
	<td><c:out value="${c.cartQuantity }"></c:out></td>
	<td><c:out value="${c.cartPrice }"></c:out></td>
	
	
	<td><img src="${pageContext.request.contextPath }/resources/${c.cartImage}" height="60px" width="60px"></td>
	<td><c:out value="${c.cartQuantity * c.cartPrice }"></c:out></td>
	<td>
	          <a class="btn btn-danger" role="button"  href="<c:url value="/cart/deleteCart/${c.cartId}"/>">Delete</a></td>
	       
	          <c:set var="gtot" value="${gtot + c.cartPrice * c.cartQuantity }"></c:set>
	</tr>
	</c:forEach>
	
	 <tr>
	<td colspan="2">Grand Total</td>
	<td colspan="3"></td>
	
	<td colspan="2"><c:out value="${gtot }"></c:out></td>
	
	 
	</tr>  
	
	
	
               <!--  <div class="form-group">
                    <label class="control-label">First Name</label>
                    <input  maxlength="100" type="text" required="required" class="form-control" placeholder="Enter First Name"  />
                </div>
                <div class="form-group">
                    <label class="control-label">Last Name</label>
                    <input maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Last Name" />
                </div> -->
               <tfoot>
               <tr>
               <c:if test="${not empty cartInfo }">
               <td><a class="btn btn-primary  btn-lg pull-right" role="button"  href="${pageContext.request.contextPath }/cart/checkout">Submit</a></td>
               <!-- <td><button class="btn btn-primary nextbtn btn-lg pull-right" type="button">Next</button></td> -->
               </c:if>
               </tr>
               </tfoot>
                
                </table>
           
        </div>
    </div>
    <div class="row setup-content" id="step-2">
      <div class="container-fluid">
  <div class="page-header">
    <h1>Checkout <small>Step 2 of 3</small></h1>
  </div>
  <div class="row">
    <div class="col-xs-12">
      <div class="well">
        &hellip;
      </div>
      <div class="checkbox">
        <label data-toggle="collapse" data-target="#promo">
          <input type="checkbox"> I have a promo code
        </label>
      </div>
      <div class="collapse" id="promo">
        <div class="form-group">
          <label for="inputpromo" class="control-label">Promo Code</label>
          <div class="form-inline">
            <input type="text" class="form-control" id="inputpromo" placeholder="Enter promo code">
            <button class="btn btn-sm">Apply</button>
          </div>
        </div>
      </div>
      <h3>Ship my order to&hellip;</h3>
      <div class="list-group">
        <div class="list-group-item">
          <div class="list-group-item-heading">          
              <div class="row radio">
                <div class="col-xs-3">
                  <label>
                    <input type="radio" name="optionShipp" id="optionShipp1" value="option2">
                    1509 Latona St
                  </label>
                </div>
                <div class="col-xs-5">
                  <dl class="dl-small">
                    <dt>Miguel Perez</dt>
                    <dd>1509 Latona St, Philadelphia, PA 19146 </dd>
                  </dl>
                  <button class="btn btn-sm">Edit</button>
                  <button class="btn btn-sm btn-link">Delete this address</button>
                </div>
              </div>
          </div>
        </div>
        <div class="list-group-item">
          <div class="list-group-item-heading">          
              <div class="row">
                <div class="col-xs-3">
                  <div class="radio">
                    <label>
                      <input type="radio" name="optionShipp" id="optionShipp2" value="option2" checked>
                      A new address
                    </label>
                  </div>
                </div>
                <div class="col-xs-9">                      
                  <form role="form" class="">
                    <div class="form-group">
                      <label for="inputname">Name</label>
                      <input type="text" class="form-control form-control-large" id="inputname" placeholder="Enter name">
                    </div>
                    <div class="form-group">
                      <label for="inputAddress1">Street address 1</label>
                      <input type="text" class="form-control form-control-large" id="inputAddress1" placeholder="Enter address">
                    </div>
                    <div class="form-group">
                      <label for="inputAddress2">Street address 2</label>
                      <input type="text" class="form-control form-control-large" id="inputAddress2" placeholder="Enter address">
                    </div>
                    <div class="row">
                      <div class="col-xs-3">
                        <div class="form-group">
                          <label for="inputZip">ZIP Code</label>
                          <input type="text" class="form-control form-control-small" id="inputZip" placeholder="Enter zip">
                        </div>
                      </div>
                      <div class="col-xs-9">
                        <div class="form-group">
                          <label for="inputCity">City</label>
                          <input type="text" class="form-control" id="inputCity" placeholder="Enter city">
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputState" class="control-label">State</label>
                      <select class="form-control form-control-large">
                        <option>Select state</option>
                      </select>
                    </div>
                  </form>
                  <button class="btn btn-sm">Save Address</button>
                </div>
              </div>
          </div>
        </div>
      </div>
      <form role="form">
          <div class="checkbox">
            <label data-toggle="collapse" data-target="#gift">
              <input type="checkbox"> I'd like to include a gift message
            </label>
          </div>
          <div class="form-group collapse" id="gift">
            <label for="inputGift" class="control-label">Gift Message</label>
            <textarea class="form-control form-control-large" rows="3"></textarea>
            <p class="help-block">256 characters left</p>
          </div>
      </form>
      <h3>I'll pay with&hellip;</h3>
      <div class="list-group">
        <div class="list-group-item">
          <div class="list-group-item-heading">          
              <div class="row radio">
                <div class="col-xs-3">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2" checked>
                    My Visa Card
                  </label>
                </div>
                <div class="col-xs-9">
                  <div class="row">
                    <div class="col-xs-4">                      
                      <dl class="dl-small">
                        <dt>Credit Card Number</dt>
                        <dd>**********1111</dd>
                      </dl>
                    </div>
                    <div class="col-xs-2">
                      <dl class="dl-small">
                        <dt>Expiration</dt>
                        <dd>07/2016</dd>
                      </dl>
                    </div>
                    <div class="col-xs-6">
                      <dl class="dl-small">
                        <dt>Billing Address</dt>
                        <dd>1509 Latona St, Philadelphia, PA 19146 </dd>
                      </dl>
                    </div>
                  </div>
                  <button class="btn btn-sm">Edit</button>
                  <button class="btn btn-sm btn-link">Delete this card</button>
                </div>
              </div>
          </div>
        </div>
        <div class="list-group-item">
          <div class="list-group-item-heading">          
              <div class="row radio">
                <div class="col-xs-3">
                  <label data-toggl-e="collapse" data-target="#newcard">
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    A New Credit Card
                  </label>
                </div>
                <div class="col-xs-9">                      
                  <div class="media">
                    <a class="media-left" href="#">
                      <img src="https://lovewithfood.com/assets/credit_cards/cards-b3a7c7b8345355bf110ebedfd6401312.png" height="25" alt="" />
                    </a>
                    <div class="media-body" id="newcard">
                      We accept these credit cards.
                    </div>
                  </div>
                </div>
              </div>
          </div>
        </div>
        <div class="list-group-item">
          <div class="list-group-item-heading">          
              <div class="row radio">
                <div class="col-xs-3">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    PayPal
                  </label>
                </div>
                <div class="col-xs-9">                      
                  <div class="media">
                    <a class="media-left" href="#">
                      <img src="https://www.paypalobjects.com/webstatic/mktg/logo-center/PP_Acceptance_Marks_for_LogoCenter_76x48.png" height="25" alt="" />
                    </a>
                    <div class="media-body">
                      When you click "Place Order", you will be taken to the PayPal website.
                    </div>
                  </div>
                </div>
              </div>
          </div>
        </div>
      </div>
      <div class="well">
        <button type="button" class="btn btn-primary btn-lg btn-block">Place Order</button>
      </div>
    </div>
  </div>
</div>
    </div>
    <div class="setup-content" id="step-3">
            <div class="row">
              <div class="col-md-12">
    		<div class="invoice-title">
    		<h2>Invoice</h2><h3 class="text-right">Order # 12345</h3>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-md-6">
    				<address>
    				<strong>Billed To:</strong><br>
    					John Smith<br>
    					1234 Main<br>
    					Apt. 4B<br>
    					Springfield, ST 54321
    				</address>
    			</div>
    			<div class="col-md-6 text-right">
    				<address>
        			<strong>Shipped To:</strong><br>
    					Jane Smith<br>
    					1234 Main<br>
    					Apt. 4B<br>
    					Springfield, ST 54321
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-md-6">
    				<address>
    					<strong>Payment Method:</strong><br>
    					Visa ending **** 4242<br>
    					jsmith@email.com
    				</address>
    			</div>
    			<div class="col-md-6 text-right">
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
    		<div class="card card-default">
    			<div class="card-heading">
    				<h3 class="card-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="card-block">
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
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<tr>
    								<td>BS-200</td>
    								<td class="text-center">$10.99</td>
    								<td class="text-center">1</td>
    								<td class="text-right">$10.99</td>
    							</tr>
                                <tr>
        							<td>BS-400</td>
    								<td class="text-center">$20.00</td>
    								<td class="text-center">3</td>
    								<td class="text-right">$60.00</td>
    							</tr>
                                <tr>
            						<td>BS-1000</td>
    								<td class="text-center">$600.00</td>
    								<td class="text-center">1</td>
    								<td class="text-right">$600.00</td>
    							</tr>
    							<tr>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line text-center"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right">$670.99</td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Shipping</strong></td>
    								<td class="no-line text-right">$15</td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Total</strong></td>
    								<td class="no-line text-right">$685.99</td>
    							</tr>
    						</tbody>
    					</table>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
        
    </div>
</form>
</div>

<script>

$(document).ready(function () {

    var navListItems = $('div.setup-panel div a'),
            allWells = $('.setup-content'),
            allNextBtn = $('.nextBtn');

    allWells.hide();

    navListItems.click(function (e) {
        e.preventDefault();
        var $target = $($(this).attr('href')),
                $item = $(this);

        if (!$item.hasClass('disabled')) {
            navListItems.removeClass('btn-primary').addClass('btn-default');
            $item.addClass('btn-primary');
            allWells.hide();
            $target.show();
            $target.find('input:eq(0)').focus();
        }
    });

    allNextBtn.click(function(){
        var curStep = $(this).closest(".setup-content"),
            curStepBtn = curStep.attr("id"),
            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
            curInputs = curStep.find("input[type='text'],input[type='url']"),
            isValid = true;

        $(".form-group").removeClass("has-error");
        for(var i=0; i<curInputs.length; i++){
            if (!curInputs[i].validity.valid){
                isValid = false;
                $(curInputs[i]).closest(".form-group").addClass("has-error");
            }
        }

        if (isValid)
            nextStepWizard.removeAttr('disabled').trigger('click');
    });

    $('div.setup-panel div a.btn-primary').trigger('click');
});


$(document).ready(function() {
  $('input').focusout(function() {
    var max = $(this).val();
    if (max > 9) {
      $(this).val("9");
      alert("Maximum is 9");
    }
  });

});
</script> 

</body>
</html>