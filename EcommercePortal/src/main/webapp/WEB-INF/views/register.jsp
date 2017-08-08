<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Registration From</title>
</head>
<body>
 
  <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
  <br>
  <br>
  <br>
  <br>
  <br>
  
       <form:form modelAttribute="user"  method="post" action="saveregister">    
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
       </form:form>   
</body>
</html>