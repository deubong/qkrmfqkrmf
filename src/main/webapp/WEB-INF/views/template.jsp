<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com -->
  <title>바글바글</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/5.9.7/d3.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.3/c3.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
	
  <!--  c3 css -->	
  <link href="./css/c3.css" rel="stylesheet"> 
  <!--amchart script --> 
  <script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
  <script src="https://www.amcharts.com/lib/4/core.js"></script>
  <script src="https://www.amcharts.com/lib/4/charts.js"></script>
  <script src="./resources/material.js"></script>
  
  <!-- 구글차트 api -->
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> 
  <!-- 네이버지도 API -->
  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=mxiodqx5gf"></script>
  <!--   카카오맵 -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d9c351ec80a7e5791edf33b41ef8252d"></script>

	<style>

	.unselectable {
		-moz-user-select: -moz-none;
		-khtml-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}
	
	/* css formats for the gauge */
	.gauge .domain {
		stroke-width: 2px;
		stroke: #fff;
	}
	
	.gauge .tick line {
		stroke: #fff;
		stroke-width: 2px;
	}
	
	.gauge line {
		stroke: #fff;
	}
	
	.gauge .arc, .gauge .cursor {
		opacity: 0;
	}
	
	.gauge .major {
		fill: #fff;
		font-size: 20px;
		font-family: 'Play', verdana, sans-serif;
		font-weight: normal;
	}
	
	.gauge .indicator {
		stroke: #EE3311;
		fill: #000;
		stroke-width: 4px;
	}
	
	/* css formats for the segment display */
	.segdisplay .on {
		fill: #00FFFF;
	}
	
	.segdisplay .off {
		fill: #00FFFF;
		opacity: 0.15;
	}
	</style>
	<style>
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
	color: #303030;
    font-weight: 600;
    margin-bottom: 20px;
  }
  h3 {
    font-size: 20px; 
    text-transform: uppercase;
	color: #303030;
    font-weight: 600;
    margin-bottom: 10px; 
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 80px 0px;
    font-family: Montserrat, sans-serif;
  }
  .container-fluid {
     padding: 0px 30px;
  } 
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 0px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #f4511e;
  }
  .carousel-indicators li {
    border-color: #f4511e;
  }
  .carousel-indicators li.active {
    background-color: #f4511e;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0px;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #f4511e; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
  .panel-heading {
    color: #fff !important;
    background-color: #f4511e !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0px;
    background-color: #f4511e;
    color: #fff;
  }
  .navbar {
    margin-bottom: 0;
    background-color: #f4511e;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  footer .glyphicon {
    font-size: 20px;
/*     margin-bottom: 20px; */
    margin-bottom: 0px;
    color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
      width: 100%;
      margin-bottom: 35px; 
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
      font-size: 150px;
    }
  }
  </style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">바글바글</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="#myPage">검색</a></li>
        <li><a href="#about">조회 1</a></li>
        <li><a href="#about2">조회2</a></li>
        <li><a href="#services">지도</a></li>
        <li><a href="#portfolio">바글바글 지수</a></li>
        <li><a href="#contact">CONTACT</a></li>
      </ul>  
      <a href="#about" id="searchMove" style="visibility: hidden;">조회누르면 이동할 버튼임</a> 
<!--       <a href='http://localhost:8090/bbs/template.bbs?gu="금정구"&dong="장전2동"&type="닭/오리요리"' id="searchMove" style="visibility: hidden;">조회누르면 이동할 버튼임</a>  -->
    </div>
  </div>
</nav> 
<button onclick="document.getElementById('searchMove').click();">검색버튼 누르면 페이지 이동</button>
 <!-- 제목 섹션 Section   -------------------------------------------------------------------------------------------------->
<div class="jumbotron text-center">	
  <h1>바글바글</h1> 
  <p>창업지수 평가 시스템 ver1.0</p> 
</div>s

<!-- Container (조회하는 Section)  -------------------------------------------------------------------------------------------------------->
	<div id = searchSection class="container-fluid bg-grey">
	<div  class="container-fluid text-center"> 
	<h2>Choose</h2>
		     <form>
				<div id="combo" style="margin-left: 20px; margin-right: 20px"> 
					<select id="gu" name="gu" style="width: 200px; margin-right: 30px" > <option>구 · 군</option> </select>
					<select id="dong" name="dong" style="width: 200px; margin-right: 30px"> <option>동 · 읍 · 면</option> </select>
					<select id="type" name="type" style="width: 200px; margin-right: 30px"> 
						<option value="닭/오리요리">닭/오리요리</option> 
						<option value="분식">분식</option> 
						<option value="양식">양식</option> 
						<option value="유흥주점">유흥주점</option> 
						<option value="일식/수산물">일식/수산물</option> 
						<option value="중식">중식</option> 
						<option value="한식">한식</option> 
						<option value="기타">기타</option>  
					</select>
					<input id = search type="button" value="확인" style="width: 100px; height: 30px" onclick="document.getElementById('searchMove').click();"/>
				</div>
			</form>
			<hr> 
	</div>
	</div>
	
<div id="about" class="container-fluid bg-grey">    
  <div class="container-fluid text-center">
  	<div class ="row slideanim">
	  <br><br>
      <div>  
		<h2 id = choose_dong></h2><b id = choose_type></b>
	  </div> 
  	  <table border = "1" style="margin-bottom: 100px" > 
	  	  <tr>   
	  	  	<td rowspan="2" style="width: 700px"> 
		  	  		<img id = type_img alt="이미지없음" style="visibility: hidden;" /> 
		  	  		<div id = "store_text"> 
						<div> <h3> <span id = "choosegu"></span> <span id = "choosedong"></span> 총 요식업 수 : <b id = "all_store_count"></b></h3></div>  
						<div> <h3> <span id = "choosetype"> </span> 점포 수 : <b id = "type_store_count"></b></h3></div> 
						<div> <h3> <span id = "choosetype"></span> 비율  : <b id = "type_store_per"></b></h3></div>  
			  		</div>
	  	  	</td>
	  	  	<td style="width: 600px"> 
	  	  		<div id="ratechartDiv"></div> 
	  	  	</td>
	  	 </tr>
  	  </table>
  </div>
</div>
</div>

<div id="about2" class="container-fluid ">  
<div class="container-fluid text-center">  
  	<div class ="row slideanim">
	  <br><br>
      <div>  
		<h2 id = choose_dong></h2><b id = choose_type></b>
	  </div> 
	 
  	  <table  border = "1"  style="margin-bottom: 100px" > 
  	  	  <tr> 
	  	  	<td style="width: 700px">
	  	  		<br>
	  	  		<h3>기간별 생존률</h3><b>2019년도 2분기 기준</b>
			  	<div id = "liveChartDiv" style = "visibility: hidden;"></div>
	  	  	</td>
	  	  	<td style="width: 700px"> 
	  	  		<br>
	  	  		<h3>기간별 폐업률</h3><b>2016 ~ 2019년도 기준</b>
	  	  		<div id = "peupChartDiv" style = "visibility: hidden;"></div>
	  	  	</td>
	  	  </tr>
  	  </table>
  </div>
