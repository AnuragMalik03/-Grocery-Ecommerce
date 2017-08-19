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
function checked(){
	
	var check = document.getElementById("checkbox").checked;
	var first =document.getElementById("checkbox").checked
	if(check==true){
		sfirst.value = first.value;
	}
	else{
		sfirst.value="";
		
	}
}
</script>

</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<br>
<br>
<br>  
                    
<div class="col-md-12  col-sm-12  col-xs-12 " style="background:#fff; padding:30px;">

            
                        
                                
                                         
      <form class="form-horizontal" action="${pageContext.request.contextPath }/cart/invoiceprocess" method="post" role="form" >
        <fieldset>
<div class="row">
<div class="col-md-6 shipping col-sm-6 col-xs-12">
         
          <!-- Form Name -->
          <legend>Address Details</legend>
          <input type="hidden" placeholder="First Name"  value="${pageContext.request.userPrincipal.name}" name="userEmail" class="form-control">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">First Name</label>
            <div class="col-sm-4">
              <input type="text" name="first" id="first" placeholder="First Name" value="${user.name }" class="form-control">
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
              <input type="text" name="address"  placeholder="Address Line 1" value="${user.addrs1 }" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 2</label>
            <div class="col-sm-10">
              <input type="text" name="add" placeholder="Address Line 2" value="${user.addrs2 }" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" placeholder="City" name="city" value="${user.city }" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
              <input type="text" placeholder="State" name="state" value="${user.state }" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" placeholder="Post Code"  name="pincode"  value="${user.zip }" class="form-control">
            </div>
          </div>


     
                          <div class="form-group">
                            <div class="pull-right">
                           <input class="coupon_question" type="checkbox" onclick="checked()" id="checkbox"  name="coupon_question" value="1">
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
         
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">First Name</label>
            <div class="col-sm-4">
              <input type="text" name="sfirst" id="sfirst" placeholder="First Name" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Last Name</label>
            <div class="col-sm-4">
              <input type="text" name="slast" placeholder="Last Name" class="form-control">
            </div>
          </div>

        
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 1</label>
            <div class="col-sm-10">
              <input type="text" name="sadd1" placeholder="Address Line 1" class="form-control">
            </div>
          </div>

         
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 2</label>
            <div class="col-sm-10">
              <input type="text" name="sadd2" placeholder="Address Line 2" class="form-control">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" placeholder="City" name="scity" class="form-control">
            </div>
          </div>

         
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
              <input type="text" placeholder="State" name="sstate" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" placeholder="Post Code" name="spincode" class="form-control">
            </div>
          </div>

          <div class="form-group">
          <div class="col-md-12">
               <button class="btn btn-primary pull-right">   Continue  </button>
          </div>
            <!-- <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                <button type="submit" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-primary">Save</button>
              </div>
            </div> -->
          </div> 
</div>
</div> 
        </fieldset>
        
     </form>
   
    
 </div>
    
</body>
</html>