<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="carouselWrapper">
	  <div id="CarouselView" class="carousel slide" data-ride="carousel">
	    <!-- 하단 네비게이션 -->
	    <ol class="carousel-indicators">
	      <c:forEach var="dto" items="${list}" varStatus="status">
	      	<li data-target="#CarouselView" data-slide-to="${status.index}" 
	      	<c:if test="${status.index==0}"> class="active"</c:if>></li>
	      </c:forEach>
	    </ol> 
	    <!--실제 이미지가 들어가는 부분 -->
	    <div class="carousel-inner" role="listbox">
	      <c:forEach var="dto" items="${list}" varStatus="status">
	      <div class = "item  <c:if test="${status.index==0}"> active </c:if>">
	        <img src="${pageContext.request.contextPath}/img/${dto.eimg}" alt="event" >
	      </div>
	      </c:forEach>
	    </div>
	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#CarouselView" role="button" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#CarouselView" role="button" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
	</div>