</div>
</div> 

<!-- Container (지도 보여주는 Section)  -------------------------------------------------------------------------------------------------------->

<div id="services" class="container-fluid text-center bg-grey" style="text-align: center;">
	<br><br>
	<div class ="row slideanim">
		<h2>지도</h2>
		<div style="margin-top: 40px; margin-left: 300px;"> 
			<div id="mapDiv">
				<div id = "map" style = "width: 80%; height: 650px;"></div>
			</div>
		</div>   
		<div style = "display: inline-block;"> 
		<table>
		  <tr style = "display: inline-block;"> 
			<td><h3 id = "choose_dong_map"></h3></td> 
			<td><h3 id ="choose_type_map"></h3></td>
		  </tr>
		  <tr> 
			<td rowspan="2"><h2 id ="density"></h2></td>
		  </tr>
		</table> 		 
		</div>
	</div>
</div>

<!-- Container (바글바글창업지수 확인 Section) -------------------------------------------------------------------------------------------------------->
<div id="portfolio" class="container-fluid text-center" style="padding-top: 30px; margin-bottom: 50px" > 
  <br><br>
  <div class ="row slideanim">
	  <h2>당신의 바글바글 창업지수는?</h2> 
	  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
	    <div class="carousel-inner" role="listbox">
	 		<div>
				<div id="chartdiv" style="height: 600px; width: 100%"></div>
	    	</div>
	    </div>
		<h2 style=" display: inline;">당신의 바글바글 창업지수는 <h1 id = "bagle_point"></h1></h2> 
	  </div>
  </div>
</div>

<!-- <!-- Container (Pricing Section) --> -->
<!-- <div id="pricing" class="container-fluid"> -->
<!--   <div class="text-center"> -->
<!--     <h2>Pricing</h2> -->
<!--     <h4>Choose a payment plan that works for you</h4> -->
<!--   </div> -->
<!--   <div class="row slideanim"> -->
<!--     <div class="col-sm-4 col-xs-12"> -->
<!--       <div class="panel panel-default text-center"> -->
<!--         <div class="panel-heading"> -->
<!--           <h1>Basic</h1> -->
<!--         </div> -->
<!--         <div class="panel-body"> -->
<!--           <p><strong>20</strong> Lorem</p> -->
<!--           <p><strong>15</strong> Ipsum</p> -->
<!--           <p><strong>5</strong> Dolor</p> -->
<!--           <p><strong>2</strong> Sit</p> -->
<!--           <p><strong>Endless</strong> Amet</p> -->
<!--         </div> -->
<!--         <div class="panel-footer"> -->
<!--           <h3>$19</h3> -->
<!--           <h4>per month</h4> -->
<!--           <button class="btn btn-lg">Sign Up</button> -->
<!--         </div> -->
<!--       </div>       -->
<!--     </div>      -->
<!--     <div class="col-sm-4 col-xs-12"> -->
<!--       <div class="panel panel-default text-center"> -->
<!--         <div class="panel-heading"> -->
<!--           <h1>Pro</h1> -->
<!--         </div> -->
<!--         <div class="panel-body"> -->
<!--           <p><strong>50</strong> Lorem</p> -->
<!--           <p><strong>25</strong> Ipsum</p> -->
<!--           <p><strong>10</strong> Dolor</p> -->
<!--           <p><strong>5</strong> Sit</p> -->
<!--           <p><strong>Endless</strong> Amet</p> -->
<!--         </div> -->
<!--         <div class="panel-footer"> -->
<!--           <h3>$29</h3> -->
<!--           <h4>per month</h4> -->
<!--           <button class="btn btn-lg">Sign Up</button> -->
<!--         </div> -->
<!--       </div>       -->
<!--     </div>        -->
<!--     <div class="col-sm-4 col-xs-12"> -->
<!--       <div class="panel panel-default text-center"> -->
<!--         <div class="panel-heading"> -->
<!--           <h1>Premium</h1> -->
<!--         </div> -->
<!--         <div class="panel-body"> -->
<!--           <p><strong>100</strong> Lorem</p> -->
<!--           <p><strong>50</strong> Ipsum</p> -->
<!--           <p><strong>25</strong> Dolor</p> -->
<!--           <p><strong>10</strong> Sit</p> -->
<!--           <p><strong>Endless</strong> Amet</p> -->
<!--         </div> -->
<!--         <div class="panel-footer"> -->
<!--           <h3>$49</h3> -->
<!--           <h4>per month</h4> -->
<!--           <button class="btn btn-lg">Sign Up</button> -->
<!--         </div> -->
<!--       </div>       -->
<!--     </div>     -->
<!--   </div> -->
<!-- </div> -->

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
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

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>@Copyright:바글바글</p>
</footer>

<script>
//------------------------------------------------------------------------------------------------------------------------------------
		$(document).ready(function(){
		  // Add smooth scrolling to all links in navbar + footer link
		  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
		    // Make sure this.hash has a value before overriding default behavior
		    if (this.hash !== "") {
		      // Prevent default anchor click behavior
		      event.preventDefault();
		
		      // Store hash
		      var hash = this.hash;
		
		      // Using jQuery's animate() method to add smooth page scroll
		      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
		      $('html, body').animate({
		        scrollTop: $(hash).offset().top
		      }, 400, function(){  
		   
		        // Add hash (#) to URL when done scrolling (default click behavior)
		        window.location.hash = hash;
		      });
		    } // End if
		  });
		  
		  $(window).scroll(function() {
		    $(".slideanim").each(function(){ 
		      var pos = $(this).offset().top;
		
		      var winTop = $(window).scrollTop();
		        if (pos < winTop + 700) { 
		          $(this).addClass("slide");
		        }
		    });
		  });
		});
//---------------------------------------------------------------------------------------------------------------------------------------
		
// 폐업률 그래프------------------------------------------------------------------------------------------------------------
	var peupchart = c3.generate({
		bindto : '#peupChartDiv',
		data: {
		        columns: 
		           	[]
		        ,
	        type: 'bar' 
	    },
	    axis: {
	        rotated: true, 
	        y: { 
	            max: 90,
	            min: 10
	        }
	    },
	    size: {
	        height: 300,
	        width: 600 
	    },
	    bar: {
	        width: {
	            ratio: 0.6  // this makes bar width 50% of length between ticks
	        } 
	    }
	});
	// 생존률 그래프------------------------------------------------------------------------------------------------------------	
	var livechart = c3.generate({
		bindto : '#liveChartDiv',
		data: {
		        columns: 
		           	[]
		        ,
	        type: 'bar' 
	    },
	    axis: {
	        rotated: true,
	        y: { 
	            max: 90,
	            min: 10
	        }
	    },
	    size: {
	        height: 300,
	        width: 600 
	    },
	    bar: {
	        width: {
	            ratio: 0.6 // this makes bar width 50% of length between ticks
	        }
	    }
	});
