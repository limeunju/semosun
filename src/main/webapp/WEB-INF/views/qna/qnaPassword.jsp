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
	</style>
  </head>
<body>

    <!-- Container -->
    <div id="container">

		<c:import url="../common/header.jsp"/>
		<%-- 
		<form name="QnaFrm" action="${pageContext.request.contextPath}/qna/qnaPwd.do" method="post" onsubmit="return validate();">
 --%>
        <!-- Start Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1><b>비밀번호 입력</b></h1>
                        <p></p>
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
							<div style="height:70px;"></div> <br /><br /><br /><br /><br />
                        <!-- Start Respond Form -->
                        <div style="border: solid 1px #D0D4D7; margin: auto; width:500px; heigbt: 250px;">
                        <div id="respond" style="margin-left: 90px; margin-bottom: 20px;">
                            <form action="${pageContext.request.contextPath}/qna/qnaSelectOnePwd.do" method="post" style="width:600px; margin-right:300px;">
                            <h2 class="respond-title"><b>비밀번호 입력</b></h2>
                                <div class="row">
                                    <div class="col-md-8">
                                    <input id="qNo" name="qNo" type="hidden" size="30" aria-required="true" value="${qna.qNo} "/>
                                    <input id="userNo" name="userNo" type="hidden" size="30" aria-required="true" value="${qna.userNo} "/>
<%--                                     <input id="author" name="userNo" type="hidden" size="30" value="${member.userNo}"aria-required="true"/> --%>
                                        <label for="author">비밀번호 : <span class="required">*</span></label>
                                        <input id="pwd" name="checkPwd" type="password" size="30" aria-required="true"/>
                                    </div>
                                    
                                    <!-- <div class="col-md-4">
                                    </div> -->
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                    
                                        <input name="submit" type="submit" id="submit" value="입력" >
                                        
                                    </div>
                                </div>
                            </form>
                        </div>
                        </div>
                        <!-- End Respond Form -->
                       </div>
                    </div>
                </div>
                
                <div style="height: 260px;"></div>
                
            </div>
        <!-- </form> -->
        </div>
        <!-- End content -->
	<c:import url="../common/footer.jsp"/>
</body>
</html>