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
	<title>공지사항 글작성폼</title>

	<!-- Define Charset -->
	<meta charset="utf-8">	
	<c:import url="../common/util.jsp"/>
	
	
	<style>
		/* .col-md-4 {
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark-color(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-appearance: textfield;
    background-color: white;
    -webkit-rtl-ordering: logical;
    cursor: text;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 0px;
    border-width: 2px;
    border-color: initial;
    border-image: initial;
    padding-top: 25px;
} */

textarea, input[type="text"] {
	color: black !important;
}
	</style>
  </head>
<body>

    <!-- Container -->
    <div id="container">

		<c:import url="../common/header.jsp"/>
		
		<form name="NoticeFrm" action="${pageContext.request.contextPath}/notice/noticeFormEnd.nt" method="post" onsubmit="return validate();">

        <!-- Start Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1><b>공지사항</b></h1>
                        <p>공지사항 작성하는 페이지입니다.</p>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumbs">
                            <li><a href="#">Home</a>
                            </li>
                            <li><a href="#"> Notice</a>
                            </li>
                            <li> Insert Notice</li>
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
                            <h2 class="respond-title"><b>글 작성하기</b></h2>
                            <form action="#">
                                <div class="row">
                                    <div class="col-md-8">
                                        <label for="author">제목<span class="required">*</span></label>
                                        <input id="author" name="noticeTitle" type="text" size="30" aria-required="true" style="width: 100%"/>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="email">작성일</label> <br />
                                        <!-- <input id="currnetDate" name="noticeDate" type="date" value="2020-01-05" size="30" aria-required="true" disabled> -->
                                        <!-- <input type='date' id='currnetDate' name="noticeDate"> -->
                                        <!-- <input type='date' id='currentDate' name="noticeDate" style="height: 36px;" disabled/> -->
                                        <input id="currentDate" name="noticeDate" type="text" size="30" aria-required="true" style="width: 130px; " disabled/>
                                    </div>
									  
									
									<script>
									  document.getElementById('currentDate').value = new Date().toISOString().substring(0, 10);;
									</script>
                                    <!-- <div class="col-md-4">
                                    </div> -->
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label for="comment">내용<span class="required">*</span></label>
                                        <textarea id="comment" name="noticeContent" cols="45" rows="9" aria-required="true"></textarea>
                                        <input name="submit" type="submit" id="submit" value="작성하기">
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