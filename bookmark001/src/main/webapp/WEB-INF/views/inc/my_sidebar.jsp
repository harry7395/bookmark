<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<div id="my-left-menu">
		<h3 class="menu-title">마이페이지</h3>
		<nav class="menu-wrapper">
			<div class="menu-section">
				<a href="mypage.do" class="section-title">
					<span class="my-left-icon material-icons" id="myhome-icon">home</span>
					마이 홈
				</a><!-- end menu-section -->
			</div>
			<div class="menu-section">
				<h4 class="section-title">
					<span class="my-left-icon material-icons" id="myhome-icon">person</span>
					기본 설정
				</h4><!-- end menu-section -->
				<ul class="section-list">
					<li class="section-list-element">
						<a href="${pageContext.request.contextPath}/account/pass_check">내 정보 관리</a>
					</li>
					<li class="section-list-element">내 리뷰 관리</li>
					<li class="section-list-element">1:1 문의</li>
				</ul>
			</div>
		</nav><!-- end menu_wrapper -->
	</div> <!-- my_left_menu -->