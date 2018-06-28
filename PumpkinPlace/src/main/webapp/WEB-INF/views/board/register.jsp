<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Image, Video 경로 String 입력을 받지 않았기 때문에 
       Submit버튼을 누르면 null값으로 인해 일시적으로
       500error가 납니다.-->
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <!-- 부트스트랩 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- jquery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }



body {
  position: relative; /* For scrollyspy */
  padding-top: 300px;   /*Account for fixed navbar */
  background-color: #f8f8f8;
}
 

}
  </style>
</head>
<body>


<nav class="navbar navbar-inverse navbar-fixed-top">

  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/pumpkinplace/member/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="/pumpkinplace/member/register"><span class="glyphicon glyphicon-user"></span> Register </a></li>
      </ul>
    </div>
  </div>
  
     <h1 style="background-color: white; margin: 0%;">
     
    
    
       <img alt="이미지" src="${pageContext.request.contextPath}/resources/logo.png"
       style="background-color: white; width: 100%; height: 200px;"/>
     </h1>
         
      <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menuNavbar">
        <span class="icon-bar"> </span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
    </div>
    
    
    <div class="collapse navbar-collapse" id="menuNavbar">
      <ul class="nav navbar-nav">
        <li class=""><a href="/pumpkinplace/">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">공연<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/pumpkinplace/showboard/showboardmain">공연</a></li>
            <li><a href="#">공연 등록</a></li>
           </ul>
        </li>
        <li class="active">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">게시판 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/pumpkinplace/board/list">자유 게시판</a></li>
          </ul>
        </li>
        <!--  -->
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">중고 거래<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">기타</a></li>
            <li><a href="#">베이스</a></li>
            <li><a href="#">드럼/퍼커션</a></li>
            <li><a href="#">앰프</a></li>
            <li><a href="#">음향장비</a></li>
            <li><a href="#">etc</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">구인 구직<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">구인</a></li>
            <li><a href="#">구직</a></li>
         </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Q&A<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Q&A</a></li>
         </ul>
        </li>
       </ul>
   </div>
  </div>
</nav>
</nav>

<!-- end MenuBar --><title>Board</title>
</head>

<body>
<div class="container text-center">
	<h2>새 글쓰기</h2>
<form action="register" method="post">
	<input type="text" name="title" placeholder="글 제목" required />
	<br/>
	<textarea rows="5" cols="50" name="content" 
		placeholder="내용 작성" required></textarea>
	<br/>
	<input type="text" name="userid" placeholder="작성자 아이디" required />
	<br/>
	<input type="submit" value="작성 완료" />
</form>
</body>
</html>


<!-- footer -->
<footer class="container-fluid text-center">
  

  <!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Team Error404, KOR</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> doojinzzang@something.com</p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>
  
  <!-- Add Google Maps -->
<div id="googleMap" style="height:400px;width:100%;"></div>
<script>
function myMap() {
var myCenter = new google.maps.LatLng(37.499685, 127.031535);
var map;
zoom: 11
 
var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position:myCenter});
marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLOpelo4l6yKdCApN_d5uUehocuiw7Uuk&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->
  
  
</footer>


