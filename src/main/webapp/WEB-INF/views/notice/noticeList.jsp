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
<title>공지사항 목록</title> 

<!-- Define Charset -->
<meta charset="utf-8">
<c:import url="../common/util.jsp"/>

<style>
h3 b {
	color: black !important;	
}

/* h3{
		width:500px;
	margin: auto;
} */

.main-button{
	background: #1E385D !important;	
}

/* .container {
	width: 1000px;
} */

select{
	width: 110px; height: 37px; float:left; border: 1px solid #eee; line-height: 13px; font-size: 13px; margin-left: 26px;
}
</style>

<script>
	function noticeForm(){
		location.href = "${pageContext.request.contextPath}/noticeForm.nt";
	}
</script>
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
                        <p></p>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumbs">
                            <li><a href="/semosun/">Home</a>
                            </li>
                            <li><a href="#">Notice</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->

        <!-- Start Content -->
        
            <div class="container">
            
            	<br />
            
                <p><b>총 ${totalContents}건의 게시물이 있습니다.</b></p>
                
                <br />
                
                <div class="row blog-page">

                    <!-- Start Blog Posts -->
                    <div class="col-md-9 blog-box">
                    
                        <!-- Start Post -->
                        <c:forEach items="${list}" var="n" varStatus="status">
                        <div class="blog-post video-post">
                            <!-- Post Content Date -->
                            <div class="post-time-section">
                                <div class="post-date">
                                    <span class="day" style="color: white;"><c:if test="${keyword eq null}">${totalContents - (cPage - 1) * numPerPage - status.index}</c:if>
                                    										<c:if test="${!empty keyword}">${n.noticeNo}</c:if></span>
                                </div>
                                <div class="post-month">
                                    <span class="month"></span>
                                </div>
                            </div>
                            <!-- End Post Content Date -->
                            <!-- Post Content -->
                            <div class="post-content">
                                <h3><a href="${pageContext.request.contextPath}/noticeView.nt?no=${n.noticeNo}&nNumber=${totalContents - (cPage - 1) * numPerPage - status.count}"><b>${n.noticeTitle}</b></a>
                            </h3>
                                <div class="post-meta">
                                    <p>작성일 : ${n.noticeDate}</p>
                                </div>
                                <%-- <a class="main-button" href="${pageContext.request.contextPath}/noticeView.nt?no=${n.noticeNo}"> 상세보기 </a> --%>
                            </div>
                        </div>
                        </c:forEach>
                        <!-- End Post -->
                        
                        
                        <c:if test="${!empty member && member.userId eq 'admin'}">
	                        <div id="pagination" style="text-align: right;">
								<input type="button" value="글쓰기" id="btn-add" class="btn btn-outline-success" onclick="noticeForm();" />
	                        </div>
                        </c:if>

                        <!-- Start Pagination -->
                        <!-- End Pagination -->

                    </div>
                    <!-- End Blog Posts -->

                    <!--Sidebar-->
                    <div class="col-md-3 sidebar right-sidebar" style="width: 400px;
                    position: absolute; margin-left: 45%; ">

                        <!-- Search Widget -->
                     <form action="${ pageContext.request.contextPath }/noticeSearch.nt">
                        <div>
                       
                        	<select name="option">
							    <option selected value="0">제목</option>
							    <option value="1">내용</option>
							    <option value="2">제목+내용</option>
							</select>
							
                        </div>
                         <div class="widget widget-search" style="position:absolute; margin-left:140px;">
                                <input type="search" name="keyword" placeholder="Enter Keywords..." />
                                <button class="search-btn" type="submit">
                                    <i class="fa fa-search"></i>
                                </button>
                        </div>
                        
                     </form>
                    </div>
                    <!--End sidebar-->

                </div>
                
                <br />
                
                
	            <!-- 페이징처리 시작 -->
	            <div style="margin-left: 300px;">
	        		<c:out value="${pageBar}" escapeXml="false"/>
	        	</div>    
	        	<!-- 페이징처리 끝 -->
        	
        	<br /><br />
        	<br />
        	<br />
        	<br />
        	<br /><br />
        	
            </div>
        
        <!-- End Content -->
	<c:import url="../common/footer.jsp"/>
	
</body>
</html>