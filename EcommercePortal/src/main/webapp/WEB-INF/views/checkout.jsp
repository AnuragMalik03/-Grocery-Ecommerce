<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
     <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script> -->
   <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
     <script src="assets/js/jquery.js"></script>
   <script src="assets/js/jquery.min.js"></script> 

<title>Cart</title>
<script type="text/javascript">
function check(){
		
	if(document.getElementById('checkbox').checked == true){
		document.getElementById('c1').value = document.getElementById('s1').value;
		document.getElementById('c2').value = document.getElementById('s2').value;
		document.getElementById('c3').value = document.getElementById('s3').value;
		document.getElementById('c4').value = document.getElementById('s4').value;
		document.getElementById('c5').value = document.getElementById('s5').value;
		document.getElementById('c6').value = document.getElementById('s6').value;
	}
	else{
		
		document.getElementById('c1').value = "";
		document.getElementById('c2').value = "";
		document.getElementById('c3').value = "";
		document.getElementById('c4').value = "";
		document.getElementById('c5').value = "";
		document.getElementById('c6').value = "";
		
	}
	
		
	}

</script>
<script type="text/javascript">

function payment(){
	console.log('reached in side payment ');
	    var carde = document.getElementById('radio2').checked ;
		var code = document.getElementById('radio1').checked;
		console.log('got id frm  payment ');
		
	    if ( code == false && carde == false ) {
	    	
	    	alert('Select Payment Option');
	    	console.log('inside if of  payment ');
	    	return false;
	    	
	       
	    }else{
	    	
	    	console.log('inside of else  payment ');
	    	alert('payment succesful')
	    	return true;
	    	
	    }
	    
}
</script>
	    
<script type="text/javascript">

function clickmethod(){
	console.log('inside of method ');
	    var card = document.getElementById('radio2').checked ;
		var cod = document.getElementById('radio1').checked;
		var disp = document.getElementById('pay');
		var paym = document.getElementById('payment');
	    
		if(card == true){
			console.log('inside if of method ');
			
	    	 disp.style.display = 'block';
	    	paym.value = 'CARD'; 
	    	 document.getElementById('cardNumber').required = true ;
	    	 document.getElementById('expiryMonth').required = true ;
	    	 document.getElementById('expiryYear').required = true ;
	    	 document.getElementById('cvv').required = true ; 
	    	 
	    }
             	    	
	   
	    	
}

</script>

<script type="text/javascript">

function clickCod(){
	
	var cod = document.getElementById('radio1').checked;
	var disp = document.getElementById('pay');
	var paym = document.getElementById('payment');
	if(cod == true){
		
		console.log('inside  of else method ');
    	
    	disp.style.display = 'none';
    	
    	paym.value = 'COD';
    	
    	 document.getElementById('cardNumber').required = false ;
    	 document.getElementById('expiryMonth').required = false ;
    	 document.getElementById('expiryYear').required = false ;
    	 document.getElementById('cvv').required = false ; 
	}
}

</script> 
<style type="text/css">
.panel-title {display: inline;font-weight: bold;}
.pl-ziro { padding-left: 0px; }
</style>

</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<br>
<br>
<br>  
                    
<div class="col-md-12  col-sm-12  col-xs-12 " style="background:#fff; padding:30px;">

            
                        
                                
                                         
<form class="form-horizontal" action="${pageContext.request.contextPath }/cart/invoiceprocess" method="post"  onsubmit="return payment();" name="myform" >
        
        <fieldset>
        <c:set var="gtot" value="0"></c:set>
        <c:forEach var="c" items="${cart }">
        <c:set var="gtot" value="${gtot + c.cartPrice * c. cartQuantity}"> </c:set>
         </c:forEach>
<div class="row">
<div class="col-md-6 shipping col-sm-6 col-xs-12">

         
          <!-- Form Name -->
          <legend>Billing Address</legend>
         
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">First Name</label>
            <div class="col-sm-4">
              <input type="text" name="first" id="s1" placeholder="First Name" value="${user.name }" class="form-control">
            </div>

             <label class="col-sm-2 control-label" for="textinput">Last Name</label>
            <div class="col-sm-4">
              <input type="text" name="last" placeholder="Last Name"  class="form-control">
            </div>
          </div> 

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 1</label>
            <div class="col-sm-10">
              <input type="text" name="address" id="s2" placeholder="Address Line 1" value="${user.addrs1 }" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 2</label>
            <div class="col-sm-10">
              <input type="text" name="add" id="s3" placeholder="Address Line 2" value="${user.addrs2 }" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" placeholder="City" id="s4" name="city" value="${user.city }" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
              <input type="text" placeholder="State" id="s5" name="state" value="${user.state }" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" placeholder="Post Code" id="s6" name="pincode"  value="${user.zip }" class="form-control">
            </div>
          </div>


     
                          <div class="form-group">
                            <div class="pull-right">
                           <input class="coupon_question" type="checkbox" id="checkbox" onclick="check()" name="checkbox" >
                                        <span class="item-text">Check Shipping address</span>
                                        </div>
                                        
                                        </div> 
                                        
    
                    </div>
            
     <!--  <div class="col-md-4 col-md-offset-4">
     
     
      <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address Line 1</label>
            <div class="col-sm-10">
              <input type="text" name="address1"  placeholder="Address Line 1" class="form-control">
            </div>
          </div>
     
      <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
              <input type="text" placeholder="State" name="state" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" placeholder="Post Code"  name="pincode" class="form-control">
            </div>
          </div>
     
     </div> --> 
        
       
