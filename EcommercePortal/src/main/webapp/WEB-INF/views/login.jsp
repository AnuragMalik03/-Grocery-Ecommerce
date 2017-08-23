<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
              pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script> -->
  
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
     <script src="assets/js/jquery.js"></script>
   <script src="assets/js/jquery.min.js"></script>
<title>Login Page</title>

<style>
body
{background: #eee url(http://subtlepatterns.com/patterns/sativa.png);}
.login-container{
    position: relative;
    width: 300px;
    margin: 80px auto;
    padding: 20px 40px 40px;
    text-align: center;
    background: #fff;
    border: 1px solid #ccc;
}

#output{
    position: absolute;
    width: 300px;
    top: -75px;
    left: 0;
    color: #fff;
}

#output.alert-success{
    background: rgb(25, 204, 25);
}

#output.alert-danger{
    background: rgb(228, 105, 105);
}


.login-container::before,.login-container::after{
    content: "";
    position: absolute;
    width: 100%;height: 100%;
    top: 3.5px;left: 0;
    background: #fff;
    z-index: -1;
    -webkit-transform: rotateZ(4deg);
    -moz-transform: rotateZ(4deg);
    -ms-transform: rotateZ(4deg);
    border: 1px solid #ccc;

}

.login-container::after{
    top: 5px;
    z-index: -2;
    -webkit-transform: rotateZ(-2deg);
     -moz-transform: rotateZ(-2deg);
      -ms-transform: rotateZ(-2deg);

}

.avatar{
    width: 100px;height: 100px;
    margin: 10px auto 30px;
    border-radius: 100%;
    border: 2px solid #aaa;
    background-size: cover;
}

.form-box input{
    width: 100%;
    padding: 10px;
    text-align: center;
    height:40px;
    border: 1px solid #ccc;;
    background: #fafafa;
    transition:0.2s ease-in-out;

}

.form-box input:focus{
    outline: 0;
    background: #eee;
}

.form-box input[type="text"]{
    border-radius: 5px 5px 0 0;
    text-transform: lowercase;
}

.form-box input[type="password"]{
    border-radius: 0 0 5px 5px;
    border-top: 0;
}

.form-box button.login{
    margin-top:15px;
    padding: 10px 20px;
}

.animated {
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInUp {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px);
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}

@keyframes fadeInUp {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px);
    -ms-transform: translateY(20px);
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    -ms-transform: translateY(0);
    transform: translateY(0);
  }
}

.fadeInUp {
  -webkit-animation-name: fadeInUp;
  animation-name: fadeInUp;
}
</style>

</head>
<body >
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
	<div class="login-container">
            <div id="output"></div>
            <div class="avatar"></div>
            <div class="form-box">
                <form action="${pageContext.request.contextPath }/login" class="form-signin" method="post" >
                <span id="reauth-email" class="reauth-email"></span>
                    <input name="username" type="text" placeholder="username" required>
                    <input type="password" name="password" placeholder="password">
                    
                    <button class="btn btn-info btn-block login" type="submit">Login</button>
                    <a class="pull-right" style="size:5px ; vertical-align:baseline;" href="<c:url value="/userName"/>">Forgot Password?</a>
                </form>
            </div>
        </div>
        
</div>

<%-- <div class="container">
<center>Welcome to Login Page</center>
<div class="card card-container">
<h2 class='login_title text-center'>Login</h2>
<hr>

<form action="${pageContext.request.contextPath }/login" class="form-signin" method="post" >
<span id="reauth-email" class="reauth-email"></span>
<h4 class="input-title">Email</h4>
<input type="text" id="inputEmail" name="username" class="login_box" placeholder="email" required />
<h4 class="input-title">Password</h4>
<input type="password" id="inputPassword" name="password" class="login_box" placeholder="********" required />

<div id="remember" class="checkbox">
<label>

</label>
</div>

<button class="btn btn-lg btn-primary" type="submit">Submit</button>
</form>
</div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
</div> --%>


<br><br>

</body>
</html>
