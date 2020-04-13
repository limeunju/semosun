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
	<title>문의게시판 글작성폼</title>

	<!-- Define Charset -->
	<meta charset="utf-8">	
	<c:import url="../common/util.jsp"/>
	
	
	<style>

textarea, input[type="text"] {
	color: black !important;
}
#submitD{
	background-color: #4473c5ff;
	color: white;
	font-size: 15px;
	font-weight: 500;
	margin-bottom: 4px;
	height: 45px;
	width: 60px;
}
#submitU{
		font-size: 15px;
		font-weight: 500;
		height: 45px;
		width: 60px;
}
#submitL{
	background-color: #4473c5ff;
	color: white;
	font-size: 15px;
	font-weight: 500;
	margin-bottom: 4px;
	height: 45px;
	width: 60px;
}
	</style>
  </head>
<body>

    <!-- Container -->
    <div id="container">

		<c:import url="../common/header.jsp"/>
		
		<form name="QnaFrm" action="${pageContext.request.contextPath}/qna/qnaUpdate.do" method="post" onsubmit="return validate();">

        <!-- Start Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1><b>문의사항</b></h1>
                        <p>문의사항을 작성하는 페이지입니다.</p>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumbs">
                            <li><a href="#">Home</a>
                            </li>
                            <li><a href="#"> Notice</a>
                            </li>
                            <li> UPDATE QNA</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->

        <!-- Start Content -->
        <div id="content">
            <div class="container">
                <div class="blog-post-page">
                    <div class="blog-box">

                        <!-- Start Respond Form -->
                        <div id="respond">
                            <h2 class="respond-title"><b>글 상세보기</b></h2>
                            <form action="/qna/qnaUpdate.do?qna=${qna.qNo}" method="post">
                                <div class="row">
                                    <div class="col-md-8" style="width: 760px;">
                                    <input id="qNo" name="qNo" type="hidden" size="30" aria-required="true" value="${qna.qNo} "/>
                                    <input id="author" name="userNo" type="hidden" size="30" value="${member.userNo}"aria-required="true"/>
                                        <label for="author">제목<span class="required"></span></label>
                                        <input id="qTitle" name="qTitle" type="text" size="30" aria-required="true" value="${qna.qTitle}" style="width:100% !important"  disabled/>
                                    </div>
                                    <div class="col-md-4" style="margin-right:10px;">
                                        <label for="email">작성일</label> <br />
                                        <!-- <input id="currnetDate" name="noticeDate" type="date" value="2020-01-05" size="30" aria-required="true" disabled> -->
                                        <!-- <input type='date' id='currnetDate' name="noticeDate"> -->
                                        <input type='text' id='qDate' name="qDate" value="${qna.qDate} " style="height: 36px; width: 150px; background: white;" disabled/>
                                    </div>
									
									<script>
									  document.getElementById('currentDate').value = new Date().toISOString().substring(0, 10);
									</script>
                                    <!-- <div class="col-md-4">
                                    </div> -->
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label for="comment">내용<span class="required"></span></label>
                                        <textarea id="qContent" name="qContent" cols="45" rows="9" aria-required="true"  disabled>${qna.qContent}</textarea>
                                        <br />
                                        
                                    
	                                	<div class="row">
	                                    	<div class="col-md-12">
	                                        	<label for="comment">답변<span class="required">:</span></label>
	                                        	<textarea id="answer" name="answer" cols="45" rows="9"aria-required="true" style="background: white;">${qna.answer}</textarea>
	                                    	</div>
	                                	</div>
	                              
                                        
                                        
                                        
                                        <input name="submit" type="submit" id="submitU" value="답변">
                                        <input id="submitD" type="button" class="btn btn-outline-danger" value="삭제" onclick="location.href='${pageContext.request.contextPath}/qna/qnaDelete.do?qNo=${qna.qNo}'"/>
                                    	<input id="submitL" type="button" class="btn btn-outline-danger" value="항목" onclick="location.href='${pageContext.request.contextPath}/qnaList.do'"/>
                                    	<br /><br /><br /><br />
                                    </div>
                                </div>

                            </form>
                        </div>
                        <!-- End Respond Form -->
                       
                    </div>
                </div>
            </div>
        </div>
        <!-- End content -->
        
        </form>

	<c:import url="../common/footer.jsp"/>
</body>
</html>