function getContextPath() { // contextPath 구하는 함수
    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
}
var i_pass = false; var p_pass = false; var pc_pass = false; var e_pass=false;
var n_pass = false; var b_pass = false; var a_pass = false; 

$(function(){
	$(".alert-message").css('display', 'none');
});
$("#join").submit(function(){ //클릭
	console.log(a_pass);
	if( $("#id").val() == ""){
		invalid($("#id-icon"), $("#id-group"), $("#id-alert"), '아이디를 입력해주세요', $("#id")); return false; 
	} else if( $("#pass").val() == ""){
		invalid($("#pass-icon"), $("#pass-group"), $("#pass-alert"), '비밀번호를 입력해주세요', $("#pass")); return false; 
	} else if( $("#pass-c").val() == ""){
		invalid($("#pass-c-icon"), $("#pass-c-group"), $("#pass-alert"), '비밀번호를 확인해주세요', $("#pass-c")); return false; 
	} else if( $("#email").val() == ""){
		invalid($("#email-icon"), $("#email-group"), $("#email-alert"), '이메일을 확인해주세요', $("#email")); return false; 
	} else if( $("#name").val() == ""){
		invalid($("#name-icon"), $("#name-group"), $("#name-alert"), '이름을 입력해주세요', $("#name")); return false; 
	} else if(!($("#male").is(":checked"))&&!($("#female").is(":checked"))){ return false;
	} else if($("#zonecode").val() == "" ){ 
//		$("#zonecode").css('border-color', 'LightCoral');
		$("#address-alert").css('display', 'block');
		$("#address-alert").html('우편번호를 입력해주세요.');
		return false; 
	} else if($("#address2").val() == "" ){ 
//		$("#address2").css('border-color', 'LightCoral');
		$("#address-alert").css('display', 'block');
		$("#address-alert").html('상세주소를 입력해주세요.');
		return false;
	} else if(!(i_pass&&p_pass&&pc_pass&&e_pass&&n_pass&&a_pass)){ return false; }
	
	if(i_pass&&p_pass&&pc_pass&&e_pass&&n_pass&&a_pass) { return agCheck(); }
});
$("#id").on('input', function(){ idCheck(); });
$("#pass").on('input', function(){
	$("#pass-group").css('border-bottom','1px solid #ddd');
	$("#pass-group").css('margin-bottom','0px');
	$("#pass-c-group").css('border-top','none');
	pw1Check();
});
$("#pass-c").on('input', function(){
	$("#pass-c-group").css('border-top','1px solid #ddd');
	$("#pass-group").css('border-bottom','none');
	pw2Check();
});
$("#email").on('input', function(){ emCheck();});
$("#name").on('input', function(){ nCheck();});
//$("#birth").on('input', function(){ bCheck();});
$("#address2").on('input', function(){ addrCheck();});

