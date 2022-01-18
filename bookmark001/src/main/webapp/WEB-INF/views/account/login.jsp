<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include  file="../inc/header.jsp" %>
	<!-- 			 -->
	<!-- 			 -->
	<%
	String cid="", cre="";
	String isCookie = request.getHeader("Cookie");
	if(isCookie!=null){
		Cookie[] cookies = request.getCookies();
		for(int i=0;i<cookies.length;i++){
			if( cookies[i].getName().equals("remember")){ cre=cookies[i].getValue(); }
			if( cookies[i].getName().equals("userid")){ cid=cookies[i].getValue(); }
		}
		if(!cre.equals("on")){ cre = ""; cid = ""; }
		else{ cre = "checked";}
	}
	%>
	<div class="container-fluid">
		<div class="account-container">
	        <h2>LOGIN</h2>
	        <form action="${pageContext.request.contextPath}/account/login" method="post" id="login">
	            <fieldset>
<!-- 	            <legend class="invisible">로그인</legend> -->
	            <div class="list-group input-box">
	                <input type="text" id="userid" name="userid" class="list-group-item" value="<%=cid%>" placeholder="아이디"/>
	            	<input type="password" id="userpass" name="userpass" class="list-group-item" placeholder="비밀번호"/>
	            	<div class="list-group-item remember-box">
	            	 	<label class="remember-checkbox">
			                <input type="checkbox" id="remember" name="Re" <%=cre%>>
			                <span>로그인 상태유지</span>
		                </label>
	                </div>
	            </div> 
	            <div class="list-group ">
	                <input type="submit" value="로그인" class="btn btn-blue list-group-item">
	                <a href="${pageContext.request.contextPath}/join.do" class="btn list-group-item">회원가입</a>
	            </div>
	            </fieldset>
	        </form>
	     </div>
     </div>
     <script>
         $(function(){
             $("#form").submit(function(){
                 if( $("#userid").val() == "")
                 { alert("빈칸입니다.\n확인해주세요"); $("#userid").focus; return false;}
                 else if( $("#userpass").val() == "")
                 { alert("빈칸입니다.\n확인해주세요"); $("#userpass").focus; return false;}
             });
         });
     </script>
<%@ include  file="../inc/footer.jsp" %>