<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  </head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">                                   
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Spring Bootstrap 3</a>
        </div>
        <div class="navbar-collapse collapse">  
          <ul class="nav navbar-nav">
            <li class="active"><a href="<c:url value="/" />">Home</a></li>
            
           <%--  <li><a href="<c:url value="/contact" />">Forms</a></li> --%>
           <li><a href="<c:url value="/about" />">About</a></li>
          
            <li class="dropdown"><a class="dropdown-toggle"  data-toggle="dropdown"  href="#">Category<span class="caret"></span></a></li>
            <ul class="dropdown-menu">
            <c:forEach var="catVal" items="${catList}">
            <li><a href="${pageContext.request.contextPath }/productCustList?cid=${catVal.cid}">${catVal.name }</a></li>
            </c:forEach>
            </ul>
            <ul class="nav navbar-nav navbar right">
            <c:if test="${pageContext.request.userPrincipal.name==null }">
            <li><a href="<c:url value="/register" />">Register</a></li>
            
             <li><a href="<c:url value="/login" />">Login</a></li>
            
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name!=null }">
            
            <li><a >Welcome :${pageContext.request.userPrincipal.name} </a></li>
            
             <li><a href="<c:url value="/logout" />">Logout</a></li>
            </c:if>
            
            </ul>
            
            <c:if test="request.hasRole('ROLE_ADMIN')">
               <li><a href="<c:url value="/admin/adding" />">Admin</a></li>
            <li><a href="<c:url value="/admin/productList" />">Admin List</a></li>
            </c:if>
          </ul>
        </div>   			      		 
  </div>
</div>