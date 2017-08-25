<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  
  <%@ include file="header.jsp" %>

<title>Cart</title>
<style type="text/css">

table, td ,tr {
text-align:center; 
  vertical-align:middle;
    
} 

</style>

</head>
<body>




<div class="container" style="margin-top:100px;">



    <div class="row" id="step-1">
   
       <div class="page-header">
  <h1>My Cart </h1>
</div>
     
            <div class="col-sm-12">
        <table class="table table-hover table-bordered " id="category" class="display" border="1"  align="center">
        <thead>
	<tr>
        <th>#</th><th>Image</th><th>Name</th><th>Quantity</th><th>Price</th><th>total</th><th class="span2">Action</th></tr>
       </thead>
       <tbody>
	<c:if test="${empty cartInfo }"><tr><td colspan="9"  align="center">No Record Exists</td></tr></c:if>

	<c:forEach var="c" varStatus="st" items="${cartInfo }">
	<tr>
	
	<td><c:out value="${st.count }"></c:out></td>
	<td><img src="${pageContext.request.contextPath }/resources/${c.cartImage}" height="60px" width="60px"></td>
	<td><c:out value="${c.cartProductName }"></c:out></td>
	<td><c:out value="${c.cartQuantity }"></c:out></td>
	<td><c:out value="${c.cartPrice }"></c:out></td>
	
	
	
	<td><c:out value="${c.cartQuantity * c.cartPrice }"></c:out></td>
	<td>
	          <a class="btn btn-danger" role="button"  href="<c:url value="/cart/deleteCart/${c.cartId}"/>">Delete</a></td>
	       
	          <c:set var="gtot" value="${gtot + c.cartPrice * c.cartQuantity }"></c:set>
	</tr>
	</c:forEach>
	
	 <tr>
	<td colspan="2">Grand Total</td>
	<td colspan="3"></td>
	
	<td colspan="2"><c:out value="${gtot }"></c:out></td>
	
	 
	</tr>  
	
	</tbody>
	
               <tfoot>
               <tr>
               <td colspan="2"><a class="btn btn-primary  btn-lg " role="button"  href="<c:url value="/"/>">Continue Shopping</a></td>
               <td colspan="1"></td>
               <td colspan="1"></td>
               <td colspan="1"></td>
               <td colspan="2">
               <c:if test="${not empty cartInfo }">
               <a class="btn btn-primary  btn-lg pull-right" role="button"  href="${pageContext.request.contextPath }/cart/checkout">Submit</a>
               <!-- <td><button class="btn btn-primary nextbtn btn-lg pull-right" type="button">Next</button></td> -->
               </c:if></td>
               </tr>
               </tfoot>
                
                </table>
           
        </div>
    </div>
    
   

</div>



</body>
</html>