//---------------------------------------------------------------------------------------------------------------------------------------
	
// 직종별 파이차트------------------------------------------------------------------------------------------------------------
	var ratechart = c3.generate({
		bindto : '#ratechartDiv',
		data : { 
			columns :[],
			type : 'donut',	
		},
		size: {
       		height: 30%, 
        	width: 40% 
    	}
	});  
	//-----------------------------------------------------------------------------------------------------------------------------------

	var bagle=0; // 바글 지수 전역
	var map_center=""; // 맵중간 전역
// 조회 --------------------------------------------------------------------------------------------------------------------------------
		$(document).ready(function() {	
			$.ajax({
				url : "http://127.0.0.1:8090/bbs/json/result.bbs",
				type : "get", //get post둘중하나
				data : {},
				success : function(data) {
					// 시작부터 about으로
					function getOffsetTop(el) {
					  var top = 0;
					  if (el.offsetParent) {
					    do {
					      top += el.offsetTop;
					    } while (el = el.offsetParent);
					    return [top];
					  }
					}
					window.scroll(0, getOffsetTop(document.getElementById("about")));

						
					var obj = data; 
					var analysis_result = obj.analysis_result;
					var analysis_density = obj.analysis_density;
					var analysis_result_point = obj.analysis_result_point;
					var analysis_store_pl = obj.analysis_store_pl; 
					
 					var comboGu = ${gu};
 					var comboDong = ${dong};  
 					var comboType = ${type}; 
						
					var col = "["; 
					var peup = "[";
					var live = "[";
					var map_x;
					var map_y;

					var result1=0;
					var result2=0; 
					var result3=0; 
					var result4=0; 
					var result5=0; 
					var result6=0; 
					var result7=0; 
					var result8=0; 
					
					var peup1 =0;
					var peup2 =0;
					var peup3 =0;
					var live1 =0;
					var live2 =0;
					var live3 =0;
					
					var density= 0;
					var bagle1=0;
					
					
				// 직종비율 계산
					for (var i = 0; i < analysis_result.length; i++) {
						if (comboGu== analysis_result[i].GU ) {
							if ( comboDong == analysis_result[i].DONG) {
									var result1 = Math.round(analysis_result[i].CHICKEN * 100);
									var result2 = Math.round(analysis_result[i].BUNSIK* 100);
									var result3 = Math.round(analysis_result[i].YANGSIK* 100);
									var result4 = Math.round(analysis_result[i].BAR* 100);
									var result5 = Math.round(analysis_result[i].FISH* 100);
									var result6 = Math.round(analysis_result[i].CHINA* 100);
									var result7 = Math.round(analysis_result[i].KOREAN* 100);
									var result8 = Math.round(analysis_result[i].ETC* 100);
									map_x= analysis_result[i].MAP_X;
									map_y= analysis_result[i].MAP_Y;
									
									col += "['닭/오리요리'," + result1+ "],";
									col += "['분식'," + result2+ "],";
									col += "['양식'," + result3+ "],";
									col += "['유흥주점'," + result4+ "],";
									col += "['일식/수산물'," + result5+ "],";
									col += "['중식'," + result6+ "],";
									col += "['한식'," + result7+ "],";
									col += "['기타'," + result8+ "]";
							}
							else if (comboDong == "전체") {
								result1 += Math.round(analysis_result[i].CHICKEN * 100);
								result2 += Math.round(analysis_result[i].BUNSIK* 100);
								result3 += Math.round(analysis_result[i].YANGSIK* 100);
								result4 += Math.round(analysis_result[i].BAR* 100);
								result5 += Math.round(analysis_result[i].FISH* 100);
								result6 += Math.round(analysis_result[i].CHINA* 100);
								result7 += Math.round(analysis_result[i].KOREAN* 100);
								result8 += Math.round(analysis_result[i].ETC* 100);
								
								map_x = analysis_result[i].MAP_X;
								map_y = analysis_result[i].MAP_Y;
							} 
						}
					}
					if(comboDong == "전체"){
						col += "['닭/오리요리'," + result1+ "],";
						col += "['분식'," + result2+ "],";
						col += "['양식'," + result3+ "],";
						col += "['유흥주점'," + result4+ "],";
						col += "['일식/수산물'," + result5+ "],";
						col += "['중식'," + result6+ "],";
						col += "['한식'," + result7+ "],";
						col += "['기타'," + result8+ "]"; 
					}
//-------------------------------------------------------------------------------------------------------------------------
					// 폐업률 계산, 결과값 
					var dong_count =0;
					for (var i = 0; i < analysis_store_pl.length; i++) { 
						if ( comboType == analysis_store_pl[i].TYPE && comboDong == analysis_store_pl[i].DONG) {
							peup += "['1년 이내'," + Math.round(analysis_store_pl[i].P_YEAR1* 100) + "],";
							peup += "['1~2년 이내'," + Math.round(analysis_store_pl[i].P_YEAR2* 100) + "],";
							peup += "['2~3년 이내'," + Math.round(analysis_store_pl[i].cYEAR3* 100)  + "]";	
						}	
						else if ( comboType == analysis_store_pl[i].TYPE && comboDong == "전체" && comboGu == analysis_store_pl[i].GU) {
							dong_count += 1;
							peup1 += analysis_store_pl[i].P_YEAR1 * 100;
							peup2 += analysis_store_pl[i].P_YEAR2 * 100;
							peup3 += analysis_store_pl[i].P_YEAR3 * 100;
						}	
					}
					if(comboDong == "전체"){
						peup += "['1년 이내'," + Math.round(peup1/dong_count) + "],";
						peup += "['1~2년 이내'," + Math.round(peup2/dong_count)  + "],";
						peup += "['2~3년 이내'," + Math.round(peup3/dong_count)   + "]";  
					}
					
					// 생존률 계산, 결과값
					var dong_count =0;
					for (var i = 0; i < analysis_store_pl.length; i++) {
						if ( comboType == analysis_store_pl[i].TYPE && comboDong == analysis_store_pl[i].DONG) {
							live += "['1년 이내'," + Math.round(analysis_store_pl[i].L_YEAR1* 100) + "],";
							live += "['1~2년 이내'," + Math.round(analysis_store_pl[i].L_YEAR2* 100) + "],";
							live += "['2~3년 이내'," + Math.round(analysis_store_pl[i].L_YEAR3* 100)  + "]";	
						}	
						else if ( comboType == analysis_store_pl[i].TYPE && comboDong == "전체" && comboGu == analysis_store_pl[i].GU) {
							dong_count += 1;
							live1 += analysis_store_pl[i].L_YEAR1 * 100;
							live2 += analysis_store_pl[i].L_YEAR2 * 100;
							live3 += analysis_store_pl[i].L_YEAR3 * 100;
						}	
					}
					if(comboDong == "전체"){
						live += "['1년 이내'," + Math.round(live1/dong_count) + "],";
						live += "['1~2년 이내'," + Math.round(live2/dong_count)  + "],";
						live += "['2~3년 이내'," + Math.round(live3/dong_count)   + "]";  
					}
//-------------------------------------------------------------------------------------------------------------------------
// 창업지수확인
					for (var i = 0; i < analysis_result_point.length; i++) {
						if ( comboType == analysis_result_point[i].TYPE && comboDong == analysis_result_point[i].DONG) {
							bagle = Math.round(analysis_result_point[i].BAGLE_POINT_3, 1);	
						}	
						else if ( comboType == analysis_result_point[i].TYPE && comboDong == "전체" && comboGu == analysis_result_point[i].GU) {
							dong_count += 1;
							bagle1 += analysis_result_point[i].BAGLE_POINT_3 * 100;
						}	
					}
					if(comboDong == "전체"){
						bagle = Math.round(bagle1/dong_count, 1);
					}
					
// 포화도----------------------------------------------------------------------------------------------------------------------------------
					for (var i = 0; i < analysis_density.length; i++) {
						if ( comboType == analysis_density[i].TYPE && comboDong == analysis_density[i].DONG) {
							density = Math.round(analysis_density[i].DENSITY,2);
							var x = analysis_density[i].X; 
							var y =  analysis_density[i].Y; 
							map_center = "new kakao.maps.LatLng(" + x + "," + y + ")";
						}	
						else if ( comboType == analysis_density[i].TYPE && comboDong == "전체" && comboGu == analysis_density[i].GU) {
							dong_count += 1;
							density += analysis_density[i].DENSITY ;
							
							var x = analysis_density[i].X; 
							var y =  analysis_density[i].Y; 
							map_center = "new kakao.maps.LatLng(" + x + "," + y + ")";
						}	
					}
					if(comboDong == "전체"){
						density = Math.round(density/dong_count,2);
					}
					
//--------------------------------------------------------------------------------------------------------------------------
					col += "]";
					peup += "]";
					live += "]";
								
					// 결과 표시 항목을 출력
					$("#choose_dong").html(comboGu+ " "+comboDong + " 분석 결과 ");
					$("#choose_type").html(comboType + " 직종 현황");
					$("#choosetype").html(comboType); 
					$("#choosegu").html(comboGu);
					$("#choosedong").html(comboDong);
					$("#choose_dong_map").html(comboDong + "　/"); // 지도아래 선택 동
					$("#choose_type_map").html("　"+comboType); // 지도아래 선택 타입 
					$("#bagle_point").html(bagle+"점!!");
					$("#density").html("면적 당 점포수 비 "+density+" % "); 
					
//----------------------------------------------------------------------------------------------------------------------------------
					
// 직종별 파이차트 새로고침---------------------------------------------------------------------------------------------------------------------
					setTimeout(function () {
					    ratechart.load({
					        columns: 
					            eval(col)
				            ,
				            colors: {
					            "닭/오리요리": 'ff8a5c', 
					            "분식": 'fec771',
					            "양식": 'badfdb',
					            "유흥주점": 'ff8080',
					            "일식/수산물": 'ffba92',
					            "중식": '1fab89',
					            "한식": '49beb7', 
					            "기타": 'fcf9ea'
					        }
					    });
					    }, 300);  
					    
// 특정 직종의 1~3년 폐업률 /생존 그래프 바 새로고침------------------------------------------------------------------------------------------------	
			// 폐업 차트
					setTimeout(function () {
					    peupchart.load({
					        columns: 
					        	eval(peup)
							,
							 colors: {
									"1년 이내": 'eb7070', 
						            "1~2년 이내": 'fec771',
						            "2~3년 이내": '64e291'
						        }
					    	});
					    }, 1500);
		 	// 생존율 차트
					setTimeout(function () {
					   	livechart.load({
					        columns: 
					        	eval(live)
							,
							 colors: {
								 	"1년 이내": 'eb7070', 
						            "1~2년 이내": 'fec771',
						            "2~3년 이내": '64e291'
						        }
					    	});
					    }, 1000);   
					
					// 폐업 / 생존 차트 보이게 하기
					document.getElementById("peupChartDiv").style.visibility="visible";
					document.getElementById("liveChartDiv").style.visibility="visible";
					// 타입별 이미지 보이기
					
					
					if(comboType=="닭/오리요리")
						document.getElementById("type_img").src = "./resources/chicken.png"; 
					else if(comboType=="분식")
						document.getElementById("type_img").src = "./resources/bunsik.png"; 
					else if(comboType=="양식")
						document.getElementById("type_img").src = "./resources/yangsik.png"; 
					else if(comboType=="유흥주점")
						document.getElementById("type_img").src = "./resources/bar.png"; 
					else if(comboType=="일식/수산물")
						document.getElementById("type_img").src = "./resources/fish.png"; 
					else if(comboType=="중식")
						document.getElementById("type_img").src = "./resources/china.png"; 
					else if(comboType=="한식") 
						document.getElementById("type_img").src = "./resources/korean.png"; 
					else if(comboType=="기타")
						document.getElementById("type_img").src = "./resources/etc.png"; 
					
					document.getElementById("type_img").style.visibility="visible";
		
//------------------------------------------------------------------------------------------------------------------------------------------
 				}
			});
// 영업중인 가게 불러오기 ajax ---------------------------------------------------------------------------------------------------
			$.ajax({
				url : "http://127.0.0.1:8090/bbs/json/store.bbs",
				type : "get", //get post둘중하나
				data : {},
				success : function(data) {
					var obj = data;
					var store = obj.store;
					
					var comboGu = ${gu};
 					var comboDong = ${dong};  
 					var comboType = ${type}; 
					
					var col = "["; 
					var map_x;
					var map_y;
					var sang;
					var store_name;
					var map_xy ="["; 
					var all_store_count = 0;
					var type_store_count = 0;
					
					
					for (var i = 0; i < store.length; i++) {
						if (comboGu == store[i].GU) {
							if (comboDong == store[i].DONG) { 
								//같은 구에 있는 전체 가게 갯수 +1
								all_store_count += 1;
								if(comboType == store[i].STORE_TYPE){
									
									// 같은 타입인 가게당 +1
									type_store_count += 1;
									
									var gu = store[i].GU;
									var dong = store[i].DONG;
							
									map_x= store[i].X;
									map_y= store[i].Y;
									store_name = store[i].STORE_NAME;
									
									if(map_xy == "[")
										map_xy += "{title: '"+ store_name +"',latlng: new kakao.maps.LatLng(" + map_x + "," + map_y + ")}";
									else
										map_xy += ",{title: '"+ store_name +"',latlng: new kakao.maps.LatLng(" + map_x + "," + map_y + ")}";
								}
							}
							else if (comboDong == "전체") {
								//같은 구에 있는 전체 가게 갯수 +1
								all_store_count += 1;
								
								if(comboType == store[i].STORE_TYPE){
									
									// 같은 타입인 가게당 +1
									type_store_count += 1;
									
									var gu = store[i].GU;
									var dong = store[i].DONG;
									
									map_x= store[i].X;
									map_y= store[i].Y;
									store_name = store[i].STORE_NAME;
									
									
									if(map_xy == "[")
										map_xy += "{title: '"+ store_name +"',latlng: new kakao.maps.LatLng(" + map_x + "," + map_y + ")}";
									else
										map_xy += ",{title: '"+ store_name +"',latlng: new kakao.maps.LatLng(" + map_x + "," + map_y + ")}";
								} 
							}
						}
					}
					
					map_xy += "]";
								
//------------------------------------------------------------------------------------------------------------------------------------------
					
					var html = "";
					html += "<table border=1>"
					html += "<tr>";
					html += "<td>" + map_xy + "</td>";
					html += "</tr>";
					html += "</table>";
// 					$("#combo").append(html); 

					$("#all_store_count").html(" "+ all_store_count);
					$("#type_store_count").html(" "+ type_store_count);
					$("#type_store_per").html(" "+ Math.round(type_store_count/all_store_count * 100)+"%");
							
					
// ---------------------지도 출력 ----------------------------------------------------------------------------------------------------------------
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
					
					mapOption = { 
					    center: eval(map_center), // 지도의 중심좌표 
					    level: 4 // 지도의 확대 레벨
					};
					
					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
					
					//마커를 표시할 위치와 title 객체 배열입니다 
					var positions = eval(map_xy);
					
					//마커 이미지의 이미지 주소입니다
					var imageSrc = "./resources/markerDot4.png"; 
				 
					// 마우스 휠과 모바일 터치를 이용한 지도 확대, 축소를 막는다
// 					map.setZoomable(false);   

					// 지도 타입 변경 컨트롤을 생성한다
					var mapTypeControl = new kakao.maps.MapTypeControl();

					// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
					map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);	

					// 지도에 확대 축소 컨트롤을 생성한다
					var zoomControl = new kakao.maps.ZoomControl();

					// 지도의 우측에 확대 축소 컨트롤을 추가한다
					map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
					
					for (var i = 0; i < positions.length; i ++) {
						
						// 마커 이미지의 이미지 크기 입니다
						var imageSize = new kakao.maps.Size(15, 21); 
						
						// 마커 이미지를 생성합니다    
						var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
					
						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
						    map: map, // 마커를 표시할 지도
						    position: positions[i].latlng, // 마커를 표시할 위치
						    title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
						    image : markerImage // 마커 이미지 
						});
					}
					
//------------------------------------------------------------------------------------------------------------------------------------
					// 창업지수 차트 생성     
					am4core.ready(function() {
					// Themes begin  
					am4core.useTheme(am4themes_material); 
					// Themes end
				
					// create chart
					var chart = am4core.create("chartdiv", am4charts.GaugeChart);
					chart.hiddenState.properties.opacity = 0; // this makes initial fade in effect
					
					chart.innerRadius = -25;
					
					var axis = chart.xAxes.push(new am4charts.ValueAxis());
					axis.min = 0;
					axis.max = 100;
					axis.strictMinMax = true;
					axis.renderer.grid.template.stroke = new am4core.InterfaceColorSet().getFor("background");
					axis.renderer.grid.template.strokeOpacity = 0.3;
					
					var colorSet = new am4core.ColorSet();
					
					var range0 = axis.axisRanges.create();
					range0.value = 0;
					range0.endValue = 20;
					range0.axisFill.fillOpacity = 1; 
					range0.axisFill.fill = colorSet.getIndex(3);  // 빨 3
					range0.axisFill.zIndex = - 1;
					
					var range1 = axis.axisRanges.create();
					range1.value = 20;
					range1.endValue = 40;
					range1.axisFill.fillOpacity = 1;
					range1.axisFill.fill = colorSet.getIndex(13);  //주  14,13
					range1.axisFill.zIndex = -1;
					
					var range2 = axis.axisRanges.create();
					range2.value = 40;
					range2.endValue = 60;
					range2.axisFill.fillOpacity = 1; 
					range2.axisFill.fill = colorSet.getIndex(2);  //노  2
					range2.axisFill.zIndex = -1;
					
					var range3 = axis.axisRanges.create();
					range3.value = 60;
					range3.endValue = 80;
					range3.axisFill.fillOpacity = 1;
					range3.axisFill.fill = colorSet.getIndex(1);  // 초1
					range3.axisFill.zIndex = -1;

					var range4 = axis.axisRanges.create();
					range4.value = 80;
					range4.endValue = 100;
					range4.axisFill.fillOpacity = 1;
					range4.axisFill.fill = colorSet.getIndex(0); // 파 0
					range4.axisFill.zIndex = -1;
					
					var hand = chart.hands.push(new am4charts.ClockHand());
					
					// using chart.setTimeout method as the timeout will be disposed together with a chart
					chart.setTimeout(setValue, 3000);
					
					// VALUE값 넣는 부분-------------------------------------------------------------------------------------------------
					function setValue() {
					    hand.showValue(eval(bagle), 3000, am4core.ease.cubicOut);
					}
					
					}); // end am4core.ready()
//---------------------------------------------------------------------------------------------------------------------------------------					
					
					
					
					
//-----------------------------------------------------------------------------------------------------------------------------
 				}
			});
