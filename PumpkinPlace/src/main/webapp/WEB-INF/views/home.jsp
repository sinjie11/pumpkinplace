<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>PumpkinPlace</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- 부트스트랩 -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- jquery -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
   min-height: 200px;
}

/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
   .carousel-caption {
      display: none;
   }
}

body {
   position: relative; /* For scrollyspy */
   padding-top: 300px; /*Account for fixed navbar */
   background-color: #f8f8f8;
}
}
</style>
</head>
<body>
   <br/>

   <%@ include file="header.jspf"%>


   <!-- 가운데 정렬해주는거 -->
   <div class="container text-center">
      <h5 style="text-align: left;"><b> 카테고리: 홈 </b></h5>

      <h4><b>공연</b></h4>
      
      <br>
      <!-- 공연 소개  -->
      <div class="row justify-content-md-center">
         <div class="row">
            <c:forEach var="showboard" items="${showboardList}" begin="0"
               end="5" varStatus="vs">
               <div class="col-md-4" style="height: 400px">
                  <a href="showboard/showdetail?page=1&numsPerPage=12&sb_no=${showboard.sb_no}"><img
                     class="my-image" alt="Bootstrap Image Preview" width="220px;" height="280px;"
                     src="${pageContext.request.contextPath}/resources/assets/img/showboard/${showboard.sb_img}" /></a>
                  <label href="showboard/showdetail?page=1&numsPerPage=12&sb_no=${showboard.sb_no}">
                     <h4>${showboard.sb_title}</h4>
                        <fmt:formatDate value="${showboard.sb_startdate}"
                           pattern="yyyy년 MM월 dd일 " var="startdate" />
                        <p>${showboard.sb_city}/${startdate}</p>
                  </label>
               </div>
            </c:forEach>
         </div>
         <!-- end 공연 소개  -->



         <!-- 자유 게시판 -->
         <div class="row">
            <div class="col-md-4">
               <p class="text-left" style="font-size: medium;">
                  <b>자유 게시판</b> <a href="/pumpkinplace/board/list?urlNo=1"
                     style="float: right">more</a>
               </p>



               <table class="table">
                  <thead>
                     <tr>
                        <th>No.</th>
                        <th>Title</th>
                        <th>Writer</th>
                        <th>Creation Time</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach var="board" items="${boardList1}">
						<tr>
							<td>${board.b_no}</td>
							<td><a class="table-title-link" href="${board.b_no}">${board.b_title}</a></td>
							<td>${board.b_id}</td>
							<fmt:formatDate value="${board.b_regdate}"
								pattern="yyyy/MM/dd HH:mm:ss" var="b_regdate" />
							<td>${b_regdate}</td>
						</tr>
					</c:forEach>					
                  </tbody>
               </table>
            </div>

            <!-- 구인구직 -->
            <div class="col-md-4">
               <p class="text-left" style="font-size: medium;">
                  <b>구인구직</b> <a href="/pumpkinplace/board/list?urlNo=11" style="float: right">more</a>
               </p>
               <table class="table">
                   <thead>
                     <tr>
                        <th>No.</th>
                        <th>Title</th>
                        <th>Writer</th>
                        <th>Creation Time</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach var="board" items="${boardList11}">
						<tr>
							<td>${board.b_no}</td>
							<td><a class="table-title-link" href="${board.b_no}">${board.b_title}</a></td>
							<td>${board.b_id}</td>
							<fmt:formatDate value="${board.b_regdate}"
								pattern="yyyy/MM/dd HH:mm:ss" var="b_regdate" />
							<td>${b_regdate}</td>
						</tr>
					</c:forEach>					
                  </tbody>
               </table>
            </div>

            <!-- 중고거래 -->
            <div class="col-md-4">
               <p class="text-left" style="font-size: medium;">
                  <b>중고 거래</b> <a href="/pumpkinplace/board/list?urlNo=12" style="float: right">more</a>
               </p>
               <table class="table">
                  <thead>
                     <tr>
                        <th>No.</th>
                        <th>Title</th>
                        <th>Writer</th>
                        <th>Creation Time</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach var="board" items="${boardList12}">
						<tr>
							<td>${board.b_no}</td>
							<td><a class="table-title-link" href="${board.b_no}">${board.b_title}</a></td>
							<td>${board.b_id}</td>
							<fmt:formatDate value="${board.b_regdate}"
								pattern="yyyy/MM/dd HH:mm:ss" var="b_regdate" />
							<td>${b_regdate}</td>
						</tr>
					</c:forEach>					
                  </tbody>
               </table>
            </div>
         </div>
      </div>
   </div>
   <!-- footer -->
   <footer class="container-fluid text-center">

      <div class="row">
         <!-- Add Google Maps -->
         <div id="googleMap"
            style="height: 400px; width: 500px; float: right; margin-right: 200px;"></div>
         <div class="col-sm-7 slideanim">
            <h2 class="text-center" style="margin-left: 230px;">CONTACT</h2>
            <br /> <br />
            <div class="col-sm-7 slideanim" style="margin-left: 350px;">
               <div class="row">
                  <div class="col-sm-6 form-group">
                     <input class="form-control" id="name" name="name"
                        placeholder="Name" type="text" required>
                  </div>
                  <div class="col-sm-6 form-group">
                     <input class="form-control" id="email" name="email"
                        placeholder="Email" type="email" required>
                  </div>
               </div>
               <textarea class="form-control" id="comments" name="comments"
                  placeholder="Comment" rows="5"></textarea>
               <br>
               <div class="row">
                  <div class="col-sm-12 form-group">
                     <button class="btn btn-default pull-right" type="submit">Send</button>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <script>
         function myMap() {
            var myCenter = new google.maps.LatLng(37.499685, 127.031535);
            var map;

            var mapProp = {
               center : myCenter,
               zoom : 16,
               scrollwheel : false,
               draggable : false,
               mapTypeId : google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document
                  .getElementById("googleMap"), mapProp);
            var marker = new google.maps.Marker({
               position : myCenter
            });
            marker.setMap(map);

         }

         $(document).ready(function() {
            console.log('jhd');
         });
      </script>

      <script
         src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLOpelo4l6yKdCApN_d5uUehocuiw7Uuk&callback=myMap"></script>

      <!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

   </footer>

   <%@ include file="footer.jspf"%>
</body>




</html>