// 약관동의
$("#list0").on("click" , function(){
	if($("#list0").prop("checked")){
		$("input[type=checkbox]").prop("checked" ,true).trigger("change");
	} else {
		$("input[type=checkbox]").prop("checked" ,false).trigger("change");
	}
	allAgreed();
});
$(".agreement-list input").on("click",function() {
	var allcheck = "true";
	$(".agreement-list input").each(function(){
		allcheck = allcheck && $(this).is(":checked");
	})
	$("#list0").prop("checked", allcheck);
	allAgreed();
});
function allAgreed () {
	if($("#list1").is(":checked")&&$("#list3").is(":checked")) {
		$(".check-all").css('border-color', '#ddd');
		$(".agreement-list").css('border-color', '#ddd');
		$("#agreement-alert").css('display', 'none');
	}
}
///////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////
function invalid(icon, box, msg_tag, text, focus) {
	icon.html("");
	box.css('border-color', 'LightCoral');
	msg_tag.css('display', 'block');
	msg_tag.html(text);
	focus.focus; 
}
function valid(icon, box, msg_tag) {
	icon.html("done");
	icon.css('color', '#3690d9');
	box.css('border-color', '#3690d9');
	msg_tag.css('display', 'none');
}
function blank(icon, box, msg_tag, focus){
	icon.html("");
	box.css('border-color', '#ddd');
	msg_tag.css('display', 'none');
	focus.focus; 
}
///////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////
function idCheck(){
	//아이디 유효 검사
	//var regExp = /\s/g; //띄어쓰기
	var idReg = /^[a-z0-9]{5,20}$/; //아이디
	var idTag = $("#id");
	if( idTag.val() == ""){
		blank($("#id-icon"), $("#id-group"), $("#id-alert"), idTag);
	} else if (!idReg.test(idTag.val())){
		invalid($("#id-icon"), $("#id-group"), $("#id-alert"), '5~20자의 영문 소문자와 숫자로만 입력해주세요', idTag);
	} else {
		//중복검사
		$.ajax({
			url: getContextPath()+"/account/id_dup", type:"post", dataType:"json",
			success:function(data){
				//데이터를 성공적으로 받아왔을 때 수행할 일
				var uno = data.uno;
				if(uno!=null){
					// 중복
					invalid($("#id-icon"), $("#id-group"), $("#id-alert"), '⚠︎ ︎이미 사용중인 아이디입니다', idTag);
				} else {
					valid($("#id-icon"), $("#id-group"), $("#id-alert"));
					i_pass = true;
				}
			}, data:{ // 요청할 데이터
				"id": $("#id").val()
			}, error:function(xhr, textStatus, errorThrown){
				alert(textStatus + "(HTTP- " + xhr.status + " / " + errorThrown);
			}
		});
	}
}
function pw1Check(){
	// 비밀번호 유효 검사
	var pwReg = /^(?=.*[a-zA-Z])(?=.*[\d])(?=.*[~!@#$%^&*?])[\w\d~!@#$%^&*?]{8,20}$/; //비밀번호
	var pwRepeat = /(\w)\1\1/; //연속된 3자 이상의 같은 문자는 제한합니다.
	var pwTag = $("#pass");
	if( pwTag.val() == ""){
		blank($("#pass-icon"), $("#pass-group"), $("#pass-alert"), pwTag);
	} else if (!pwReg.test(pwTag.val())){
		invalid($("#pass-icon"), $("#pass-group"), $("#pass-alert"), '8자 이상, 영문/숫자/특수문자 중 2가지 이상 입력해주세요.', pwTag);
	} else if ( pwRepeat.test(pwTag.val())){
		invalid($("#pass-icon"), $("#pass-group"), $("#pass-alert"), '연속된 3자 이상의 같은 문자는 제한합니다.', pwTag);
	} else {
		valid($("#pass-icon"), $("#pass-group"), $("#pass-alert"));
		p_pass = true; 
	}
}
function pw2Check(){
	// 비밀번호 유효 검사
	var pwTag = $("#pass");
	var pwTag_c = $("#pass-c");
	if(p_pass){
		if ( pwTag_c.val() == ""){
			blank($("#pass-c-icon"), $("#pass-c-group"), $("#pass-alert"), pwTag);
		} else if ( pwTag.val() != pwTag_c.val()){
			invalid($("#pass-c-icon"), $("#pass-c-group"), $("#pass-alert"), '비밀번호가 일치하지 않습니다', pwTag);
		} else {
			valid($("#pass-c-icon"), $("#pass-c-group"), $("#pass-alert"));
			pc_pass = true;
		}
	}
}

function emCheck(){
	// email 유효 검사
	var emReg = /^[0-9a-zA-Z]+(.[_a-z0-9-]+)*@(?:\w+\.)+\w+$/; //email
	var emTag = $("#email");
	if( emTag.val() == ""){
		blank($("#email-icon"), $("#email-group"), $("#email-alert"), emTag);
	} else if (!emReg.test(emTag.val())){
		invalid($("#email-icon"), $("#email-group"), $("#email-alert"), '올바른 이메일 형식이 아닙니다.', emTag);
	} else {
		valid($("#email-icon"), $("#email-group"), $("#email-alert"));
		e_pass = true;
	}
}
function nCheck(){
	// 이름 유효 검사
	var nameReg = /^[가-힣]{2,}$/; //name
	var nameTag = $("#name");
	if( nameTag.val() == ""){
		blank($("#name-icon"), $("#name-group"), $("#name-alert"), nameTag);
	} else if (!nameReg.test(nameTag.val())){
		invalid($("#name-icon"), $("#name-group"), $("#name-alert"), '2글자 이상의 이름을 정확히 입력해 주세요.', nameTag);
	} else {
		valid($("#name-icon"), $("#name-group"), $("#name-alert"));
		n_pass = true;
	}
}
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();
 if(dd<10){ dd='0'+dd }
 if(mm<10){ mm='0'+mm }
today = yyyy+'-'+mm+'-'+dd;
$("#birth").attr("max", today);

//function bCheck(){
//	// 생년월일 검사
//	var birthReg = /^[0-9]{4,}$/; //name
//	var birthTag = $("#birth");
//	if ( birthTag.val() == ""){
//		blank($("#birth-icon"), $("#birth-group"), $("#birth-alert"), birthTag);
////		$("#birth").css('border-color', '#ddd');
////		$("#birth-alert").css('display', 'none');
//	} else if (!birthReg.test(birthTag.val())){
//		invalid($("#birth-icon"), $("#birth-group"), $("#birth-alert"), '출생년도를 정확히 입력해주세요.', birthTag);
////		$("#birth").css('border-color', 'LightCoral');
////		$("#birth-alert").css('display', 'block');
////		$("#birth-alert").html('출생년도를 정확히 입력해주세요');
//	} else {
//		valid($("#birth-icon"), $("#birth-group"), $("#birth-alert"));
////		$("#birth").css('border-color', '#3690d9');
////		$("#birth-alert").css('display', 'none');
//		b_pass = true;
//	}
//}

function addrCheck(){
	//우편코드 검사
	var zipTag = $("#zonecode");
	var addrTag = $("#address2");
	if(zipTag.val() != "" && addrTag.val() == ""){
//		zipTag.css('border-color', '#ddd');
//		addrTag.css('border-color', 'LightCoral');
		$("#address-alert").css('display', 'block');
		$("#address-alert").html('상세주소를 입력해주세요.');
	} else {
//		addrTag.css('border-color', '#ddd');
		$("#address-alert").css('display', 'none');
		a_pass = true;
	}
}
function agCheck(){
	//약관동의 검사
	if (!($("#list1").prop("checked"))){
		$(".check-all").css('border-color', 'LightCoral');
		$(".agreement-list").css('border-color', 'LightCoral');
		$("#agreement-alert").css('display', 'block');
		$("#agreement-alert").html('이용 약관에 동의해주세요.');
		return false;
	} else if (($("#list1").prop("checked"))&&!($("#list3").prop("checked"))){
		$(".check-all").css('border-color', 'LightCoral');
		$(".agreement-list").css('border-color', 'LightCoral');
		$("#agreement-alert").css('display', 'block');
		$("#agreement-alert").html('개인 정보 수집 및 이용에 동의해주세요.');
		return false;
	} else {
		return true;
	}
}

//function gCheck(){
////	if ($(":radio[name='gender']:checked").length == 0){ alert("성별을 선택해주세요"); return false; } 
//	if( !($("radio[name='gender']").is(":checked"))){ $("#gender-group").css('border-color', 'LightCoral');
//	} else if ($("radio[name='gender']").is(":checked")){ $("#gender_group").css('border-color', '#3690d9'); g_pass = true;} 
//}