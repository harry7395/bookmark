/**
 * 마이페이지 > 회원정보 수정
 */
$(function(){
	$(".alert-message").css('display', 'none');
	$("#leave").click(function(){ //회원 탈퇴
		
	});
});
// 현재 비밀번호 확인
$("#pass").on('input',function(){ passCheck(); })

function passCheck(){ //현재 비밀번호 확인
	if($("#pass").val() == ""){
		blank($("#pass-icon"), $("#pass-alert"));
	} else {
		$.ajax({
			url: getContextPath()+"/account/id_dup", type:"post", dataType:"json",
			success:function(data){
				//데이터를 성공적으로 받아왔을 때 수행할 일
				var uno = data.uno;
				if(uno!=null){
					// 중복
					invalid($("#id-icon"), $("#id-group"), $("#id-alert"), '⚠︎ 현재 비밀번호와 일치하지 않습니다.', idTag);
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
///////////////////////////////////////////////////////////////////////////////////////////////
function invalid(icon, msg_tag, text){
	icon.html("");
	msg_tag.css('display','block');
	msg_tag.html(text);
}
function valid(icon, msg_tag){
	icon.html("done");
	icon.css('color', '#3690d9');
	msg_tag.css('display', 'none');
}
function blank(icon, msg_tag){
	icon.html("");
	msg_tag.css('display', 'none');
}
///////////////////////////////////////////////////////////////////////////////////////////////