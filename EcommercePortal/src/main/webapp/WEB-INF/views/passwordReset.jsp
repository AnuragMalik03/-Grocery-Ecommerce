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
		
		
		
<title>Password Reset</title>

<script type="text/javascript">



function check_info(){
	
	var pass = document.getElementById("password").value;
	var confirmPass = document.getElementById("confirmPassword").value;
	
	if(pass == confirmPass)
	{
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
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<br>
	<br>
	<br>
	<br>
	
	
	
	<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				
					<f:form action="${pageContext.request.contextPath }/updateUser" method="post"  onsubmit="return check_info()">
					<fieldset>
						<div class="col-md-6  col-sm-6  col-xs-12">
						<h3> Registration </h3>
						<%-- <div class="form-group has-error has-feedback has-success">
							<label for="name" class="cols-sm-2 control-label">First Name</label>
							<div class="cols-sm-10">
							<f:errors path="name" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<f:input type="text" class="form-control" value="${user.name }" name="name" path="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div> --%>
						

						<div class="form-group has-error has-feedback has-success">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
							<f:errors path="email" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" value="${user.email }" name="email" path="email" readonly/>
								</div>
							</div>
						</div>

						<%-- <div class="form-group has-error has-feedback has-success">
							<label for="username" class="cols-sm-2 control-label">Mobile no.</label>
							<div class="cols-sm-10">
							<f:errors path="phone" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" value="${user.phone }" name="phone" path="phone" readonly"/>
								</div>
							</div>
						</div> --%>

						<div class="form-group has-error has-feedback has-success">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
							<f:errors path="password" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" id="password" name="password" path="password" required="required" placeholder="Enter your Password"/>
								    <span class="input-group-addon" id="eye" onclick="change()"><i class="fa fa-eye"></i></span>
								</div>
							</div>
						</div>
						
						<div class="form-group  has-error has-feedback has-success ">
							<label for="password" class="cols-sm-2 control-label"> Confirm Password</label>
							<div class="cols-sm-10">
							
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" id="confirmPassword" name="confirmpassword" required="required" placeholder="Confirm your Password"/>
								     <span class="input-group-addon" id="eye2"><i class="fa fa-eye"></i></span>
								</div>
							</div>
						</div>
						
						
						
<%-- 						<div class="form-group has-error has-feedback has-success">
							<label for="Role" class="cols-sm-2 control-label">Role</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="role" value="${user.role }" value="USER" path="role" />
								</div>
							</div>
						</div>

						<div class="form-group has-error has-feedback has-success">
							<label for="addrs1" class="cols-sm-2 control-label">Address Line 1</label>
							<div class="cols-sm-10">
							<f:errors path="addrs1" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" value="${user.addrs1 }" name="addrs1" path="addrs1"/>
								</div>
							</div>
						</div>
						<div class="form-group has-error has-feedback has-success">
							<label for="addrs2" class="cols-sm-2 control-label">Address Line 2</label>
							<div class="cols-sm-10">
							<f:errors path="addrs2" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" value="${user.addrs2 }" name="addrs2" path="addrs2"/>
								</div>
							</div>
						</div>

						

						<div class="form-group has-error has-feedback has-success">
							<label for="city" class="cols-sm-2 control-label">City</label>
							<div class="cols-sm-10">
							<f:errors path="city" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="city" value="${user.city }" name="city" path="city" />
								   
								</div>
							</div>
						</div>
						<div class="form-group has-error has-feedback has-success">
							<label for="state" class="cols-sm-2 control-label">State</label>
							<div class="cols-sm-10">
							<f:errors path="state" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="state" value="${user.state }" name="state" path="state" />
								    
								</div>
							</div>
						</div>
						
						<div class="form-group  has-error has-feedback has-success ">
							<label for="zipcode" class="cols-sm-2 control-label"> Post Code</label>
							<div class="cols-sm-10">
							<f:errors path="zip" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="zip" value="${user.zip }" name="zip"/>
								     
								</div>
							</div>
						</div>
						
						<div class="form-group has-error has-feedback has-success">
							<label for="Security Question" class="cols-sm-2 control-label">Select Security Question</label>
							<div class="cols-sm-10">
							<f:errors path="securityQ" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="securityQ" value="${user.securityQ }" name="zip" readonly"/>
								</div>
							</div>
						</div>
						
						<div class="form-group has-error has-feedback has-success">
							<label for="Answer" class="cols-sm-2 control-label">Answer</label>
							<div class="cols-sm-10">
							<f:errors path="securityA" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" value="" class="form-control" name="securityA" path="securityA" required="required" placeholder="Enter your Answer here"/>
								</div>
							</div>
						</div> --%>
					

						
						</div> 
						</fieldset>
						<div class="form-group ">
							<button type="submit" id="button" class="btn btn-primary btn-lg btn-block login-button">Update</a>
						</div>
					</f:form>
				</div>
			</div>
		</div> 
	
	
	
	
	
<script type="text/javascript">

function show(){
	var answer = document.getElementById('ans').value;
	var actualA = ${u.securityA};
	var hidden = document.getElementById('pass');
	if(answer == actualA){
		
		hidden.style.display = 'block';	
 	}else{
 		
 		alert('please enter correct Answer');
 		
 	}
	
}

</script>
</body>
</html>