<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>

	<!-- Basic -->
	<title>신고 작성</title>

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
		
														
        <!-- Start Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1><b>적폐청산</b></h1>
                        <p></p>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumbs">
                            <li><a href="#">Home</a>
                            </li>
                            <li><a href="#"> Report</a>
                            </li>
                            <li> Insert Report</li>
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
            
                          <div class="row">
                                    <div class="col-md-8">
                            <h2 class="respond-title"><b>신고 작성하기</b></h2>
                                       <br />
                          </div>
                                    
                                    <div class="col-md-4">
                                        <label for="email">작성일</label> <br />
                                        <!-- <input id="currnetDate" name="noticeDate" type="date" value="2020-01-05" size="30" aria-required="true" disabled> -->
                                        <!-- <input type='date' id='currnetDate' name="noticeDate"> -->
                                        <input type='date' id='currentDate' name="reDate" style="height: 36px;" disabled/>
                                    </div>
									  
									
									<script>
									  document.getElementById('currentDate').value = new Date().toISOString().substring(0, 10);
									</script>
                                    <!-- <div class="col-md-4">
                                    </div> -->
                                </div>
							<form name="ReportFrm" action="${pageContext.request.contextPath}/report/reportendForm.do?rno=${rno}&userNo=${member.userNo}&tNo=${tNo}" method="post" >
                                <div class="row">
                                    <div class="col-md-12">
                                        <label for="comment">내용<span class="required">*</span></label>
                                        <textarea id="comment" name="ref_content" cols="45" rows="9" aria-required="true"></textarea>
                                        <input  type="submit" id="submit" value="작성하기">
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
        

	<c:import url="../common/footer.jsp"/>

</body>
</html>