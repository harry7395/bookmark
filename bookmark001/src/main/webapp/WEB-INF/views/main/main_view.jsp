<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include  file="../inc/header.jsp" %>
<!-- 		 -->
<!-- 		 -->
<!-- main-sidebar -->
<%@ include  file="../inc/main_sidebar.jsp" %>
<!-- 	 -->
<!-- 	 -->
<div class="container base-wrap">
		<%@ include file="../main/carousel_event.jsp" %>
		<div class="sectionWrapper">
			<h2 class="sectionTitle">
				<a href="" >베스트셀러</a>
			</h2>
			<div class="contents-container">
				<ul class="rankingBook">
					<c:forEach var="i" begin="1" end="9" step="1" varStatus="status">
					<li class="rankingBookitem">
						<a href="" class="bookCover">
							<img src="${pageContext.request.contextPath}/img/bc001.jpeg" class="bookCover-Thumbnail-S" alt="event" >
						</a>
						<div class="bookDataBox">
							<h3 aria-label="랭킹 ${status.index}위"	class="rankPosition">${status.index}</h3>
							<div class="bookDataBase">
								<a href="" >
								<span class="bookTitle">달러구트 꿈 백화점</span>
								</a>
								<p><a href="" class="bookAuthor">이미예</a></p>
							</div>
						</div>
					</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="sectionWrapper keyword-section">
			<div class="title-wrap sectionTitle ">
				<span>
					<span>키워드로 검색하기</span>
					<span class="subTitle"> 키워드로 마음에 드는 책을 찾아보세요!</span>
				</span>
<%-- 				<a href='${pageContext.request.contextPath}/main.do' class="btn-switch"> --%>
<!-- 					<span class="sidebar-icon material-icons" id="switch-icon">reorder</span> -->
<!-- 					<span>조건변경</span> -->
<!-- 				</a> -->
				
		  		<input type="button" class="btn-switch" value="조건변경" data-toggle="modal" data-target="#reorder"> 
			  		<div class="modal fade" id="reorder" role="dialog">
				  		<div class="modal-dialog">
				  		<div class="modal-content">
					        <div class="modal-header">
					          <input type="button" class="close" value="&times;" data-dismiss="modal">
					          <h4 class="modal-title">키워드로 검색하기</h4>
					        </div>
					        <form action="${pageContext.request.contextPath}/" method="get" id="reorder">
					        	<fieldset>
							        <div class="modal-body">
										<ul class="key-list">
											<li class="keyword">
												<input type="checkbox" id="keyword1" name="keyword"/><label for="keyword1" class="keywordAnchor">힐링</label>
											</li>
											<li class="keyword">
												<input type="checkbox" id="keyword2" name="keyword"/><label for="keyword2" class="keywordAnchor">별점 4개이상</label>
											</li>
										</ul>
							        </div>
							        <div class="modal-body text-right">
							       		<input type="reset" class="btn btn-default" value="다시선택">
							       		<input type="submit" class="btn btn-default" value="적용하기">
							       		<input type="button" class="btn btn-default" value="닫기" data-dismiss="modal">
							        </div>
								</fieldset>
					        </form>
				  		</div>
				  		</div>
			  		</div>
	    		
	    		
			</div>
			<div class="contents-container">
				<div class="key-wrap">
					<ul class="key-list">
						<li class="keyword">
							<span class="keywordAnchor">힐링</span>
						</li>
						<li class="keyword">
							<span class="keywordAnchor">평점 4점 이상</span>
						</li>
					</ul>
				</div>
			</div>
			<div class="resultWrapper">
				<header class="resultHeader">
					<div class="resultCounter">
						<span class="resultCounter-number">82</span>건의 책을 찾았어요!
					</div>
				</header>
				<div>
					<section class="resultListWrapper">
						<div class="bookCarousel-wrap">
						  	<ul class="bookCarouselList">
							    <c:forEach var="i" begin="1" end="15" step="1" varStatus="status">
								<li class="bookCarouselitem">
									<a href="" class="bookCover-Carousel">
										<img src="${pageContext.request.contextPath}/img/bc001.jpeg" class="bookCover-Thumbnail-M" alt="event" >
									</a>
									<div class="bookDataBox-Carousel">
										<div class="bookDataBase-Carousel">
											<a href="" ><span class="bookTitle">달러구트 꿈 백화점</span></a>
											<a href="" class="bookAuthor">이미예</a>
										</div>
									</div>
					 			</li>
								</c:forEach>
						  	</ul>
						</div>
						<div class="bookCarousel-wrap">
						  	<ul class="bookCarouselList">
							    <c:forEach var="i" begin="1" end="15" step="1" varStatus="status">
								<li class="bookCarouselitem">
									<a href="" class="bookCover-Carousel">
										<img src="${pageContext.request.contextPath}/img/bc001.jpeg" class="bookCover-Thumbnail-M" alt="event" >
									</a>
									<div class="bookDataBox-Carousel">
										<div class="bookDataBase-Carousel">
											<a href="" ><span class="bookTitle">달러구트 꿈 백화점</span></a>
											<a href="" class="bookAuthor">이미예</a>
										</div>
									</div>
								</li>
								</c:forEach>
						  	</ul>
						</div>
					</section>
				</div>
			</div>
			
<!-- 			<div class="resultWrapper"> -->
<!-- 				<section class="emptyResult"> -->
<!-- 					<p class="material-icons" id="up-icon"> keyboard_double_arrow_up </p> -->
<!-- 					<p>좋아하는 키워드를 선택해보세요</p> -->
<!-- 				</section> -->
<!-- 			</div> -->
			
			
		</div><!-- end sectionWrapper -->
</div><!-- end base-wrap -->
<!-- 		 -->
<!-- 		 -->
<script>
	$(function(){
		$('.bookCarouselList').slick({
			slide: 'li',		//슬라이드 되어야 할 태그 ex) div, li 
			infinite : false, 	//무한 반복 옵션	 
			slidesToShow : 5,		// 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 5,		//스크롤 한번에 움직일 컨텐츠 개수
			speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
			arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
			dots : false, 		// 스크롤바 아래 점으로 페이지네이션 여부
			autoplay : true,			// 자동 스크롤 사용 여부
			autoplaySpeed : 10000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
			pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
			vertical : false,		// 세로 방향 슬라이드 옵션
			prevArrow : "<button type='button' class='material-icons btn-arrow prev'>navigate_before</button>",	// 이전 화살표 모양 설정
			nextArrow : "<button type='button' class='material-icons btn-arrow next'>navigate_next</button>",	// 다음 화살표 모양 설정
			dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
			draggable : true, 	//드래그 가능 여부 
			
			responsive: [ // 반응형 웹 구현 옵션
				{  
					breakpoint: 960, //화면 사이즈 960px
					settings: {
						//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
						slidesToShow:3 
					} 
				},
				{ 
					breakpoint: 768, //화면 사이즈 768px
					settings: {	
						//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
						slidesToShow:2 
					} 
				}
			]

		});
	})
</script>
<%@ include file="../inc/footer.jsp" %>