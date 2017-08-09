<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="/resources/css.css" type="text/css"/>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  

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
  
  
<div class="container">
<h3>Registration Form</h3>
     <div class="row">
       <div class="col-md-12">
                
                 <form:form modelAttribute="user"  method="post" action="saveregister">  
                    <div class="col-md-6">
                     
                        <div class="form-group">
                        <form:errors path="email" cssClass="err"/>
                            <label class="control-label">Email</label>
                            <form:input  maxlength="50" type="text" path="email" required="required" class="form-control" placeholder="Enter Email"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                        <form:errors path="name" cssClass="err"/>
                            <label class="control-label">Name</label>
                            <form:input  maxlength="20" type="text"  path="name" required="required" class="form-control" placeholder="Enter Name"  />
                        </div>
                    </div>
                   
                    <div class="col-md-6">
                        <div class="form-group">
                        
                            <label class="control-label">Password </label>
                            <form:errors path="password" cssClass="err"/>
                            <form:input  maxlength="15" type="password" path="password" class="form-control" placeholder="********" />
                        </div>
                    </div> 
					<div class="col-md-6">
                        <div class="form-group">
                        <form:errors path="phone" cssClass="err"/>
                            <label class="control-label">Phone Number</label>
                            <form:input  maxlength="14" type="number" path="phone" required="required" class="form-control" placeholder="ex:9874563214"  />
                        </div>
                    </div>
                    <%-- <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Address</label>
                            <form:input  maxlength="40" type="text" path="address" required="required" class="form-control" placeholder="Enter Address"  />
                        </div>
                    </div> --%>
                    
                    <%-- <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">City</label>
                            <form:input  maxlength="40" type="text" required="required" class="form-control" placeholder="Enter City"  />
                        </div>
                    </div>
                     --%>
                   <%--  <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">State</label>
                            <form:input  maxlength="2" type="text" required="required" class="form-control" placeholder="Enter State"  />
                        </div>
                    </div> --%>
                    
                    
                   					
					 <div class="col-md-6">
                        <div class="form-group">
                        <form:errors path="securityQ" cssClass="err"/>
                            <label for="subject">
                                Security Question</label>
                            <form:select id="subject"  path="securityQ" class="form-control" required="required">
                                <option value="" selected="">Choose One:</option>
                                <option value="petname">Pet name</option>
                                <option value="first teacher">First teacher name</option>
                                <option value="vegi">favourite vegitable</option>
                                <option value="hero">favourite hero</option>
                            </form:select>
                        </div>
                    </div> 
                    
                    <div class="col-md-6">
                        <div class="form-group">
                        <form:errors path="securityA" cssClass="err"/>
                            <label class="control-label">Answer</label>
                            <form:input  maxlength="15" type="text" path="securityA" required="required" class="form-control" placeholder="Enter Answer"  />
                        </div>
                    </div>
					
					<div class="col-md-6">
                        <div class="form-group">
                        
                            <label class="control-label">Role</label>
                            <form:input  maxlength="6" type="text" path="role" class="form-control" placeholder="Enter Role"  />
                        </div>
                    </div>
                    <br>
                    <input class="btn btn-lg btn-primary nextBtn pull-right" type="submit" value="register" /> 
                    </form:form>
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
