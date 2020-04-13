<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 상세 내용</title>
<c:import url="../common/util.jsp"/>
	
<style>


.button {
	margin-left: 1000px;
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
                        <h2></h2>
                        
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
        <div id="content">
            <div class="container">
                <div class="row blog-post-page">
                    <div class="col-md-9 blog-box">

                        <!-- Start Single Post Area -->
                        <div class="blog-post gallery-post">

                            <div class="post-time-section">
                                <div class="post-date">
                                    <span class="day"></span>
                                </div>
                                <div class="post-month">
                                    <span class="month"></span>
                                </div>
                            </div>

                            <!-- Start Single Post Content -->
                            <div class="post-content" style="width: 1000px;">
                                <h2><b>하하하됬다.</b></h2>
                                <ul class="post-meta" style="text-align:end;">
                                    <p>작성일 : ${report.ref_date}</p>
                                    <p>작성자 :${report.nickName}</p>
                                </ul>&nbsp
                               <p id="ref_content" style="font-size:20px;">${report.ref_content}
                                 <br /><br /><span style="font-size:small; color:red;">신고받은 리뷰 제목 : ${report.rtitle}</span><c:out value=""/></p>
                            
                            	
                            	
                            	<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/report/reportDelete.do?rno=${report.rno}&userNo=${report.userNo}'">삭제하기</button>
                            
                            	
                            </div>
                            <!-- End Single Post Content -->

                        </div>
                        <!-- End Single Post Area -->

                    </div>
                    
                </div>
            </div>
            <div class="button">
	            <button class="btn btn-outline-info" type="button" onclick="location.href='${pageContext.request.contextPath}/reportList.do'">리스트로</button>
			    <%-- <c:if test="${member.userId eq board.boardWriter}"> --%>
			    &nbsp;
<%-- 				<button class="btn btn-outline-info" type="button" onclick="location.href='${pageContext.request.contextPath}/notice/noticeUpdateView.nt?noticeNo=${notice.noticeNo}'">수정하기</button> --%>
				<%-- </c:if> --%>
			</div>
        </div>
        <div style="height: 200px;"></div>
        <!-- End content -->

    <c:import url="../common/footer.jsp"/>
</body>
</html>