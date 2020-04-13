<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/memberEnrollEnd.sg" method="post">
		<input type="text" name="userId" value="userId" />
		<input type="password" name="pwd" value="pwd" />
		<input type="text" name="nickName" value="nickName" />
		<input type="text" name="gender" value="M" />
		<input type="text" name="email" value="psh527@naver.com" />
		<input type="text" name="ehash" value="ehash" />
		<input type="text" name="erecive"/>
		<input type="text" name="profile" value="profile" />
		<input type="text" name="profileName" value="profileName" />
	<button type="submit">
	
	보내기
	</button>
	</form>
	
	
	<c:if test="${empty member}">
		        <!-- 로그인,회원가입 버튼 -->
		        <button class="btn btn-outline-success my-2 my-sm-0" type="button" data-toggle="modal" data-target="#loginModal">로그인</button>
		        &nbsp;
		        <button class="btn btn-outline-success my-2 my-sm-0" type="button" onclick="location.href='${pageContext.request.contextPath}/memberEnrollEnd.sg'">회원가입</button>
		    </c:if>
		    <c:if test="${!empty member}">
		        <span><a href="${pageContext.request.contextPath}/member/memberView.do?userId=${member.userId}" title="내정보보기">${member.userName}</a> 님, 안녕하세요</span>
		        &nbsp;
		        <button class="btn btn-outline-success m-y2 my-sm-0" tpye="button"
		        onclick="chattingBtn();" style="margin-left:10px;">채팅하기</button>
		   		&nbsp;
		        <button class="btn btn-outline-success my-2 my-sm-0" type="button" onclick="location.href='${pageContext.request.contextPath}/memberEnrollEnd.sg'">로그아웃</button>
		   
		   
		    </c:if>
		    
		    
		    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="loginModalLabel">로그인</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
          <!--로그인폼 -->
          <!-- https://getbootstrap.com/docs/4.1/components/forms/#overview -->
          <form action="${pageContext.request.contextPath}/member/memberLogin.do" method="post">
	      <div class="modal-body">
			  <input type="text" class="form-control" name="userId" placeholder="아이디" required>
			    <br />
			    <input type="password" class="form-control" name="password" placeholder="비밀번호" required>
	      </div>
	      <div class="modal-footer">
	        <button type="submit" class="btn btn-outline-success">로그인</button>
	        <button type="button" class="btn btn-outline-success" data-dismiss="modal">취소</button>
	      </div>
		</form>
	    </div>
	  </div>
	</div>
</body>
</html>