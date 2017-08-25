
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
     <script src="assets/js/jquery.js"></script>
     <link rel="stylesheet" href="assets/css/style.css"/>
   <script src="assets/js/jquery.min.js"></script>
   
     <!--  <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
   
    <link rel="stylesheet" href="assets/css/style.css"/>
  <link rel="stylesheet" href="assets/css/bootstrap.css"/>
   <script src="assets/js/bootstrap.min.js"></script> 
   
       <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
     <script src="assets/js/jquery.js"></script>
   <script src="assets/js/jquery.min.js"></script> -->
  
  
  
  </head>
<body>


<%-- <nav class="navbar navbar-toggleable-md navbar-light bg-transparent fixed-top ">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">Navbar</a>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
       <a class="nav-link" href="<c:url value="/" />">Home <span class="sr-only">(current)</span></a>
      </li>
     
       
        
       
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
        </a>
        <ul class="dropdown-menu">
           <c:forEach items="${catList}" var="cat">
                                         <li class="dropdown-item"> <a class="nav-link" href="${pageContext.request.contextPath}/productCustList?cid=${cat.cid}">${cat.name}</a></li>
                                         </c:forEach>
        </ul>
      </li>
      
      <sec:authorize access="hasRole("ROLE_ADMIN")">
            <ul class="nav navbar-nav ">
            
            <c:if test="${pageContext.request.userPrincipal.name!=null }">
             <li class="nav-item"><a class="nav-link" href="<c:url value="/admin/adding" />">Admin</a></li>
            <li class="nav-item"><a class="nav-link" href="<c:url value="/admin/productList" />">Admin List</a></li>
                   
            
             
            </c:if>
            
            </ul>
            </sec:authorize>
            
             <li class="nav-item">
        <a class="nav-link" href="<c:url value="/about" />">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/contact" />">Contact Us</a>
      </li>
      
      
            <ul class="navbar-nav navbar-toggler-right">
            <c:if test="${pageContext.request.userPrincipal.name==null }">
            <li class="nav-item "><a class="nav-link" href="<c:url value="/register" />">Register</a></li>
            
             <li class="nav-item "><a class="nav-link" href="<c:url value="/login" />">Login</a></li>
            
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name!=null }">
            
            <li class="nav-item "><a class="navbar-text" ><i class="fa fa-user"></i> :${pageContext.request.userPrincipal.name} </a></li>
            
             <li class="nav-item "><a class="nav-link" href="<c:url value="/logout" />">Logout</a></li>
            </c:if>
            
            </ul>      
            
      
     
      
      
    </ul>
  </div>
</nav> --%>



<div class="navbar-wrapper">
      <div class="container">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation" >

  <div class="container">
    <div class="navbar-header">          
    
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                     <span class="icon-bar"></span>
                         <span class="icon-bar"></span>
                         <span class="icon-bar"></span> 
                </button>
               <a class="navbar-brand" href="<c:url value="/" />"> <span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span> Grocery Shop</a>
            </div>                  
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav navbar-right">
            <c:if test="${pageContext.request.userPrincipal.name==null }">
            <li><a class="page-scroll" href="<c:url value="/register" />">Register</a></li>
            
             <li><a class="page-scroll" href="<c:url value="/login" />"><i class="glyphicon glyphicon-log-in"></i> Login</a></li>
            
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name!=null }">
            
            <li><a  href="<c:url value="/cart/goToCart"/>"><i class="glyphicon glyphicon-shopping-cart"></i></a></li>
            <li><a ><i class="glyphicon glyphicon-user"></i>  ${pageContext.request.userPrincipal.name} </a></li>
           
             <li><a class="page-scroll" href="<c:url value="/logout" />"> Logout  <i class="glyphicon glyphicon-log-out"></i></a></li>
            </c:if>
            
            </ul>      
            </div>
            
              <div class="collapse navbar-collapse navbar-justified navbar-main-collapse">  
          <ul class="nav navbar-nav">
            <li class="active"><a href="<c:url value="/" />">Home</a></li>
            
               
           
          <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul class="dropdown-menu">
           <c:forEach items="${catList}" var="cat">
                                         <li> <a href="${pageContext.request.contextPath}/productCustList?cid=${cat.cid}">${cat.name}</a></li>
                                         </c:forEach>
        </ul>
      </li>
           
                
          <li>
              <security:authorize access="hasRole('ROLE_ADMIN')">
          
            <ul class="nav navbar-nav navbar-right" >
            
            <c:if test="${pageContext.request.userPrincipal.name!=null }">
             <li><a class="page-scroll" href="<c:url value="/admin/adding" />">Admin</a></li>
            <li><a class="page-scroll" href="<c:url value="/admin/productList" />">Admin List</a></li>
                   
            
             </c:if>
            
            
            </ul>
            </security:authorize>
          </li>
            
           <li><a class="page-scroll" href="<c:url value="/about" />">About</a></li>
            <li><a class="page-scroll" href="<c:url value="/contact" />">Contact Us</a></li>
             
          </ul>
        </div>                                                              
  </div>
</nav>
</div>
</div>


</body>
</html>