<div class="col-md-6 shipping col-sm-6 col-xs-12">
          <!-- Form Name -->
          <legend>shipping Address</legend>
          <input type="hidden" placeholder="First Name"  value="" name="userEmail" class="form-control">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">First Name</label>
            <div class="col-sm-4">
              <input type="text" name="sname" id="c1" placeholder="First Name" class="form-control" required>
            </div>

            <label class="col-sm-2 control-label" for="textinput">Last Name</label>
            <div class="col-sm-4">
              <input type="text" name="slast" placeholder="Last Name" class="form-control">
            </div>
          </div>

        
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 1</label>
            <div class="col-sm-10">
              <input type="text" name="sadd1" id="c2" placeholder="Address Line 1" class="form-control" required>
            </div>
          </div>

         
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 2</label>
            <div class="col-sm-10">
              <input type="text" name="sadd2" id="c3" placeholder="Address Line 2" class="form-control" required>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" placeholder="City" id="c4" name="scity" class="form-control" required>
            </div>
          </div>

         
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
              <input type="text" placeholder="State" id="c5" name="sstate" class="form-control" required>
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" placeholder="Post Code" id="c6" name="szip" class="form-control" required>
            </div>
          </div>

 <div class="form-group">
                            <div class="pull-right">
                            <h4 class="item-text">Select Payment Options : -</h4>
                            <span>COD : </span>
                           <input class="coupon_question" type="radio"  id="radio1" onclick="clickCod();" name="pay" value="COD" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       <span>CARD : </span>
                           <input class="coupon_question" type="radio"  id="radio2" onclick="clickmethod();" name="pay" value="Card"/>
                                        
                                        </div>
                                        
 </div> 
 <input type="hidden" id="payment" name="payment" value="COD">
   
</div>



 <div class="col-xs-12 col-md-4 " id="pay" style="display:none" >
         <div class="panel panel-default">
               <div class="panel-heading">
                    <h3 class="panel-title">
                        Payment Details
                    </h3>
               </div>
              <div class="panel-body">
                  <div class="col-xs-12 col-md-12">
                    <div class="form-group">
                           <label for="cardNumber">CARD NUMBER</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="cardNumber" name="cardNumber" placeholder="Valid Card Number"  autofocus />
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-7 col-md-7">
                            <div class="form-group">
                                <label for="expityMonth">EXPIRY DATE</label><br>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="month" id="expityMonth" placeholder="MM"  />
                                </div>
                                <div class=" col-lg-6">
                                    <input type="text" class="form-control" name="year" id="expityYear" placeholder="YY"  />
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-md-5 ">
                            <div class="form-group">
                                <label for="cvCode">CV CODE</label>
                                <input type="password" class="form-control" name="cvv" id="cvv" placeholder="CV"  />
                            </div>
                        </div>
                     </div>
                  </div>
                   
                </div>
           </div>
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#"><span class="badge pull-right"><span class="glyphicon glyphicon-usd"></span>${gtot}</span> Final Payment</a>
                </li>
            </ul>
            <input type="hidden" value="${gtot }" name="total"/>
            <br/>
           <!--  <div  style=" text-align: center">
       <button value="" class="btn btn-success btn-lg btn-block" role="button">Pay</button> 
       </div>
             -->
</div>

<input type="hidden" name="productId" value="" class="form-control" >
<input type="hidden" name="pName"  class="form-control" >
<input type="hidden" name="stock" class="form-control">
<input type="hidden" name="price"  class="form-control" >
<input type="hidden" name="description"  class="form-control" >
<input type="hidden" name="cid"  class="form-control" >
<input type="hidden" name="cid"  class="form-control" >

<button  type="submit" class="btn btn-success btn-lg btn-block" role="submit">Continue..</button>

</div> 
        </fieldset>
        
     </form>
   
    
 </div>
    
</body>
</html>