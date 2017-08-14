<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
  <title>Online shopping</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  

 <!--  <script src="assets/js/fakeloader.min.js"></script> -->
  	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
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


  </style>
  
   
</head>
<body>

<!-- <div id="fakeLoader"></div> -->
<jsp:include page="header.jsp"></jsp:include>
<br>
<br>
<br>
<div class="container-fluid">
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active" style="background-image: url('http://placehold.it/1900x1080')">
      <!-- <img src="http://placehold.it/1900x1080" alt="Los Angeles"> -->
      <div class="carousel-caption d-none d-md-block" >
                        <h3>First Slide</h3>
                        <p>This is a description for the first slide.</p>
                    </div>
    </div>

    <div class="item" style="background-image: url('http://placehold.it/1900x1080')">
      <!-- <img src="http://placehold.it/1900x1080" alt="Chicago"> -->
      <div class="carousel-caption d-none d-md-block" >
                        <h3>First Slide</h3>
                        <p>This is a description for the first slide.</p>
                    </div>
    </div>

    <div class="item" style="background-image: url('http://placehold.it/1900x1080')">
      <!-- <img src="http://placehold.it/1900x1080" alt="New York"> -->
      <div class="carousel-caption d-none d-md-block" >
                        <h3>First Slide</h3>
                        <p>This is a description for the first slide.</p>
                    </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
<br>


<br>
<div class="container">
<h3 style="text-align:center;border-bottom:solid 1px #eee">slider</h3>
    <div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
                <div id="Carousel" class="carousel slide">
                 
                <ol class="carousel-indicators">
                    <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#Carousel" data-slide-to="1"></li>
                    <li data-target="#Carousel" data-slide-to="2"></li>
                </ol>
                 
                <!-- Carousel items -->
                <div class="carousel-inner">
                    
                <div class="item active">
                 <div class="row">
                   <div class="col-md-2 col-xs-4"><a href="http://reg.thonburi-u.ac.th/registrar/home.asp" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/1.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.spu.ac.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/2.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.spu.ac.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/3.png" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="https://www.mahidol.ac.th/th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/4.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.kkopenzoo.com/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/5.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.songkhlazoo.com/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/6.jpg" alt="Image" style="height:80px;"></a></div>
                 </div><!--.row-->
                </div><!--.item-->
                 
                <div class="item">
                 <div class="row">
                   <div class="col-md-2 col-xs-4"><a href="http://www.zoothailand.org/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/7.jpg" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.diw.go.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/17.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.dss.go.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/9.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.dip.go.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/10.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.dpim.go.th/" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/11.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.nstda.or.th/index.php" class="thumbnail"><img src="https://tmaxtech.co.th/images/Partner/12.jpg" alt="Image" style="max-height:80px;"></a></div>
                 </div><!--.row-->
                </div><!--.item-->
                 
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

<div class="w3-container">
  <h2>Card Example</h2>

  <div class="w3-card-4 w3-dark-grey" style="width:50%">

    <div class="w3-container w3-center">
      <h3>Friend Request</h3>
      <img src="http://placehold.it/156x180" alt="Avatar" style="width:80%">
      <h5>John Doe</h5>

      <div class="w3-section">
        <button class="w3-button w3-green">Accept</button>
        <button class="w3-button w3-red">Decline</button>
      </div>
    </div>

  </div>
</div>

<div class="panel-group">
  <div class="panel">
    <img class="card-img-top" src="http://placehold.it/156x180" alt="Card image cap">
    <div class="panel-body">
      <h4 class="panel-heading">Card title</h4>
      <p class="panel-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    </div>
    <div class="panel-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  <div class="panel">
    <img class="card-img-top" src="http://placehold.it/156x180" alt="Card image cap">
    <div class="panel-body">
      <h4 class="panel-heading">Card title</h4>
      <p class="panel-text">This card has supporting text below as a natural lead-in to additional content.</p>
    </div>
    <div class="panel-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  <div class="panel">
    <img class="card-img-top" src="http://placehold.it/156x180" alt="Card image cap">
    <div class="panel-body">
      <h4 class="panel-heading">Card title</h4>
      <p class="panel-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
    </div>
    <div class="panel-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
</div>

<script>
$(document).ready(function() {
    $('#Carousel').carousel({
        interval: 3000
    })
});
</script>


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
            


<!-- 
<script type="text/javascript">
$("#fakeloader").fakeLoader({
timeToHide:2500, //Time in milliseconds for fakeLoader disappear
zIndex:"999",//Default zIndex
spinner:"spinner2",//Options: 'spinner1', 'spinner2', 'spinner3', 'spinner4', 'spinner5', 'spinner6', 'spinner7'
bgColor:"#2ecc71", //Hex, RGB or RGBA colors
//imagePath:"yourPath/customizedImage.gif" //If you want can you insert your custom image
});
</script> -->

</body>
</html>
