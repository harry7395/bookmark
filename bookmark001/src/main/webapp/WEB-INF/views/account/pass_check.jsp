<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>
<%@page import="java.sql.*" %>
<!-- 			 -->
<!-- 			 -->
<div class="base-wrap"> 
	<div class="contents-wrap" >
		<%@include file="../inc/my_sidebar.jsp" %>
		<div class="my-right-content">
			<h2><span class="my-pagetitle">정보 변경</span></h2>
			<p class="check_description">보안을 위해 비밀번호를 한번 더 입력해주세요.</p>
			<form action="${pageContext.request.contextPath}/account/pass_check" method="post" id="pass_check">
				<fieldset>
					<input type="password" id="password-input" name="password"/>
					<input type="submit" value="확인" class="btn btn-blue password-submit" id="verify-btn"/>
				</fieldset>
			</form>
		</div>
	</div> <!-- end contents_wrap -->
</div>
<!-- <script> -->
// 	$("#verify-btn").click(function(){
// 		$.ajax(
// 			url: "${pageContext.request.contextPath}/account/pass_check", type:"post", dataType:"json",
// 			success:function(data){
				
// 			}, data:{
// 				"password":$("#verify-password").val()
// 			}, error:function(xhr, textStatus, errorThrown){
// 				alert(textStatus + "(HTTP- " + xhr.status + " / " + errorThrown);
// 			}
// 		);
// 	});
<!-- </script> -->
<!-- 			 -->
<!-- 			 -->
<%@ include file="../inc/footer.jsp"%>