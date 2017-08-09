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
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">

  <div class="container">
    <div class="navbar-header">          
    
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-play-circle"></i> <span class="light">Grocery</span> Shop
                </a>
            </div>                        
            
              <div class="collapse navbar-collapse navbar-right navbar-main-collapse">  
          <ul class="nav navbar-nav">
            <li class="active"><a href="<c:url value="/" />">Home</a></li>
            
           <%--  <li><a href="<c:url value="/contact" />">Forms</a></li> --%>
           <li><a class="page-scroll" href="<c:url value="/about" />">About</a></li>
          
            <li class="dropdown">
            <a class="dropdown-toggle" class="page-scroll"  data-toggle="dropdown"  href="#">Category<span class="caret"></span></a>
            <ul class="dropdown-menu">
            <c:forEach items="${catList}" var="cat">
			<li> <a href="productCustList?cid=${cat.cid}">${cat.name}</a></li>
			</c:forEach>
           <%--  <c:forEach var="catVal" items="${catList}">
            <li><a href="${pageContext.request.contextPath }/productCustList?cid=${catVal.cid}">${catVal.name }</a></li>
            </c:forEach> --%>
            </ul>
            </li>
        
            
            <ul class="nav navbar-nav navbar-right">
            <c:if test="${pageContext.request.userPrincipal.name==null }">
            <li><a class="page-scroll" href="<c:url value="/register" />">Register</a></li>
            
             <li><a class="page-scroll" href="<c:url value="/login" />">Login</a></li>
            
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name!=null }">
            
            <li><a >Welcome :${pageContext.request.userPrincipal.name} </a></li>
            
             <li><a class="page-scroll" href="<c:url value="/logout" />">Logout</a></li>
            </c:if>
            
            </ul>
            
          
          <sec:authorize access="hasAuthority('ROLE_ADMIN')">
            <ul class="nav navbar-nav navbar-right">
            
            <c:if test="${pageContext.request.userPrincipal.name!=null }">
             <li><a class="page-scroll" href="<c:url value="/admin/adding" />">Admin</a></li>
            <li><a class="page-scroll" href="<c:url value="/admin/productList" />">Admin List</a></li>
                   
            
             
            </c:if>
            
            </ul>
            </sec:authorize>
          
            
           
            
          </ul>
        </div>   			      		 
  </div>
</nav>
</body>
</html>