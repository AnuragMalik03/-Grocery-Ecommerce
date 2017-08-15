<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
  <title>Online shopping</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
 
  <script src="assets/js/jquery.js"></script>
   <script src="assets/js/jquery.min.js"></script>
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  --> 

 <!--  <script src="assets/js/fakeloader.min.js"></script> -->
  	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
  <style>
  .carousel-item {
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


<!-- <div id="fakeLoader"></div> -->
<jsp:include page="header.jsp"></jsp:include>
<br>
<br>
<br>
<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
   <div class="carousel-item active" style="background-image: url('http://placehold.it/1900x1080')">
  
  <div class="carousel-caption d-none d-md-block">
    <h3>...</h3>
    <p>...</p>
  </div>
</div>
   <div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')">
  
  <div class="carousel-caption d-none d-md-block">
    <h3>...</h3>
    <p>...</p>
  </div>
</div>
    <div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')">
  
  <div class="carousel-caption d-none d-md-block">
    <h3>...</h3>
    <p>...</p>
  </div>
</div>
 
  <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>



<br>
<div class="container">
<h3 style="text-align:center;border-bottom:solid 1px #eee">Top Brands</h3>
<marquee> 
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image">
<img src="http://placehold.it/256x180" alt="Image"></marquee>
<br>
<p style="border-bottom:solid 1px #eee"></p>

</div>

<br>
<!--  <div class="container">
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
                    
                <div class="carousel-item active">
                 <div class="row">
                   <div class="col-md-2 col-xs-4"><a href="http://reg.thonburi-u.ac.th/registrar/home.asp" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/1.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.spu.ac.th/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/2.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.spu.ac.th/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/3.png" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="https://www.mahidol.ac.th/th/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/4.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.kkopenzoo.com/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/5.jpg" alt="Image" style="height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.songkhlazoo.com/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/6.jpg" alt="Image" style="height:80px;"></a></div>
                 </div>
                </div>
                 
                <div class="carousel-item">
                 <div class="row">
                   <div class="col-md-2 col-xs-4"><a href="http://www.zoothailand.org/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/7.jpg" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.diw.go.th/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/17.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.dss.go.th/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/9.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.dip.go.th/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/10.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.dpim.go.th/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/11.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.nstda.or.th/index.php" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/12.jpg" alt="Image" style="max-height:80px;"></a></div>
                 </div>
                </div>
                 
                <div class="carousel-item">
                 <div class="row">
                   <div class="col-md-2 col-xs-4"><a href="http://www.oaep.go.th/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/13.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.ops.go.th/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/14.jpg" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="/www.tisi.go.th" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/15.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="/www.oie.go.th/" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/16.png" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://reg.thonburi-u.ac.th/registrar/home.asp" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/1.jpg" alt="Image" style="max-height:80px;"></a></div>
                   <div class="col-md-2 col-xs-4"><a href="http://www.spu.ac.th" class="img-thumbnail"><img src="https://tmaxtech.co.th/images/Partner/2.jpg" alt="Image" style="height:80px;"></a></div>
                 </div>
                </div>
                 

                 
  </div>
 </div>
</div>
</div>
</div> -->

<br>
<br>
<div class="container" >
<div class="card-group" style="overflow: auto;">
  <div class="card">
  <div class="card-header">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
    <img class="card-img-top" src="http://placehold.it/256x180" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title">Card title</h4>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  <br>
  <div class="card">
  <div class="card-header">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
    <img class="card-img-top" src="http://placehold.it/256x180" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title">Card title</h4>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  <br>
  <div class="card">
  <div class="card-header">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
    <img class="card-img-top" src="http://placehold.it/256x180" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title">Card title</h4>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  <br>
   <div class="card">
   <div class="card-header">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
    <img class="card-img-top" src="http://placehold.it/256x180" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title">Card title</h4>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  
    <div class="card">
   <div class="card-header">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
    <img class="card-img-top" src="http://placehold.it/256x180" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title">Card title</h4>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  
</div>
</div>

<br>


<br>


 <script>
$(document).ready(function() {
    $('#myCarousel').carousel({
    	direction : left
    	wrap: true
        interval: 1500
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
            
            
 <div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-block">
      <div class="row">
      <div class="col-xs-9 align-self-center">
        <h3 class="card-title">Special title treatment</h3>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        </div>
        <div class="col-xs-3 align-self-center">
        <a href="#" class="btn btn-default"><i class="fa fa-angle-right"></i></a>
        </div>
        </div>
      </div>
    </div>
  </div>
  <br>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-block">
      <div class="row">
      <div class="col-xs-9 align-self-center">
        <h3 class="card-title">Special title treatment</h3>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        </div>
        <div class="col-xs-3 align-self-center">
        <a href="#" class="btn btn-default"><i class="fa fa-angle-right"></i></a>
        </div>
        </div>
      </div>
    </div>
  </div>
</div>
<br>
 <div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-block">
      <div class="row">
      <div class="col-xs-9 align-self-center">
        <h3 class="card-title">Special title treatment</h3>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        </div>
        <div class="col-xs-3 align-self-center">
        <a href="#" class="btn btn-default"><i class="fa fa-angle-right"></i></a>
        </div>
        </div>
      </div>
    </div>
  </div>
  <br>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-block">
      <div class="row">
      <div class="col-xs-9 align-self-center">
        <h3 class="card-title">Special title treatment</h3>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        </div>
        <div class="col-xs-3 align-self-center">
        <a href="#" class="btn btn-default"><i class="fa fa-angle-right"></i></a>
        </div>
        </div>
      </div>
    </div>
  </div>
</div>
<br>
 <div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-block">
      <div class="row">
      <div class="col-xs-9">
        <h3 class="card-title">Special title treatment</h3>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        </div>
        <div class="col-xs-3">
        <a href="#" class="btn btn-default"><i class="fa fa-angle-right"></i></a>
        </div>
        </div>
      </div>
    </div>
  </div>
  <br>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-block">
      <div class="row">
      <div class="col-xs-9 align-self-center">
        <h3 class="card-title">Special title treatment</h3>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        </div>
        <div class="col-xs-3 align-self-center">
        <a href="#" class="btn btn-default"><i class="fa fa-angle-right"></i></a>
        </div>
        </div>
      </div>
    </div>
  </div>
</div>





</div>
<script>
$("marquee").hover(function () { 
    this.stop();
}, function () {
    this.start();
});
$('#myCarousel').carousel({});

</script>



</body>
</html>