//---------가게 불러오기 ajax 끝------------------------------------------------------------------------------------------------------------------
			return false; //자기자신이 submit이나 뭔가 실행하는기능이 있다면 그것을 막고 위에 내용만 실행  --- ajax 두개 끝
// 		}
		});
// 	});  
	
// 조회 버튼 누르면 그래프 그리기------------------------------------------------------------------------------------------------
	
				
	

//-----검색 버튼 클릭 구현끝 ------------------------------------------------------------------------------------------------------------------------

// <구·군> 콤보박스 띄우기---------------------------------------------------------------------------------------------------------
	
	$(document).ready(
			function() {
				$.getJSON("http://127.0.0.1:8090/bbs/json/result.bbs", function(data) {
					var obj = data;
					var analysis_result = obj.analysis_result;
					var gu;
					
					for (var i = 0; i < analysis_result.length; i++) {
								if(gu ==  analysis_result[i].GU){}
								else{	
									var option = "<option value='" + analysis_result[i].GU + "'>"+ analysis_result[i].GU + "</option>";
									$('#gu').append(option);
									gu =  analysis_result[i].GU;
									
								}
						}
				});
			});

//-----------------------------------------------------------------------------------------------------------------------------
				
// <동·읍·면> 동적콤보박스 띄우기---------------------------------------------------------------------------------------------------------
	$(document).ready(function() {
		 $('#gu').change(function(){
			$.ajax({
				url : "http://127.0.0.1:8090/bbs/json/result.bbs",
				type : "get",
				data : {},
				success : function(data) {
					var obj = data;
		 			var analysis_result = obj.analysis_result;
			        var comboGu = document.getElementById("gu").value;
			        
			        $('#dong').children("option").remove();
			        
			        var option = "<option value='전체'>전체</option>";
					 $('#dong').append(option);
					 
					for (var i = 0; i < analysis_result.length; i++) {
						if(analysis_result[i].GU == comboGu){	
							 var option = "<option value='" + analysis_result[i].DONG + "'>" + analysis_result[i].DONG + "</option>";
							 $('#dong').append(option);
							}
						} 
					}
				});
			 });
			});
