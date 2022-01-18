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
			<table class="edit-table">
				<tbody>
					<tr><th>이름</th>
						<td><span class="user-info">${dto.uname}</span>
						<a href="${pageContext.request.contextPath}/account/leave" id="leave" class="btn btn-blue">회원 탈퇴</a></td>
					</tr>
					<tr><th>아이디</th>
						<td><span class="user-info">${dto.uid}</span>
					</tr>
					<tr><th>이메일</th>
						<td><span class="user-info">${dto.uemail}</span>
					</tr>
					
					<!-- 비밀번호 -->
					<tr><th>비밀번호 변경</th>
						<td>
							<div class="" style="display: flex;">
								<div class="info-group">
									<div class="list-group-item pass-group">
										<input type="password" name="pass" id="pass" placeholder="현재 비밀번호"/>
										<span class="material-icons" id="pass-icon"></span>
									</div>
									<div class="list-group-item pass-group">
										<input type="password" name="pass-n" id="pass-n" placeholder="새 비밀번호"/>
										<span class="material-icons" id="pass-n-icon"></span>
									</div>
									<div class="list-group-item pass-group">
										<input type="password" name="pass-c" id="pass-c" placeholder="새 비밀번호 확인"/>
										<span class="material-icons" id="pass-c-icon"></span>
									</div>
								</div>
								<div class="warning-message-wrapper">
									<div class="alert-message" id="pass-alert"></div>
									<div class="alert-message" id="pass-n-alert"></div>
									<div class="alert-message" id="pass-c-alert"></div>
								</div>
							</div>
							<a href="${pageContext.request.contextPath}/account/pass_alter" class="btn btn-blue">비밀번호 변경</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<!-- 			 -->
<!-- 			 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/script_edit_userinfo.js"></script>
<!-- 			 -->
<!-- 			 -->
<!-- 			 -->
<!-- 			 -->
<%@ include file="../inc/footer.jsp"%>