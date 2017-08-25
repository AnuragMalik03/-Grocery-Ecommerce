<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script> -->
  
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
     <script src="assets/js/jquery.js"></script>
   <script src="assets/js/jquery.min.js"></script>
   <link rel="stylesheet" href="assets/css/style.css">

<title>Registration From</title>
<style type="text/css">



.err{
color: red;
}
.err_bdr{
border: 1px solid red;
}
.bdr{
border : 1px solid gray;
}
</style>

<script type="text/javascript">



function check_info(){
	
	var pass = document.getElementById("password").value;
	var confirmPass = document.getElementById("confirmPassword").value;
	
	if(pass == confirmPass)
	{
		console.log('inside if');
		return true;
		
	}else{
		alert('Password did not match');
		
		return false;
	}
}

var icon = 's';
function change(){
	
	var pass = document.getElementById('password');
	var confirmPass = document.getElementById('confirmPassword');
	var showp = document.getElementById('eye');
	 
	if(icon == 's'){
		showp.innerHTML = '<i class="fa fa-eye-slash"></i>';
		pass.type = "text";
		icon = 'noS'
		
	}else{
		showp.innerHTML = '<i class="fa fa-eye"></i>';
		pass.type = "password";
		icon ='s';
	}
	
	
}

</script>
</head>
<body>
 
  <jsp:include page="header.jsp"></jsp:include>
  
  <br>
  <br>
  <br>
  <br>
  

  
	<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				
					<f:form modelAttribute="user"  method="post" action="saveregister" onsubmit="return check_info()">
					<fieldset>
					<h3> Registration </h3>
					<div class="container">
						<div class="col-md-6  col-sm-6  col-xs-12">
						
						<div class="form-group ">
							<label for="name" class="cols-sm-2 control-label">First Name</label>
							<div class="cols-sm-10">
							<f:errors path="name" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<f:input type="text" class="form-control" name="name" path="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>
						

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
							<f:errors path="email" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" path="email" required="required"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>

						

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
							<f:errors path="password" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
									<input type="password" class="form-control" id="password" name="password" path="password" required="required" placeholder="Enter your Password"/>
								    <span class="input-group-addon" id="eye" onclick="change()"><i class="fa fa-eye"></i></span>
								</div>
							</div>
						</div>
						
						<div class="form-group ">
							<label for="password" class="cols-sm-2 control-label"> Confirm Password</label>
							<div class="cols-sm-10">
							
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></i></span>
									<input type="password" class="form-control" id="confirmPassword" name="confirmpassword" required="required" placeholder="Confirm your Password"/>
								     <!-- <span class="input-group-addon" id="eye2"><i class="fa fa-eye"></i></span> -->
								</div>
							</div>
						</div>
						
						
						
									
									<input type="hidden" class="form-control" name="role" value="USER" path="role" placeholder="Enter your Role" />
						
						
						<div class="form-group ">
							<label for="Security Question" class="cols-sm-2 control-label">Select Security Question</label>
							<div class="cols-sm-10">
							<f:errors path="securityQ" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<f:select id="subject"  path="securityQ" class="form-control" required="required">
                                <option value="" selected="">Choose One:</option>
                                <option value="petname">Pet name</option>
                                <option value="first teacher">First teacher name</option>
                                <option value="vegi">favourite vegitable</option>
                                <option value="hero">favourite hero</option>
                            </f:select>
								</div>
							</div>
						</div>
						
						<div class="form-group ">
							<label for="Answer" class="cols-sm-2 control-label">Answer</label>
							<div class="cols-sm-10">
							<f:errors path="securityA" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="securityA" path="securityA" required="required" placeholder="Enter your Answer here"/>
								</div>
							</div>
						</div>
</div>
						<!-- <div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
								</div>
							</div>
						</div> -->

						<!-- <div class="form-group ">
							<button type="submit" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</a>
						</div> -->
						
			<div class="col-md-6  col-sm-12 col-xs-12">
						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Mobile no.</label>
							<div class="cols-sm-10">
							<f:errors path="phone" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="phone" path="phone" required="required" placeholder="Ex: 9845268872"/>
								</div>
							</div>
						</div>
						

						<div class="form-group">
							<label for="addrs1" class="cols-sm-2 control-label">Address Line 1</label>
							<div class="cols-sm-10">
							<f:errors path="addrs1" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="addrs1" path="addrs1" required="required"  placeholder="Enter your Appartment no"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="addrs2" class="cols-sm-2 control-label">Address Line 2</label>
							<div class="cols-sm-10">
							<f:errors path="addrs2" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="addrs2" path="addrs2" required="required"  placeholder="Enter your Address"/>
								</div>
							</div>
						</div>

						

						<div class="form-group ">
							<label for="city" class="cols-sm-2 control-label">City</label>
							<div class="cols-sm-10">
							<f:errors path="city" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="city" name="city" path="city" required="required" placeholder="Enter your City"/>
								   
								</div>
							</div>
						</div>
						<div class="form-group ">
							<label for="state" class="cols-sm-2 control-label">State</label>
							<div class="cols-sm-10">
							<f:errors path="state" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="state" name="state" path="state" required="required" placeholder="Enter your State"/>
								    
								</div>
							</div>
						</div>
						
						<div class="form-group   ">
							<label for="zipcode" class="cols-sm-2 control-label"> Post Code</label>
							<div class="cols-sm-10">
							<f:errors path="zip" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="zip" name="zip" required="required" placeholder="Confirm your Post Code"/>
								     
								</div>
							</div>
						</div>
						
						
						
						

						
						
			</div> 
			
			</div>
						</fieldset>
						<div class="form-group ">
							<button type="submit" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</a>
						</div>
					</f:form>
				</div>
			</div>
		</div> 
                
              
      
</body>
</html>


      <%--  <form:form modelAttribute="user"  method="post" action="saveregister">    
        <table >    
            
         <tr>    
          <td>Email :</td>    
          <td><form:input path="email" type="email"/></td>  
         </tr>  
          <tr>    
          <td>Name : </td>   
          <td><form:input path="name"  /></td>  
         </tr>
          <tr>    
          <td>password : </td>   
          <td><form:input path="password" type="password" /></td>  
         </tr>
          <tr>    
          <td>Address : </td>   
          <td><form:input path="address"  /></td>  
         </tr> 
         <tr>    
          <td>Role :</td>    
          <td><form:input path="role" /></td>  
         </tr>   
         <tr>    
          <td colspan="2"><input type="submit" value="register" /></td>    
         </tr>    
        </table>    
       </form:form>    --%>
