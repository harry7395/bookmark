<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <!-- Theme Made By www.w3schools.com -->
  <title>Bootstrap Theme Company Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!--  slick   -->
	<!--  slick   -->
  <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
  <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.0/slick/slick-theme.css"/>
  <script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.0/slick/slick.min.js"></script>
  	<!--  slick   -->
	<!--  slick   -->
  <style>
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
    height: 100vh;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
/*     margin-bottom: 10px; */
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
/*     color: #303030; */
/*     font-weight: 400; */
	margin-bottom: 0px;
  }  
  fieldset { 
	  border: none;
	  margin: 0;
	  padding: 0;
  }
  /*						*/
  /*						*/
  /*						*/
  ul { list-style: none; margin: 0px; padding: 0px;}
  a { cursor: pointer; }
  /*						*/  
  /*						*/  
  /*						*/  
  /*						*/  
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif, Apple Gothic, 돋움;
  }
  .container {
  	padding-right: 0px;
    padding-left: 0;
  }
  .container-fluid {
    padding: 60px 50px;
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
    margin-bottom: 10px;
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
/*     margin: 70px 0; */
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
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
  .nav-container { display: flex; align-items: center; justify-content: space-between; margin: 0 auto; width: 75%; }
  .navbar {
    margin-bottom: 0;
    background-color: #fff;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
/*     letter-spacing: 2px; */
    border-radius: 0;
    font-family: Montserrat, sans-serif, Apple Gothic, 돋움;
    border-bottom: 1px #e6e8eb solid;
  }
  .navbar-right { margin: 0px; display: flex; align-items: center; }
  .navbar-right li { margin-left: 5px; }
  .navbar-right li a { padding: 0px 15px; vertical-align: middle; }
  .navbar li a, .navbar .navbar-brand {
    color: #3690d9 !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
  }
  .nav-sidebar{
  	position: fixed;
  	display: flex;
  	flex-direction: column;
  	padding: 15px;
    width: 77px;
  	height: 100%;
  	border-right: 1px #e6e8eb solid;
  }
  .sidebar-icon{
  
  }
  
  .btn-line { 
    background-color: #fff;
    border: 1px solid #99D1FF;
    border-radius: 3px;
    color: #3690d9;
    font-size: 13px;
    height: 35px;
  }
  li a.btn-line { padding-top: 6px; text-align: center; padding-right: 13px; }
  li a.search,li a.notifications { padding: 6px 12px 0 0;}
  
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
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
  
    
  /* 2021. 7. 25 */ 
  /*login*/
  .btn-blue { background-color: #3690d9; color: #fff; }
  
  .list-group .list-group-item { width: 100%; }
  .list-group-item label { margin: auto; font-weight: normal;  }
  .list-group-item input { margin: auto; }
  .account-container { width:360px; margin:0 auto; padding:60px 0 70px; }
  .list-group { margin-top: 20px; margin-bottom: 0px;}
  #login .remember-box { background-color:#f7fbff;}
  .remember-checkbox input { width: 17px; height: 17px; float: left; margin: 5px auto; border: 1px solid #b6c1cb;
    						border-radius: 3px; background: #fff;}
  .remember-checkbox span { padding: 3px 0 0 10px; color: #738096;}
  
   /*join*/
/*    .join-container { width:360px; margin:0 auto; padding:60px 0 70px; } */
  input[type=radio] { display: none; }
  .birth-gender-group { display: flex; }
  .birth-box { padding:0px; } 
  .gender-box { padding:0px; padding-left:5px; display: flex; flex-flow: nowrap; }
  .gender-box .gender-btn1, .gender-btn2 { width: 90px; border: 1px solid #ddd; padding-top: 10px; padding-bottom: 10px; 
  										   text-align: center; font-weight: normal; cursor: pointer; line-height: 1.95;}
  .gender-box .gender-btn1 { border-bottom-left-radius: 4px; border-top-left-radius: 4px; }
  .gender-box .gender-btn2 { margin-left: -1px; border-bottom-right-radius: 4px; border-top-right-radius: 4px; }
  .gender-box label { margin-bottom:0px; }
  input[type=radio]:checked+label { background-color: LightGray; }
  .post-group .post-input { padding:0px;}
  .post-group .post-btn { padding:0 0 5px 5px;}
  .post-btn .btn-blue { border: 1px solid #b6c1cb; font-size:15px; line-height: 1.8;}
  .address-input1 { padding:0px; }
  .address-input2 { padding:0 0 5px 5px;}
  .submit-group .pre-btn {padding:0px;}
  .submit-group .sub-btn {padding:0 0 5px 5px;}
  
  .agreement-title { margin-left: 8px;}
  .agreement-list-group p:last-of-type { margin-bottom: 0px; }
  .agreement-link { font-size: 12px; float: right; text-align: right;  color: #9ea7ad;}
/*   .input-group-title { display: none; font-size: 13px; padding: 6px 100px -1px 0; color: #94a2b8;} */

	/* 2021.07.30 */
  .material-icons { 
  	  -webkit-touch-callout: none;
	  -webkit-user-select: none;
	  -khtml-user-select: none;
	  -moz-user-select: none;
	  -ms-user-select: none;
	  user-select: none;
   }
   /*2021.08.08*/
   .info-group .list-group-item { display: flex; flex-direction: row;}
/*    .agreement-list-group .list-group-item { display: block; } */
   #join .btn { 
   		border-bottom-radius: 4px; 
   		border-top-radius: 4px;
   		width: 100%;
   		padding: 10px 15px;
   }
/*    .id-group, .pass-group { display: flex; flex-direction: row; } */
   #id, #pass, #pass-c,#pass-n, #email, #name { width: 92%; border: none; }
   #birth { width: 100%;  } 
   .material-icons { width: 8%; }
   .alert-message { color: LightCoral; font-size: 12px;}
   .warning-message-wrapper .alert-message {
	   height: 51px;
	   display: flex;
	   align-items: center;
	   margin-left: 15px; 
   }

/*    #id-group { border-color: LightCoral; } */
/* 캘린더 아이콘 색상	*/
   input[type="date"]::-webkit-calendar-picker-indicator { cursor: pointer; opacity: 0.8; filter: invert(0.5); }	


/*	20-08-21 */
	.base-wrap {
		width: 90%;
	    position: relative;
	    overflow-x: hidden;
	    overflow-y: hidden;
	    min-height: 500px;
	    display: block; 
 	    margin: 0 auto;
	    margin-top: 50px;
	    margin-left: 77px;
	}
	.contents-wrap {
 		display: flex; 
	    width: 900px;
	    margin: 0 auto;
	    margin-top: 80px;
	    width: 953px;
	    padding: 0 24px;
	}
	
	#my-left-menu {
		padding-bottom: 320px;
   		width: 235px;
   		color: #666;
	   	font-size: 15px;
	   	line-height: 1em;
    	font-weight: 400;
/*         position: fixed; */
	}
	#my-left-menu .my-left-icon { 
		padding-right: 20px;
	    vertical-align: -5%;
	    font-size: 18px;
	    color: #738096;
	}
	
	#my-left-menu .menu-title { 
		font-size: 24px;
	    font-weight: 600;
	    color: #212529; 
	}
/* 	#my-left-menu h4 {  */
/* 		color: #666; */
/* 	   	font-size: 15px; */
/* 	   	line-height: 1em; */
/*     	font-weight: 400; */
/* 	} */
	#my-left-menu .menu-wrapper{
	    margin-top: 9px;
		width: 130px;
	}
	#my-left-menu .menu-wrapper .menu-section{
		padding: 17px 0 19px 0;
    	border-bottom: 2px solid #f2f2f2;
	}
	#my-left-menu .menu-wrapper .section-title{
		font-size: 15px;
	    color: #40474d;
	    font-weight: 600;
	}
	#my-left-menu .section-list {
	    border-top: none;
	    padding: 1px 0 0 22px;
	    list-style: none;
	}
	#my-left-menu .section-list-element {
	    padding: 14px 0 0 0;
	    font-weight: 600;
	    font-size: 15px;
	    transition: color .2s;
	}
	/* 	21-08-25 */
	.my-right-content{
/* 		margin-left:235px; */
	}
	.my-pagetitle {
		font-size: 20px;
	    color: #333;
	    font-weight: 700;
	}
	.check_description {
		font-size: 13px;
	    font-weight: 700;
	    color: #333;
	    line-height: 1.5em;
	    padding: 25px 0 10px 0;
	    margin:0px;
	}
	#password-input {
	    width: 220px;
	    height: 30px;
    	padding: 7px;
    	display: inline-block;
	    border: 1px solid #d1d5d9;
	    background: #fff;
	    font-size: 13px;
	    font-weight: 700;
	    line-height: 1.2em;
	    color: #303538;
	}
	/* 21-08-26 */
	.edit-table {
	    border-collapse: collapse;
	    border-spacing: 0;
	    border-bottom: 1px solid #e6e8eb;
	    width: 100%;
	}
	/* 21-10-25 */
	.pass-group > input::placeholder {
		font-size: 13px;
		color: #9ea7ad;
	}
	
	
	
	
	
	/* 	main */
	
	
	
	.carouselWrapper{
		width: 100%;
	    margin: 10px auto;
	    position: relative;
/* 	    overflow: hidden; */
	    max-width: 1815px;
	}
	.carousel-inner { width: 355px; margin: 0 auto; }
	.sectionWrapper {
		max-width: 1000px;
	    margin: 0 auto;
	    padding: 24px 0;
	}
	.sectionWrapper a{ color: #000000; }
	.sectionWrapper a:hover{ color: #636C73; }
	.sectionWrapper .sectionTitle {
		max-width: 990px;
	    margin: 0 auto 16px;
	    padding: 6px 20px 0;
		font-size: 21px;
	    font-weight: normal;
	    line-height: 26px;
	    color: #000000;
	}
	.rankingBook{
		display: grid;
    	grid: repeat(3,138px) / auto-flow 308px;
    	grid-column-gap: 13px;
	}
	.rankingBookitem{ display: flex; align-items: center; }
	.bookCover{ flex: none; margin-right: 18px; }
	.bookCover-Thumbnail-S{ width: 80px; max-height: 114px; }
	.bookDataBox{
	    display: flex;
	    align-items: center;
	    height: 100%;
		border-bottom: 1px #e6e8eb solid;
	}
	.bookDataBase{ width: 177px;  }
	.rankPosition{
		height: 22px;
	    margin-right: 21px;
	    font-size: 18px;
	    font-weight: bold;
	    text-align: center;
	    color: #000000;
	}
	.bookTitle{
	    font-size: 14px;
	    font-weight: 700;
	    line-height: 1.33em;
	    color: #000000;
	    max-height: 2.7em;
	    margin-bottom: 4.5px;
	}
	a.bookAuthor{
		font-size: 14px;
	    line-height: 1.36;
	    color: #636C73;
	    margin-bottom: 2px;
	}
	/* 21-09-01 */
	.sectionWrapper .title-wrap{
		display: flex;
		align-items: flex-end;
		justify-content: space-between;
		padding: 0;
	}
	.sectionTitle .subTitle{
		margin-left: 7px;
		font-size: 13px;
	    font-weight: normal;
	    line-height: 26px;
	    color: #636C73;
	}
	.material-icons#switch-icon { font-size: 15px; width: auto; }
	
	a.btn-switch {
		margin-left: 7px;
		font-size: 13px;
	    font-weight: normal;
	    line-height: 26px;
	    color: #636C73;
	    display: flex;
   		align-items: center;
	}
	/*	keyword	*/
	.sectionWrapper.keyword-section {
		background-color: #f5f6f7;
		padding: 20px;
	}
	.key-wrap {
		border-bottom: 2px #000000 solid;
	}
	ul.key-list{
		display: flex;
		padding-inline-start: 10px;
		margin-bottom: 10px;
	}
	.key-list li + li {
	    margin-left: 6px;
	}
	.keywordAnchor{
		border: 1px solid #b8bfc4;
	    height: 30px;
	    border-radius: 20px;
	    display: block;
	    font-size: 14px;
	    line-height: 29px;
	    font-weight: bold;
	    color: #525a61;
	    padding: 0 10px;
	    cursor: pointer;
	}
	input[name=keyword][type=checkbox]{
		display: none;
	}
	input[name=keyword][type=checkbox]:checked+label.keywordAnchor {
		background-color: #337AB7;
		color: #fff;
		font-weight: normal;
	}
	.keywordAnchor::before {
	    display: inline;
	    content: '#';
	}
	.resultHeader {margin: 10px 0 0 10px;}
	.resultCounter {    
		color: #444;
	    font-size: 14px;
	    margin-bottom: 6px;
	}
	.resultCounter-number {
		font-size: 24px;
	    font-weight: 700;
/* 	    vertical-align: middle; */
	}
	
	.resultWrapper {
		min-height: 300px;
	}
	.emptyResult {
		padding-top: 80px;
    	font-size: 20px;
    	margin-bottom: 120px;
	    color: #abb3ba;
	    font-weight: 700;
	    text-align: center;
	}
	.resultListWrapper{
		width: 960px;
   		margin: 20px auto 0px;
	}
	.bookCarousel-wrap{
		width: 900px;
    	margin: -8px auto 40px;
	}
	ul.bookCarouselList{
	}
	.bookCarouselitem{
		width:140px;
		min-width:140px;
	}
	.bookCover-Thumbnail-M{
		width:140px;
		margin: 0 auto;
	}
	.bookDataBase-Carousel{
		width: 140px;
	    margin: 0 auto;
	    display: flex;
	    flex-direction: column;
	}
	.btn-arrow { 
		border: none; border-radius: 40px; 
		color: #636C73; background-color: white; 
		width: 40px; height: 40px; position: absolute;
		box-shadow: rgb(0 0 0 / 33%) 0px 0.8px 3px;
		opacity: 0.95; cursor: pointer; top: 83px;
	}
	.prev {
		left: 0px; 
		z-index: 1;
	}
	.next {
		right: 0px; 
	}
/* 21.09.16 */
	#page-detail {
		width: 1020px;
		margin: 0 auto 60px auto;
	}
	#page-detail .detail-wrap{
		width: 1020px;
	}
	#page-detail .detail-body-wrap {
		width: 793px;
