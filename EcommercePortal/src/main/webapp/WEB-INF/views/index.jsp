<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
  <title>Online shopping</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <style>
  .item {
    height: 50vh;
    min-height: 300px;
    background: no-repeat center center scroll;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}

img{

border-radius: 8px;
}


  </style> 
 
  
   
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<br>
<br>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active"style="background-image: url('assets/images/Patanjali1.jpg')">
          
          <div class="container">
            <div class="carousel-caption">
              <h1>Patanjali.</h1>
              <%-- <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p> --%>
            </div>
          </div>
        </div>
        <div class="item" style="background-image: url('assets/images/grocery-banner.jpg')">
          <!-- <img class="second-slide" src="http://placehold.it/1900x1080" alt="Second slide"> -->
          <div class="container">
            <div class="carousel-caption">
              <h1>Best in Quality</h1>
              <!-- <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p> -->
            </div>
          </div>
        </div>
        <div class="item" style="background-image: url('assets/images/fruits-banner.jpg')">
          <!-- <img class="third-slide" src="http://placehold.it/1900x1080" alt="Third slide"> -->
          <div class="container">
            <div class="carousel-caption">
              <h1>Delicious Fresh Fruits</h1>
             <!--  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p> -->
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>



<div class="container">
<h3 style="text-align:center;border-bottom:solid 1px #eee">Choose From Categories</h3>
<c:forEach var="cc" items="${catList }">
<div class="col-md-6 col-sm-12 col-lg-6">
<div class="panel">
<div class="panel-body">
<div style="text-align:center;">
<a class="thumbnail" alt="" href="<c:url value="productCustList?cid=${cc.cid}"/>"><h2>${cc.name }</h2></a>
</div>
</div>
</div>

</div>
</c:forEach>
</div>

<br>

<div class="container">
<h3 style="text-align:center;border-bottom:solid 1px #eee">Top Brands</h3>
<c:forEach var="bb" items="${broList }">
<div class="col-md-3 col-sm-4 col-lg-3">
<div class="panel">
<div class="panel-body">

<img alt="" class="thumbnail" src="${pageContext.request.contextPath }/resources/${bb.bimgName }" height="200px" width="200px" style="border: 1px solid ; padding : 10px;"/>

</div>
</div>

</div>
</c:forEach>
</div>
<!--   <div class="container">
<h3 style="text-align:center;border-bottom:solid 1px #eee">slider</h3>
 <div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
                <div id="myCarousel2" class="carousel slide">
                 
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel2" data-slide-to="1"></li>
                    <li data-target="#myCarousel2" data-slide-to="2"></li>
                </ol>
                 
               
                <div class="carousel-inner">
                    
                <div class="item active">
                 <div class="row">
                   <div class="col-md-2 col-xs-4"><a href="http://reg.thonburi-u.ac.th/registrar/home.asp" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/1.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.spu.ac.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/2.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.spu.ac.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/3.png" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="https://www.mahidol.ac.th/th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/4.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.kkopenzoo.com/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/5.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.songkhlazoo.com/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/6.jpg" alt="Image" style="height:80px;"></a></div>
                 </div>
                </div>
                 
                <div class="item">
                 <div class="row">
                   <div class="col-md-2 col-xs-4"><a href="http://www.zoothailand.org/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/7.jpg" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.diw.go.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/17.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.dss.go.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/9.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.dip.go.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/10.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.dpim.go.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/11.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.nstda.or.th/index.php" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/12.jpg" alt="Image" style="max-height:80px;"></a></div>
                 </div>
                </div>
                 
                <div class="item">
                 <div class="row">
                   <div class="col-md-2 col-xs-4"><a href="http://www.oaep.go.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/13.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.ops.go.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/14.jpg" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="/www.tisi.go.th" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/15.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="/www.oie.go.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/16.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://reg.thonburi-u.ac.th/registrar/home.asp" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/1.jpg" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.spu.ac.th" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/2.jpg" alt="Image" style="height:80px;"></a></div>
                 </div>
                </div>
                 

                 
  </div>
 </div>
</div>
</div>
</div>  -->

<br>
<br>






<!--  <div class="container">
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card add-animation animation-2">
                                        <img alt="..." src="/assets/img/pic10.jpg" />
                                    </div>
                                    <div class="card add-animation animation-4">
                                        <img alt="..." src="/assets/img/pic6.jpg" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card add-animation animation-1">
                                        <img alt="..." src="/assets/img/pic11.jpg"/>
                                    </div>
                                    <div class="card add-animation animation-3">
                                        <img alt="..." src="/assets/img/pic1.jpg"/>
                                    </div>
                                    <div class="card add-animation animation-2">
                                        <img alt="..." src="/assets/img/pic9.jpg"/>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card add-animation animation-3">
                                        <img alt="..." src="/assets/img/pic2.jpg"/>
                                    </div>
                                     <div class="card add-animation animation-1">
                                        <img alt="..." src="/assets/img/pic4.jpg"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
            
            



<div class="container">

 <footer>
        <p class="pull-right"><a href="#"><i class="glyphicon glyphicon-circle-arrow-up"></i></a></p>
        <p>&copy; 2016 Company, Inc. &middot; <a href="#" disabled>Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
      </div>

<script>

$('#myCarousel').carousel({});




</script>



</body>
</html>
