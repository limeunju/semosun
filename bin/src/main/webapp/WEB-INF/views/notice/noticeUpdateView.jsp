<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="ko">
<head>
	<!-- Basic -->
	<title>공지사항 수정폼</title> 

	<!-- Define Charset -->
	<meta charset="utf-8">
	<c:import url="../common/util.jsp"/>

	<script>
	/* textarea에도 required속성을 적용할 수 있지만, 공백이 입력된 경우를 대비해 유효성검사를 실시. */
	function validate(){
		var content = $("[name=noticeContent]").val();
		if(content.trim().length==0){
			alert("내용을 입력하세요");
			return false;
		}
		return true;
	}
	</script>
	
	<style>
		.form-control{
			margin: auto;
		}
		.total{
			margin-left: 930px;	
		}
		#title{
			margin-top: 100px;
		}
		.btn-outline-success {
			margin-left: 900px;
		}
		.btn{
			margin-bottom: 100px;
		}
					
	</style>
</head>
<body>
	<div id="container">
		<c:import url="../common/header.jsp"/>
		
		<div id="notice-container">
			<form name="noticeFrm" action="${pageContext.request.contextPath}/notice/noticeUpdate.nt" method="post" onsubmit="return validate();">
				<input type="hidden" name="noticeNo" value="${ notice.noticeNo }" />
				<label class="total" id="title"><h1>제목</h1></label> <input type="text" class="form-control" placeholder="제목" name="noticeTitle" id="noticeTitle" value="${notice.noticeTitle}" required style=" width: 40%; ">
				
				<br>
			    <label class="total"><h1>내용</h1></label><textarea class="form-control" name="noticeContent" placeholder="내용" required style="height: 300px; width: 40%;">${notice.noticeContent}</textarea>
				<br />
				<input type="submit" class="btn btn-outline-success" value="수정 완료" /> &nbsp;
				<input type="button" class="btn btn-outline-danger" value="삭제" onclick="location.href='${pageContext.request.contextPath}/notice/noticeDelete.nt?noticeNo=${notice.noticeNo}'"/>
			</form>
		</div>
		<c:import url="../common/footer.jsp"/>
</body>
</html>