/*    		background: #fff; */
   		background: #818181;
	}
	.detail-body {
		width: 793px;
		padding-bottom: 95px;
	}
	.detail-box-main {
		padding: 40px 29px;
	}
	.main-thumbnail-wrap {
	
	}
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="nav-container">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/main.do">BOOK MARK</a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<c:if test="${userid == null}">
				<li><a href='${pageContext.request.contextPath}/search.do' class="search">
					<span class="my-left-icon material-icons" id="myhome-icon">search</span></a></li>
				<li><a href='${pageContext.request.contextPath}/account/login' class="btn-line">로그인</a></li>
				<li><a href='${pageContext.request.contextPath}/account/join' class="btn-line">회원가입</a></li>
			</c:if>
			<c:if test="${userid != null}">
				<li><a href='${pageContext.request.contextPath}/search.do' class="search">
					<span class="my-left-icon material-icons" id="myhome-icon">search</span></a></li>
				<li><a href='${pageContext.request.contextPath}/account/mypage' class="btn-line">${userid}</a></li>
				<%-- 	      	<li><a href='#'>${userid}'s library</a></li> --%>
				<!-- < % session.getAttribute("userid") % > -->
				<!-- ${sessionScope.userid}-->
				<li><a href='${pageContext.request.contextPath}/account/logout' class="btn-line">로그아웃</a></li>
			</c:if>
		</ul>
	</div>
</nav>