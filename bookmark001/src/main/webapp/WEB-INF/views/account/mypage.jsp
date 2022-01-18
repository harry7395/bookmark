<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>
<%@page import="java.sql.*" %>
<!-- 			 -->
<!-- 			 -->
<div class="contents-wrap" >
	<%@include file="../inc/my_sidebar.jsp" %>
	<div class="my-right-content">
		<div class="account-container">
			<p class="">${dto.uname}</p>
			<p class="">${dto.uid}</p>
			<p class="">${dto.uemail}</p>
<!-- 		        <div class="list-group"> -->
<!-- 		        	<label>PASS</label> -->
<%-- 					<span class="list-group-item">${dto.upass}</span> --%>
<!-- 		        </div> -->
		        
	<!-- 	        <div class="list-group"> -->
	<!-- 	        	<label>성별</label> -->
	<%-- 				<span class="list-group-item">${dto.ugender}</span> --%>
	<!-- 	        </div> -->
	<!-- 	        <div class="list-group"> -->
	<!-- 	        	<label>우편번호</label> -->
	<%-- 				<span class="list-group-item">${dto.uzipcode}</span> --%>
	<!-- 	        </div> -->
		        
	<!-- 	        <div class="form-group text-right">  -->
	<%-- 	              <a href="${pageContext.request.contextPath}/edit_view.do?bno=${dto.bno}" title="수정" class="btn btn-default">수정</a> --%>
	<%-- 	              <a href="${pageContext.request.contextPath}/delete_view.do?bno=${dto.bno}" title="삭제" class="btn btn-warning">삭제</a> --%>
	<%-- 	              <a href="${pageContext.request.contextPath}/main.do" title="목록" class="btn btn-default">목록보기</a> --%>
	<!-- 	        </div> -->
	     </div>
	</div>
</div> <!-- end contents_wrap -->

<!-- 			 -->
<!-- 			 -->
<%@ include file="../inc/footer.jsp"%>