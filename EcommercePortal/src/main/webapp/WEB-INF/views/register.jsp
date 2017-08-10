<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/style.css">
		<!-- Google Fonts 
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'> -->

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
				<h5>Registration Form</h5>
					<f:form modelAttribute="user"  method="post" action="saveregister">
						
						<div class="form-group has-error has-feedback has-success">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
							<f:errors path="name" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<f:input type="text" class="form-control" name="name" path="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>

						<div class="form-group has-error has-feedback has-success">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
							<f:errors path="email" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" path="email" required="required"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>

						<div class="form-group has-error has-feedback has-success">
							<label for="username" class="cols-sm-2 control-label">Mobile no.</label>
							<div class="cols-sm-10">
							<f:errors path="phone" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="phone" path="phone" required="required" placeholder="Ex: 9845268872"/>
								</div>
							</div>
						</div>

						<div class="form-group has-error has-feedback has-success">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
							<f:errors path="password" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" path="password" required="required" placeholder="Enter your Password"/>
								</div>
							</div>
						</div>
						
						<div class="form-group has-error has-feedback has-success">
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
						
						<div class="form-group has-error has-feedback has-success">
							<label for="Answer" class="cols-sm-2 control-label">Answer</label>
							<div class="cols-sm-10">
							<f:errors path="securityA" cssClass="err"/>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="securityA" path="securityA" required="required" placeholder="Enter your Answer here"/>
								</div>
							</div>
						</div>
						
						<div class="form-group has-error has-feedback has-success">
							<label for="Role" class="cols-sm-2 control-label">Role</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="role" path="role" placeholder="Enter your Role"/>
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
