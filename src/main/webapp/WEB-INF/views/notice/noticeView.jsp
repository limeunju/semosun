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
	<title>공지사항 상세보기</title>

	<!-- Define Charset -->
	<meta charset="utf-8">
	<c:import url="../common/util.jsp"/>
	
<style>
.button {
	margin-left: 52%;
}

.btn {
	
	background: #4473C5;
	color: white;
}

.blog-post-page .blog-post {
	width:800px;
}
</style>
  </head>
<body>

    <!-- Container -->
    <div id="container">
    
    	<c:import url="../common/header.jsp"/>

        <!-- Start Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1 style="font-size: 27px;"><b>공지사항</b></h1>
                        <p>Blog Subtitle</p>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumbs">
                            <li><a href="#">Home</a>
                            </li>
                            <li><a href="#">Blog</a>
                            </li>
                            <li>Gallery Post With Nice Lightbox</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->

        <!-- Start Content -->
        <div id="content" style="margin-left: 20%;">
            <div class="container">
                <div class="row blog-post-page">
                
                    <div class="col-md-9 blog-box">

                        <!-- Start Single Post Area -->
                        <div class="blog-post gallery-post">

                            <div class="post-time-section">
                                <div class="post-date">
                                    <span class="day" style="color: white;">${nNumber  + 1}</span>
                                </div>
                                <div class="post-month">
                                    <span class="month"></span>
                                </div>
                            </div>

                            <!-- Start Single Post Content -->
                            <div class="post-content" style="width: 750px;">
                                <h2><b>${notice.noticeTitle}</b></h2>
                                <ul class="post-meta">
                                    <p>작성일 : ${notice.noticeDate}</p>
                                </ul>
                                <p id="noticeContent" style="white-space: pre-wrap;"><c:out value="${notice.noticeContent}"/></p>
                            </div>
                            <!-- End Single Post Content -->

                        </div>
                        <!-- End Single Post Area -->

                    </div>
                    
                </div>
            </div>
            <div class="button">
			     <c:if test="${!empty member && member.userId eq 'admin'}">
					<button class="btn btn-outline-info" type="button" onclick="location.href='${pageContext.request.contextPath}/notice/noticeUpdateView.nt?noticeNo=${notice.noticeNo}'">수정하기</button>
				</c:if>
					&nbsp;
	            	<button class="btn btn-outline-info" type="button" onclick="location.href='${pageContext.request.contextPath}/noticeList.nt'">리스트로</button>
			</div>
        </div>
        <div style="height: 200px;"></div>
        <!-- End content -->

    <c:import url="../common/footer.jsp"/>
    
</body>
</html>