<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>

<div class="container-fluid">
	<div class="account-container">
		<h3>JOIN</h3>
		<form action="${pageContext.request.contextPath}/account/join"
			method="post" id="join">
			<fieldset>
				<!-- 아이디 -->
				<div class="list-group info-group">
					<div class="list-group-item" id="id-group">
						<input type="text" name="id" id="id" placeholder="아이디" />
						<span class="material-icons" id="id-icon"></span>
					</div>
				</div>
				<div class="alert-message" id="id-alert"></div>
				
				<!-- 비밀번호 -->
				<div class="list-group info-group">
					<div class="list-group-item" id="pass-group">
						<input type="password" name="pass" id="pass" placeholder="비밀번호" autocomplete='off' />
						<span class="material-icons" id="pass-icon"></span>
					</div>
					<div class="list-group-item" id="pass-c-group">
					<input type="password" name="pass-c" id="pass-c" placeholder="비밀번호 확인" autocomplete='off'/>
						<span class="material-icons" id="pass-c-icon"></span>
					</div>
				</div>
				<div class="alert-message" id="pass-alert"></div>
				
				<!-- 이메일 -->
				<div class="list-group info-group">
					<div class="list-group-item" id="email-group">
						<input type="text" name="email" id="email" placeholder="이메일" />
						<span class="material-icons" id="email-icon"></span>
					</div>
				</div>
				<div class="alert-message" id="email-alert"></div>
				
				<!-- 이름 -->
				<div class="list-group info-group">
					<div class="list-group-item" id="name-group">
						<input type="text" name="name" id="name" placeholder="이름" />
						<span class="material-icons" id="name-icon"></span>
					</div>
				</div>
				<div class="alert-message" id="name-alert"></div>
				
				<!-- 생년월일 -->
				<div class="list-group birth-gender-group">
					<div class="birth-box col-sm-6" id="birth-group">
<!-- 						<input type="text" id="birth" name="birth" maxlength="4" placeholder="출생년도" /> -->
						<input type="date" id="birth" name="birth" class="list-group-item" min="1920-01-01" max="2021-12-31" />
<!-- 						<span class="material-icons" id="birth-icon"></span> -->
					</div>
					<div class="gender-box col-sm-6" id="gender-group">
						<input type="radio" id="male" name="gender" value="M" />
						<label for="male" class="gender-btn1">남</label>
						<input type="radio" id="female" name="gender" value="F" />
						<label for="female" class="gender-btn2">여</label>
					</div>
				</div>
				<div class="alert-message" id="birth-alert"></div>
				<!-- 우편번호 -->
				<div class="list-group post-group">
					<div class="post-input col-sm-6">
						<input type="text" id="zonecode" name="zonecode" class="list-group-item" placeholder="우편번호" readonly/>
					</div>
					<div class="post-btn col-sm-6">
						<input type="button" id="zipcode" value="우편번호검색" class="btn btn-blue" />
					</div>
				</div>
				<!-- 주소 -->
				<div class="list-group address-group">
					<input type="text" id="address1" name="address1" class="list-group-item" placeholder="주소" readonly />
					<input type="text" id="address2" name="address2" class="list-group-item" placeholder="상세주소" />
				</div>
				<div class="alert-message" id="address-alert"></div>
				<!-- 약관동의 -->
				<div class="list-group agreement-list-group">
					<label class="list-group-item check-all"> 
					<input type="checkbox" id="list0" name="list0" /> 
					<span class="agreement-title">선택 포함 전체 약관 동의</span>
					</label>
					<div class="list-group-item agreement-list">
						<p><input type="checkbox" id="list1" name="list1" />
							<span class="agreement-title">이용약관 동의(필수)</span>
							<a href="${pageContext.request.contextPath}/legal/terms01.jsp" class="agreement-link">약관 보기 ></a></p>
						<p><input type="checkbox" id="list2" name="list2" value="Y" /> 
							<span class="agreement-title">이벤트, 혜택 알림 수신 동의(선택)</span>
						<p><input type="checkbox" id="list3" name="list3" />
						   <span class="agreement-title">개인 정보 수집 및 이용(필수)</span> 
						   <a href="${pageContext.request.contextPath}/legal/terms03.jsp" class="agreement-link">내용 확인 ></a></p>
					</div>
				</div>
				<div class="alert-message" id="agreement-alert"></div>
				<div class="list-group submit-group">
					<div class="pre-btn col-sm-6">
						<a href="javascript:history.go(-1);" class="btn btn-default">이전</a>
					</div>
					<div class="sub-btn col-sm-6">
						<input type="submit" value="회원 가입 완료" class="btn btn-blue">
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>
<!-- 			 -->
<!-- 			 -->
<script
	src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
 $(function(){
     $("#zipcode").click(function(){
       // alert("우편번호 검색을 시작합니다"); 
        new daum.Postcode({
            oncomplete: function(data) {
            	$("#zonecode").val(data.zonecode);
            	$("#address1").val(data.address);
            	$("#address2").focus();
            	//새우편번호 : data.zonecode
	            //기본주소 : data.address
            	$("#address-alert").css('display', 'none');
            }
        }).open();
     });
});
</script>
<script src="${pageContext.request.contextPath}/resources/script/script_join.js"></script>
<!-- 			 -->
<!-- 			 -->
<%@ include file="../inc/footer.jsp"%>