//---------------------------------------------------------------------------------------------------------------------------------------
	
//---------------------------------------------------------------------------------------------------------------------------------------

</script>

<script>
			$(document).ready(function() {
				$("#search").click(function() {
					if( document.getElementById("gu").value == "구 · 군")
						alert("구 · 군을 선택하세요");
					else{
					$.ajax({
						url : "http://127.0.0.1:8090/bbs/json/result.bbs",
						type : "get", //get post둘중하나
						data : {},
						success : function(data) {
							var obj = data; 
							var analysis_result = obj.analysis_result;
							var analysis_density = obj.analysis_density;
							var analysis_result_point = obj.analysis_result_point;
							var analysis_store_pl = obj.analysis_store_pl; 
							
		 					var comboGu = document.getElementById("gu").value;
		 					var comboDong = document.getElementById("dong").value;
		 					var comboType = document.getElementById("type").value;
								
							var col = "["; 
							var peup = "[";
							var live = "[";
							var map_x;
							var map_y;

							var result1=0;
							var result2=0; 
							var result3=0; 
							var result4=0; 
							var result5=0; 
							var result6=0; 
							var result7=0; 
							var result8=0; 
							
							var peup1 =0;
							var peup2 =0;
							var peup3 =0;
							var live1 =0;
							var live2 =0;
							var live3 =0;
							
							var density= 0;
							var bagle1=0;
							
							
						// 직종비율 계산
							for (var i = 0; i < analysis_result.length; i++) {
								if (comboGu== analysis_result[i].GU ) {
									if ( comboDong == analysis_result[i].DONG) {
											var result1 = Math.round(analysis_result[i].CHICKEN * 100);
											var result2 = Math.round(analysis_result[i].BUNSIK* 100);
											var result3 = Math.round(analysis_result[i].YANGSIK* 100);
											var result4 = Math.round(analysis_result[i].BAR* 100);
											var result5 = Math.round(analysis_result[i].FISH* 100);
											var result6 = Math.round(analysis_result[i].CHINA* 100);
											var result7 = Math.round(analysis_result[i].KOREAN* 100);
											var result8 = Math.round(analysis_result[i].ETC* 100);
											map_x= analysis_result[i].MAP_X;
											map_y= analysis_result[i].MAP_Y;
											
											col += "['닭/오리요리'," + result1+ "],";
											col += "['분식'," + result2+ "],";
											col += "['양식'," + result3+ "],";
											col += "['유흥주점'," + result4+ "],";
											col += "['일식/수산물'," + result5+ "],";
											col += "['중식'," + result6+ "],";
											col += "['한식'," + result7+ "],";
											col += "['기타'," + result8+ "]";
									}
									else if (comboDong == "전체") {
										result1 += Math.round(analysis_result[i].CHICKEN * 100);
										result2 += Math.round(analysis_result[i].BUNSIK* 100);
										result3 += Math.round(analysis_result[i].YANGSIK* 100);
										result4 += Math.round(analysis_result[i].BAR* 100);
										result5 += Math.round(analysis_result[i].FISH* 100);
										result6 += Math.round(analysis_result[i].CHINA* 100);
										result7 += Math.round(analysis_result[i].KOREAN* 100);
										result8 += Math.round(analysis_result[i].ETC* 100);
										
										map_x = analysis_result[i].MAP_X;
										map_y = analysis_result[i].MAP_Y;
									} 
								}
							}
							if(comboDong == "전체"){
								col += "['닭/오리요리'," + result1+ "],";
								col += "['분식'," + result2+ "],";
								col += "['양식'," + result3+ "],";
								col += "['유흥주점'," + result4+ "],";
								col += "['일식/수산물'," + result5+ "],";
								col += "['중식'," + result6+ "],";
								col += "['한식'," + result7+ "],";
								col += "['기타'," + result8+ "]"; 
							}
		//-------------------------------------------------------------------------------------------------------------------------
							// 폐업률 계산, 결과값 
							var dong_count =0;
							for (var i = 0; i < analysis_store_pl.length; i++) {
								if ( comboType == analysis_store_pl[i].TYPE && comboDong == analysis_store_pl[i].DONG) {
									peup += "['1년 이내'," + Math.round(analysis_store_pl[i].P_YEAR1* 100) + "],";
									peup += "['1~2년 이내'," + Math.round(analysis_store_pl[i].P_YEAR2* 100) + "],";
									peup += "['2~3년 이내'," + Math.round(analysis_store_pl[i].cYEAR3* 100)  + "]";	
								}	
								else if ( comboType == analysis_store_pl[i].TYPE && comboDong == "전체" && comboGu == analysis_store_pl[i].GU) {
									dong_count += 1;
									peup1 += analysis_store_pl[i].P_YEAR1 * 100;
									peup2 += analysis_store_pl[i].P_YEAR2 * 100;
									peup3 += analysis_store_pl[i].P_YEAR3 * 100;
								}	
							}
							if(comboDong == "전체"){
								peup += "['1년 이내'," + Math.round(peup1/dong_count) + "],";
								peup += "['1~2년 이내'," + Math.round(peup2/dong_count)  + "],";
								peup += "['2~3년 이내'," + Math.round(peup3/dong_count)   + "]";  
							}
							
							// 생존률 계산, 결과값
							var dong_count =0;
							for (var i = 0; i < analysis_store_pl.length; i++) {
								if ( comboType == analysis_store_pl[i].TYPE && comboDong == analysis_store_pl[i].DONG) {
									live += "['1년 이내'," + Math.round(analysis_store_pl[i].L_YEAR1* 100) + "],";
									live += "['1~2년 이내'," + Math.round(analysis_store_pl[i].L_YEAR2* 100) + "],";
									live += "['2~3년 이내'," + Math.round(analysis_store_pl[i].L_YEAR3* 100)  + "]";	
								}	
								else if ( comboType == analysis_store_pl[i].TYPE && comboDong == "전체" && comboGu == analysis_store_pl[i].GU) {
									dong_count += 1;
									live1 += analysis_store_pl[i].L_YEAR1 * 100;
									live2 += analysis_store_pl[i].L_YEAR2 * 100;
									live3 += analysis_store_pl[i].L_YEAR3 * 100;
								}	
							}
							if(comboDong == "전체"){
								live += "['1년 이내'," + Math.round(live1/dong_count) + "],";
								live += "['1~2년 이내'," + Math.round(live2/dong_count)  + "],";
								live += "['2~3년 이내'," + Math.round(live3/dong_count)   + "]";  
							}
		//-------------------------------------------------------------------------------------------------------------------------
		// 창업지수확인
							for (var i = 0; i < analysis_result_point.length; i++) {
								if ( comboType == analysis_result_point[i].TYPE && comboDong == analysis_result_point[i].DONG) {
									bagle = Math.round(analysis_result_point[i].BAGLE_POINT_3,1);	
								}	
								else if ( comboType == analysis_result_point[i].TYPE && comboDong == "전체" && comboGu == analysis_result_point[i].GU) {
									dong_count += 1;
									bagle1 += analysis_result_point[i].BAGLE_POINT_3 * 100;
								}	
							}
							if(comboDong == "전체"){
								bagle = Math.round(bagle1/dong_count,1);
							}
							
		// 포화도----------------------------------------------------------------------------------------------------------------------------------
							for (var i = 0; i < analysis_density.length; i++) {
								if ( comboType == analysis_density[i].TYPE && comboDong == analysis_density[i].DONG) {
									density = Math.round(analysis_density[i].DENSITY,2);
									var x = analysis_density[i].X; 
									var y =  analysis_density[i].Y; 
									map_center = "new kakao.maps.LatLng(" + x + "," + y + ")";
								}	
								else if ( comboType == analysis_density[i].TYPE && comboDong == "전체" && comboGu == analysis_density[i].GU) {
									dong_count += 1;
									density += analysis_density[i].DENSITY ;
									
									var x = analysis_density[i].X; 
									var y =  analysis_density[i].Y; 
									map_center = "new kakao.maps.LatLng(" + x + "," + y + ")";
								}	
							}
							if(comboDong == "전체"){
								density = Math.round(density/dong_count,2);
							}
							
		//--------------------------------------------------------------------------------------------------------------------------
							col += "]";
							peup += "]";
							live += "]";
										
							// 결과 표시 항목을 출력
							$("#choose_dong").html(comboGu+ " "+comboDong + " 분석 결과 ");
							$("#choose_type").html(comboType + " 직종 현황");
							$("#choosetype").html(comboType); 
							$("#choosegu").html(comboGu);
							$("#choosedong").html(comboDong);
							$("#choose_dong_map").html(comboDong + "　/"); // 지도아래 선택 동
							$("#choose_type_map").html("　"+comboType); // 지도아래 선택 타입 
							$("#bagle_point").html(bagle+"점!!");
							$("#density").html("면적 당 점포수 비 "+density+" % "); 
							
		//----------------------------------------------------------------------------------------------------------------------------------
							
		// 직종별 파이차트 새로고침---------------------------------------------------------------------------------------------------------------------
							setTimeout(function () {
							    ratechart.load({
							        columns: 
							            eval(col)
						            ,
						            colors: {
							            "닭/오리요리": 'ff8a5c', 
							            "분식": 'fec771',
							            "양식": 'badfdb',
							            "유흥주점": 'ff8080',
							            "일식/수산물": 'ffba92',
							            "중식": '1fab89',
							            "한식": '49beb7', 
							            "기타": 'fcf9ea'
							        }
							    });
							    }, 300);  
							    
		// 특정 직종의 1~3년 폐업률 /생존 그래프 바 새로고침------------------------------------------------------------------------------------------------	
					// 폐업 차트
							setTimeout(function () {
							    peupchart.load({
							        columns: 
							        	eval(peup)
									,
									 colors: {
								            "1년 이내": 'eb7070', 
								            "1~2년 이내": 'fec771',
								            "2~3년 이내": '64e291'
								        }
							    	});
							    }, 1500);
				 	// 생존율 차트
							setTimeout(function () {
							   	livechart.load({
							        columns: 
							        	eval(live)
									,
									 colors: {
								            "1년 이내": 'eb7070', 
								            "1~2년 이내": 'fec771',
								            "2~3년 이내": '64e291'
								        }
							    	});
							    }, 1000);   
							
							// 폐업 / 생존 차트 보이게 하기
							document.getElementById("peupChartDiv").style.visibility="visible";
							document.getElementById("liveChartDiv").style.visibility="visible";
							// 타입별 이미지 보이기
							
							
							if(comboType=="닭/오리요리")
								document.getElementById("type_img").src = "./resources/chicken.png"; 
							else if(comboType=="분식")
								document.getElementById("type_img").src = "./resources/bunsik.png"; 
							else if(comboType=="양식")
								document.getElementById("type_img").src = "./resources/yangsik.png"; 
							else if(comboType=="유흥주점")
								document.getElementById("type_img").src = "./resources/bar.png"; 
							else if(comboType=="일식/수산물")
								document.getElementById("type_img").src = "./resources/fish.png"; 
							else if(comboType=="중식")
								document.getElementById("type_img").src = "./resources/china.png"; 
							else if(comboType=="한식") 
								document.getElementById("type_img").src = "./resources/korean.png"; 
							else if(comboType=="기타")
								document.getElementById("type_img").src = "./resources/etc.png"; 
							
							document.getElementById("type_img").style.visibility="visible";
				
		//------------------------------------------------------------------------------------------------------------------------------------------
		 				}
					});
		// 영업중인 가게 불러오기 ajax ---------------------------------------------------------------------------------------------------
					$.ajax({
						url : "http://127.0.0.1:8090/bbs/json/store.bbs",
						type : "get", //get post둘중하나
						data : {},
						success : function(data) {
							var obj = data;
							var store = obj.store;
							
							var comboGu = document.getElementById("gu").value;
		 					var comboDong = document.getElementById("dong").value;
		 					var comboType = document.getElementById("type").value;
		 					 
							var col = "["; 
							var map_x;
							var map_y;
							var sang;
							var store_name;
							var map_xy ="["; 
							var all_store_count = 0;
							var type_store_count = 0;
							
							
							for (var i = 0; i < store.length; i++) {
								if (comboGu == store[i].GU) {
									if (comboDong == store[i].DONG) { 
										//같은 구에 있는 전체 가게 갯수 +1
										all_store_count += 1;
										if(comboType == store[i].STORE_TYPE){
											
											// 같은 타입인 가게당 +1
											type_store_count += 1;
											
											var gu = store[i].GU;
											var dong = store[i].DONG;
									
											map_x= store[i].X;
											map_y= store[i].Y;
											store_name = store[i].STORE_NAME;
											
											if(map_xy == "[")
												map_xy += "{title: '"+ store_name +"',latlng: new kakao.maps.LatLng(" + map_x + "," + map_y + ")}";
											else
												map_xy += ",{title: '"+ store_name +"',latlng: new kakao.maps.LatLng(" + map_x + "," + map_y + ")}";
										}
									}
									else if (comboDong == "전체") {
										//같은 구에 있는 전체 가게 갯수 +1
										all_store_count += 1;
										
										if(comboType == store[i].STORE_TYPE){
											
											// 같은 타입인 가게당 +1
											type_store_count += 1;
											
											var gu = store[i].GU;
											var dong = store[i].DONG;
											
											map_x= store[i].X;
											map_y= store[i].Y;
											store_name = store[i].STORE_NAME;
											
											
											if(map_xy == "[")
												map_xy += "{title: '"+ store_name +"',latlng: new kakao.maps.LatLng(" + map_x + "," + map_y + ")}";
											else
												map_xy += ",{title: '"+ store_name +"',latlng: new kakao.maps.LatLng(" + map_x + "," + map_y + ")}";
										} 
									}
								}
							}
							
							map_xy += "]";
										
		//------------------------------------------------------------------------------------------------------------------------------------------
							
							var html = "";
							html += "<table border=1>"
							html += "<tr>";
							html += "<td>" + map_xy + "</td>";
							html += "</tr>";
							html += "</table>";
//		 					$("#combo").append(html); 

							$("#all_store_count").html(" "+ all_store_count);
							$("#type_store_count").html(" "+ type_store_count);
							$("#type_store_per").html(" "+ Math.round(type_store_count/all_store_count * 100)+"%");
									
							
		// ---------------------지도 출력 ----------------------------------------------------------------------------------------------------------------
							
							
					$("#map").remove();
					var html = "<div id = 'map' style = 'width: 80%; height: 650px;'></div>";
					$("#mapDiv").append(html); 
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
					
					mapOption = { 
					    center: eval(map_center), // 지도의 중심좌표 
					    level: 4 // 지도의 확대 레벨
					};
					
					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
					
					//마커를 표시할 위치와 title 객체 배열입니다 
					var positions = eval(map_xy);
					
					//마커 이미지의 이미지 주소입니다
					var imageSrc = "./resources/markerDot4.png"; 
				 
					// 마우스 휠과 모바일 터치를 이용한 지도 확대, 축소를 막는다
// 					map.setZoomable(false);   

					// 지도 타입 변경 컨트롤을 생성한다
					var mapTypeControl = new kakao.maps.MapTypeControl();

					// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
					map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);	

					// 지도에 확대 축소 컨트롤을 생성한다
					var zoomControl = new kakao.maps.ZoomControl();

					// 지도의 우측에 확대 축소 컨트롤을 추가한다
					map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
					
					for (var i = 0; i < positions.length; i ++) {
						
						// 마커 이미지의 이미지 크기 입니다
						var imageSize = new kakao.maps.Size(15, 21); 
						
						// 마커 이미지를 생성합니다    
						var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
					
						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
						    map: map, // 마커를 표시할 지도
						    position: positions[i].latlng, // 마커를 표시할 위치
						    title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
						    image : markerImage // 마커 이미지 
						});
					}
		//------------------------------------------------------------------------------------------------------------------------------------
						// 창업지수 차트 생성     
					am4core.ready(function() {
					// Themes begin  
					am4core.useTheme(am4themes_material); 
					// Themes end
				
					// create chart
					var chart = am4core.create("chartdiv", am4charts.GaugeChart);
					chart.hiddenState.properties.opacity = 0; // this makes initial fade in effect
					
					chart.innerRadius = -25;
					
					var axis = chart.xAxes.push(new am4charts.ValueAxis());
					axis.min = 0;
					axis.max = 100;
					axis.strictMinMax = true;
					axis.renderer.grid.template.stroke = new am4core.InterfaceColorSet().getFor("background");
					axis.renderer.grid.template.strokeOpacity = 0.3;
					
					var colorSet = new am4core.ColorSet();
					
					var range0 = axis.axisRanges.create();
					range0.value = 0;
					range0.endValue = 20;
					range0.axisFill.fillOpacity = 1; 
					range0.axisFill.fill = colorSet.getIndex(3);  // 빨 3
					range0.axisFill.zIndex = - 1;
					
					var range1 = axis.axisRanges.create();
					range1.value = 20;
					range1.endValue = 40;
					range1.axisFill.fillOpacity = 1;
					range1.axisFill.fill = colorSet.getIndex(13);  //주  14,13
					range1.axisFill.zIndex = -1;
					
					var range2 = axis.axisRanges.create();
					range2.value = 40;
					range2.endValue = 60;
					range2.axisFill.fillOpacity = 1; 
					range2.axisFill.fill = colorSet.getIndex(2);  //노  2
					range2.axisFill.zIndex = -1;
					
					var range3 = axis.axisRanges.create();
					range3.value = 60;
					range3.endValue = 80;
					range3.axisFill.fillOpacity = 1;
					range3.axisFill.fill = colorSet.getIndex(1);  // 초1
					range3.axisFill.zIndex = -1;

					var range4 = axis.axisRanges.create();
					range4.value = 80;
					range4.endValue = 100;
					range4.axisFill.fillOpacity = 1;
					range4.axisFill.fill = colorSet.getIndex(0); // 파 0
					range4.axisFill.zIndex = -1;
					
					var hand = chart.hands.push(new am4charts.ClockHand());
					
					// using chart.setTimeout method as the timeout will be disposed together with a chart
					chart.setTimeout(setValue, 3000);
					
					// VALUE값 넣는 부분-------------------------------------------------------------------------------------------------
					function setValue() {
					    hand.showValue(eval(bagle), 3000, am4core.ease.cubicOut);
					}
					
					}); // end am4core.ready()	
		//-------------------------------------------------------------------------------------------------------------------------------------
		 				}
					});
		//---------가게 불러오기 ajax 끝------------------------------------------------------------------------------------------------------------------
					return false; //자기자신이 submit이나 뭔가 실행하는기능이 있다면 그것을 막고 위에 내용만 실행  --- ajax 두개 끝
		 		}
				});
		});
</script>


</body>
</html>
    