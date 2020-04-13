<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="ko">
<!--<![endif]-->

<head>
<!-- Basic -->
<title>${Teacher.tName} 선생님 리뷰 - 세모선</title>

<!-- Define Charset -->
<meta charset="utf-8">

<c:import url="../common/util.jsp" />
<!-- headerCss CSS Styles  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/highcharts.css" type="text/css"  media="screen" />

<style type="text/css">
.widget-teacherProfile {
    text-align: center;
}
.blog-page>div>div:not(:last-child), .comment-box.clearfix {
    box-shadow: 0px 0px 20px 0px lightgrey;
    padding: 30px;
}
.avatar>button {
/* 	장단점 버튼 */
	width: 66px;
}
.divBtn {
    text-align: right;
}
.reportBtn{
    background-color: #444;
    color: #fff;
    border: 0;
    border-radius: 5px;
}
.prosConsBottom {
	padding-top: 0;
}


.modal-dialog-centered {

    max-width: 500px;
    margin: 1.75rem auto;
    
    min-height: calc(100% - 3.5rem);
    display: flex;
    align-items: center;
}
.UDBtnDiv {
	text-align-last: justify;
}
.UDBtnDiv div {
	display: inline-block;
}

.modal-body .progress-bar {
	transition: width .2s ease-out;
}
.clearfix+ul{
	margin-left: 15% !important;
}
.box.jsx-3001902121 {
    color: rgb(255, 255, 255);
    display: block;
    height: 24px;
    line-height: 24px;
    font-size: 12px;
    font-weight: normal;
    padding: 0px 16px;
    border-radius: 16px;
}
.primary {
    background-color: rgb(93, 126, 233);
}
.point {
    background-color: rgb(255, 51, 102);
}
.post-head .row {
    margin-right: 0px;
    margin-left: 0px;
}
.comment-content>h2 {
    margin-block-end: 0;
}
.myLike {
    background: rgba(230, 130, 160, 0.4);
    box-shadow: 0px 0px 5px 0px rgba(230, 130, 160);
    border: 0px;
	
}

</style>
</head>
<body>

    <!-- Container -->
    <div id="container">
		<c:import url="../common/header.jsp" />
		
        <!-- Start Page Banner -->
        <div class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2>${Teacher.tName} 선생님 리뷰</h2>
                        <p>과목 : ${ Teacher.subject } / 소속 : ${ Teacher.company }</p>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumbs">
                            <li>${Teacher.tName} 선생님 리뷰</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->

        <!-- Start Content -->
        <div id="content">
            <div class="container">
                <div class="row blog-page">

                    <!--Sidebar-->
                    <div class="col-md-3 sidebar left-sidebar">

					   <div class="widget widget-teacherProfile">
                           <div class="custom-testimonial-img">
                           <!-- 강사 사진 경로 : ${Teacher.profileName} -->
                               <img class="fade-in-animate" src="${pageContext.request.contextPath}/resources/images/profileImage2/${Teacher.profileName}" alt="">
                           </div>
                           <div class="custom-testimonial-user-info">
                               <h2>${Teacher.tName}</h2>
                               <h3>${Teacher.company}</h3>
                               <h4>${Teacher.subject}</h4>
                           </div>
                        </div>
                        
                    	<c:if test="${Teacher.tStatus eq 'Y'}">
                        <!-- Popular Posts widget -->
                        <div class="widget widget-popular-posts">
                            <h4>Popular Post <span class="head-line"></span></h4>
                            <ul>
                                <li>
                                    <div class="widget-thumb">
                                        <a href="#"><img src="" alt="" /></a>
                                    </div>
                                    <div class="widget-content">
                                        <h5>
                                        <a href="#">How To Download The Google Fonts Catalog</a>
                                    </h5>
                                        <span></span>
                                    </div>
                                    <div class="clearfix"></div>
                                    <ul>
                                    <h4></h4>
		                                <li>
		                                    <a href="#">Brandign</a>
		                                </li>
		                                <li>
		                                    <a href="#">Design</a>
		                                </li>
		                                <li>
		                                    <a href="#">Development</a>
		                                </li>
		                                <li>
		                                    <a href="#">Graphic</a>
		                                </li>
		                            </ul>
                                </li>
                                <li>
                                    <div class="widget-thumb">
                                        <a href="#"><img src="" alt="" /></a>
                                    </div>
                                    <div class="widget-content">
                                        <h5>
                                        <a href="#">How To Download The Google Fonts Catalog</a>
                                    </h5>
                                        <span>Jul 29 2013</span>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                                <li>
                                    <div class="widget-thumb">
                                        <a href="#"><img src="" alt="" /></a>
                                    </div>
                                    <div class="widget-content">
                                        <h5>
                                        <a href="#">How To Download The Google Fonts Catalog</a>
                                    </h5>
                                        <span>Jul 29 2013</span>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </div>
                        
                        
						<!-- 등록하기 button -->
						<button id="insert" type="button" class="btn btn-primary" data-toggle="modal" 
							data-target="#exampleModalCenter" onclick="modalDataBtn(this, true);" <c:if test="${empty member}"> disabled </c:if>>
							리뷰 등록하기
						</button>
						<!-- 등록하기 button -->
						
	                    </c:if>
	                    <c:if test="${Teacher.tStatus eq 'N'}">
	                    	<div class="widget widget-popular-posts"> 
	                    		승인 대기중입니다. 
	                    	</div>
	                    </c:if>
                    </div>
                    <!--End sidebar-->

					<c:if test="${Teacher.tStatus eq 'Y'}">
                    <!-- Start Blog Posts -->
                    <div class="col-md-9 blog-box">

                        <!-- Start Post -->
                        <div class="blog-post image-post">
                        
                            <!-- Post Thumb -->
                            <div class="post-head">
	                 <div class="row">
	                    <!-- Start Service Icon 1 -->
	                    <div class="col-sm-6 service-box service-icon-left">
	                     <h4 class="classic-title"><span>추천 기준</span></h4>
	                        <div class="service-icon">
	                            <i class="fa fa-trophy icon-mini-effect icon-effect-1"></i>
	                        </div>
	                        <div class="service-content">
	                            <h4>총 평점</h4>
                                <div class="jsx-2318878368 rating">
									<span class="jsx-2318878368">${reviewAvg}</span>
									<div class="jsx-237548703 stars">
									</div>
		                        </div>
	                        </div>
	                    </div>
	                    <!-- End Service Icon 1 -->
	                    <!-- Start Service Icon 2 -->
	                    <div class="col-sm-6 service-box service-icon-left">
	                     <h4 class="classic-title"><span>리뷰 수</span></h4>
	                        <div class="service-icon">
	                            <i class="fa fa-trophy icon-mini-effect icon-effect-1"></i>
	                        </div>
	                        <div class="service-content">
	                            <c:if test="${reviewCount == 0}">
	                            	<h4>아직 리뷰가 등록되지 않았습니다.<br>
                        				첫 리뷰의 주인공이 되어 보세요!
                       				</h4>
	                        	</c:if><c:if test="${reviewCount != 0}">
	                            <h4>지금도 리뷰가 올라오고 있어요!</h4>
		                        	<div class="milestone-block">
			                            <div class="milestone-right">
			                                <span class="milestone-text">총</span>
			                                <span class="milestone-number">${reviewCount}</span>
			                                <span class="milestone-text"> 개의 리뷰</span>
			                            </div>
			                        </div>
	                        	</c:if>
	                        </div>
	                    </div>
	                    <!-- End Service Icon 2 -->
	                 </div>
					<div class="row">
                    <!-- Start Service Icon 4 -->
                    <div class="col-sm-6 service-box service-icon-left">
                     <h4 class="classic-title"><span>강의 스타일 기준</span></h4>
                        <div class="service-icon">
                            <i class="fa fa-rocket icon-mini-effect icon-effect-1"></i>
                        </div>
                        <div class="service-content">
                            <h4>${member.nickName}님에게 맞는 <br>강의 스타일을 확인하세요!</h4>
                            <figure class="highcharts-figure">
							    <div id="highchart-container1"></div>
							</figure>
                        </div>
                    </div>
                    <!-- End Service Icon 4 -->
                    <!-- Start Service Icon 3 -->
                    <div class="col-sm-6 service-box service-icon-left">
                     <h4 class="classic-title"><span>강의평 분석</span></h4>
                        <div class="service-icon">
                            <i class="fa fa-rocket icon-mini-effect icon-effect-1"></i>
                        </div>
                        <div class="service-content">
                            <h4>리뷰의 통계를 확인하세요!</h4>
                           <figure class="highcharts-figure">
					    <div id="highchart-container2"></div>
					</figure>
                        </div>
                    </div>
                    <!-- End Service Icon 3 -->
	               </div>
                            </div>
                           
                        </div>
                        <!-- End Post -->

                        <!-- Start Comment Area -->
                        <div id="comments">
                            <ol class="comments-list">
                    <!-- --------------------------- 리뷰 for-each 시작 --------------------------- -->
                            <c:forEach items="${list}" var="r" varStatus="num">
                            <!-- list[0] → r -->
                                <li>
                                    <div class="comment-box clearfix">
                                      	<!-- 수정용.. 귀찮아서..  -->
										<input type="hidden" name="score1" value="${r.score1}"/>
										<input type="hidden" name="score2" value="${r.score2}"/>
										<input type="hidden" name="score3" value="${r.score3}"/>
										<input type="hidden" name="score4" value="${r.score4}"/>
										<input type="hidden" name="score5" value="${r.score5}"/>
										<input type="hidden" name="score6" value="${r.score6}"/>
										<input type="hidden" name="score7" value="${r.score7}"/>
										<input type="hidden" name="score8" value="${r.score8}"/>
										<input type="hidden" name="score9" value="${r.score9}"/>
										<input type="hidden" name="score10" value="${r.score10}"/>
		            					<input type="hidden" name="rno" value="${r.rno}"/>
										<input type="hidden" name="rtitle" value="${r.rtitle}"/>
										<input type="hidden" name="gcontent" value="${r.gcontent}"/>
										<input type="hidden" name="bcontent" value="${r.bcontent}"/>
										
										
                                        
		                                <!-- 제목, 작성자, 날짜 -->
                                        <div class="avatar"><img alt="" src="${pageContext.request.contextPath}/resources/images/profileImage/${r.profileName}" /></div>
                                        <div class="comment-content">
	                            			<h2>${r.rtitle}</h2>
                            				<!-- <h4>RTITLE Gallery Post With Nice Lightbox</h4> -->
                                            <div class="comment-meta post-bottom UDBtnDiv">
                                            	<div>
	                                                <span class="comment-by">${r.nickName}</span>
	                                                <span class="comment-date dateForm">${r.rdate}</span>
                                                </div>
                                                <div>
                                                	<div class="service-content">
						                                <div class="jsx-2318878368 rating">
															<span class="jsx-2318878368">${(r.score6+r.score7+r.score8+r.score9+r.score10)/5}</span>
															<div class="jsx-237548703 stars">
															</div>
								                        </div>
							                        </div>
                                                <c:if test="${member.userNo eq r.userNo}">
	                                                <div>
														<button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#exampleModalCenter" onclick="modalDataBtn(this, false);">수정</button>
														<button type="button" class="btn btn-danger btn-sm" onclick="if(confirm('정말 삭제 하시겠습니까?') == true) location.href = '${pageContext.request.contextPath }/review/deleteReview.do?rno=${r.rno}&tNo=${Teacher.tNo}' ">삭제</button>
													</div>
												</c:if>
	                            				</div>
                                            </div>
                                        </div>
		                                <!-- 제목, 작성자, 날짜 End -->
                                    
	                                      <ul>
		                                    <!-- 장점 -->
	                                        <li>
	                                            <div>
	                                                <div class="avatar"><span class="jsx-3001902121 box primary">장점</span></div>
	                                                <div class="comment-content">
	                                                    <div class="comment-meta">
	                                                    	<p>${r.gcontent}</p>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </li>
	                                        <br />
		                                    <!-- 단점 -->
	                                        <li>
	                                            <div>
	                                                <div class="avatar"><span class="jsx-3001902121 box point">단점</span></div>
	                                                <div class="comment-content post-bottom prosConsBottom">
	                                                    <div class="comment-meta">
	                                                    	<p>${r.bcontent}</p>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </li>
	                                    </ul>
                                    <!-- 좋아요, 신고 -->
                                   <div class="divBtn">
                                   <c:if test="${r.checkLike == 1}">
	                                  <button class="btn btn-default btn-md myLike" type="button" onclick="like(this, ${r.rno},  ${empty member? 0:member.userNo }, ${Teacher.tNo});"><i class="fa fa-heart"></i> ${r.likeCount}</button>
                                   </c:if><c:if test="${r.checkLike == 0}">
	                                  <button class="btn btn-default btn-md" type="button" onclick="like(this, ${r.rno}, ${empty member? 0:member.userNo }, ${Teacher.tNo});"><i class="fa fa-heart"></i> ${r.likeCount}</button>
                                   </c:if> 
	                                  <button class="btn btn-default btn-md reportBtn" type="button" onclick="fn_reportView(${r.rno});"><i class="fa fa-home"></i> 신고</button>
                                   </div>
									<!-- 좋아요, 신고 End -->
									
                                  </div>
                                </li>
                            </c:forEach>
               <!-- --------------------------- 리뷰 for-each 끝 --------------------------- -->
                            </ol>
                        </div>
                        <!-- End Comment Area -->

						<div style="text-align: center;">
	                        <!-- Start Pagination -->
	                        <c:out value="${pageBar}" escapeXml="false"/>
	                        <!-- End Pagination -->
						</div>
                    </div>
                    <!-- End Blog Posts -->
                    </c:if>
                    <c:if test="${Teacher.tStatus eq 'N'}">
                    	<div class="col-md-9 blog-box"> 
                    		승인 대기중입니다. 
                    	</div>
                    </c:if>
                    
                </div>
            </div>
        </div>
        <!-- End Content -->
</div>







<c:if test="${!empty member }">
<!-- 리뷰 작성하기 Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
    <form action="">
    <input type="hidden" name="rno" value=""/>
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">리뷰 등록하기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body" id="respond">
      <!-- 리뷰 작성 내용 -->
        <div class="tabs-section">
          <!-- Nav Tabs -->
          <ul class="nav nav-tabs">
              <li class="active"><a href="#tab-1" data-toggle="tab"><i class="fa fa-desktop"></i> 강사님 스타일</a></li>
              <li><a href="#tab-2" data-toggle="tab"><i class="fa fa-leaf"></i> 추천 별점</a></li>
              <li><a href="#tab-3" data-toggle="tab"><i class="fa fa-leaf"></i> 상세리뷰</a></li>
          </ul>

          <div class="tab-content">
              <!-- Tab Content 1 : 별점 (추천) -->
		      <div class="tab-pane fade in active" id="tab-1">
	            <p><strong class="accent-color">강사 스타일 기준</strong> <br>
	            		상대적인 평가로써, 개인마다 다른 기준을 가지고 있습니다!
           		</p>
	            <ul class="icons-list">
                    <li><i class="fa fa-check"></i> 객관적인 평가가 아닌 무조건적인 비난은 안돼요! 예시) 1점 통일</li>
                    <li><i class="fa fa-check"></i> 댓글 알바로 의심되는 경우에는 즉시 삭제처리 될 수 있습니다.</li>
	            </ul>
                <pre style="background: white;">                                                              </pre>
                <h4 class="classic-title"><span>강사님 스타일 </span></h4>
	            <div class="progress-bars">
				<div class="row">
					<div class="col-sm-6">
				        <div class="progress-label"> 수업의 난이도 수준이 높나요? </div>
				        <div class="progress">
				            <div class="progress-bar progress-bar-primary" data-progress-animation="100%">
				                <span class="progress-bar-tooltip" style="min-width: max-content;">5점</span>
				            </div>
				        </div>
				     </div>
	                 <div class="col-sm-6">
	                    <input type="range" max="5" min="0" step="1" name="score1" onchange="changeProgress(this);"><br />
	                 </div>   
				    </div>
				<div class="row">
					<div class="col-sm-6">
				        <div class="progress-label"> 유머를 많이 하시는 분인가요? </div>
				        <div class="progress">
				            <div class="progress-bar progress-bar-primary" data-progress-animation="100%">
				                <span class="progress-bar-tooltip" style="min-width: max-content;">5점</span>
				            </div>
				        </div> 
				     </div> 
	                 <div class="col-sm-6">
	                    <input type="range" max="5" min="0" step="1"  name="score2" onchange="changeProgress(this);" ><br />
	                 </div>   
				    </div> 
				<div class="row">
					<div class="col-sm-6">
				        <div class="progress-label"> 과제가 많은 편인가요? </div>
				        <div class="progress">
				            <div class="progress-bar progress-bar-primary" data-progress-animation="100%">
				                <span class="progress-bar-tooltip" style="min-width: max-content;">5점</span>
				            </div>
				        </div> 
				     </div> 
	                 <div class="col-sm-6">
	                    <input type="range" max="5" min="0" step="1"  name="score3" onchange="changeProgress(this);" ><br />
	                 </div>   
				    </div> 
				<div class="row">
					<div class="col-sm-6">
				        <div class="progress-label"> 교재가 많은 편인가요? </div>
				        <div class="progress">
				            <div class="progress-bar progress-bar-primary" data-progress-animation="100%">
				                <span class="progress-bar-tooltip" style="min-width: max-content;">5점</span>
				            </div>
				        </div> 
				     </div>
	                 <div class="col-sm-6">
	                    <input type="range" max="5" min="0" step="1" name="score4" onchange="changeProgress(this);"><br />
	                 </div>    
				    </div> 
				<div class="row"> 
					<div class="col-sm-6">
				        <div class="progress-label"> 강사님의 발음, 발성, 속도의 강도가 어떠한가요? (차분 ↔ 파워풀) </div>
				        <div class="progress">
				            <div class="progress-bar progress-bar-primary" data-progress-animation="100%">
				                <span class="progress-bar-tooltip" style="min-width: max-content;">5점</span>
				            </div>
				        </div> 
				     </div> 
	                 <div class="col-sm-6">
	                    <input type="range" max="5" min="0" step="1" name="score5" onchange="changeProgress(this);"><br />
	                 </div>   
				</div>
	       		</div>
              </div>
		      <!-- 별점 5개 End -->
		      
		      
		      
		      
              <!-- Tab Content 2 : 별점(스타일) -->
		      <div class="tab-pane fade in" id="tab-2">
	            <p><strong class="accent-color">추천 기준</strong> <br />
	            	보편적인 기준으로써, 추천할 수 있는지 생각해봅니다!
	            </p>
	            <ul class="icons-list">
                    <li><i class="fa fa-check"></i> 객관적인 평가가 아닌 무조건적인 비난은 안돼요! 예시) 1점 통일</li>
                    <li><i class="fa fa-check"></i> 댓글 알바로 의심되는 경우에는 즉시 삭제처리 될 수 있습니다.</li>
	            </ul>
                <pre style="background: white;">                                                              </pre>
                <h4 class="classic-title"><span>추천 별점 </span></h4>
                <div class="progress-bars">
				<div class="row">
					<div class="col-sm-6">
				        <div class="progress-label"> 당신의 동생이나 친한 후배에게 이 선생님을 추천하시겠습니까? </div>
				        <div class="progress">
				            <div class="progress-bar progress-bar-primary" data-progress-animation="100%">
				                <span class="progress-bar-tooltip" style="min-width: max-content;">5점</span>
				            </div>
				        </div>
				     </div>
	                 <div class="col-sm-6">
	                    <input type="range" max="5" min="0" step="1" name="score6" onchange="changeProgress(this);"><br />
	                 </div>   
				    </div>
				<div class="row">
					<div class="col-sm-6">
				        <div class="progress-label"> 수업의 몰입도는 높은가요? </div>
				        <div class="progress">
				            <div class="progress-bar progress-bar-primary" data-progress-animation="100%">
				                <span class="progress-bar-tooltip" style="min-width: max-content;">5점</span>
				            </div>
				        </div> 
				     </div> 
	                 <div class="col-sm-6">
	                    <input type="range" max="5" min="0" step="1"  name="score7" onchange="changeProgress(this);" ><br />
	                 </div>   
				    </div> 
				<div class="row">
					<div class="col-sm-6">
				        <div class="progress-label"> 질의 응답 등, 다양한 소통을 통해 학생들을 도와주시나요? </div>
				        <div class="progress">
				            <div class="progress-bar progress-bar-primary" data-progress-animation="100%">
				                <span class="progress-bar-tooltip" style="min-width: max-content;">5점</span>
				            </div>
				        </div> 
				     </div> 
	                 <div class="col-sm-6">
	                    <input type="range" max="5" min="0" step="1"  name="score8" onchange="changeProgress(this);" ><br />
	                 </div>   
				    </div> 
				<div class="row">
					<div class="col-sm-6">
				        <div class="progress-label"> 수업 교재는 학습에 도움이 되었나요? </div>
				        <div class="progress">
				            <div class="progress-bar progress-bar-primary" data-progress-animation="100%">
				                <span class="progress-bar-tooltip" style="min-width: max-content;">5점</span>
				            </div>
				        </div> 
				     </div>
	                 <div class="col-sm-6">
	                    <input type="range" max="5" min="0" step="1" name="score9" onchange="changeProgress(this);"><br />
	                 </div>    
				    </div> 
				<div class="row"> 
					<div class="col-sm-6">
				        <div class="progress-label"> 수강 후 성적/실력이 원하는만큼 향상되었나요? </div>
				        <div class="progress">
				            <div class="progress-bar progress-bar-primary" data-progress-animation="100%">
				                <span class="progress-bar-tooltip" style="min-width: max-content;">5점</span>
				            </div>
				        </div> 
				     </div> 
	                 <div class="col-sm-6">
	                    <input type="range" max="5" min="0" step="1" name="score10" onchange="changeProgress(this);"><br />
	                 </div>   
				</div>
	       		</div>
              </div>
		      <!-- 별점 5개 End -->
        
        
              <!-- Tab Content 2 : 리뷰 내용 -->
              <div class="tab-pane fade" id="tab-3">
                <p><strong class="accent-color">리뷰 내용 입력하기</strong></p>
                <ul class="icons-list">
                    <li><i class="fa fa-check"></i> 학원 관계자로 의심된다고 추정되는 글은 관리자가 삭제합니다.</li>
                    <li><i class="fa fa-check"></i> 객관적인 평가가 아닌 ‘감사의 편지글’은 리뷰라고 할 수 없어요!</li>
                    <li><i class="fa fa-check"></i> 강사와는 무관한 본인 성적에 대한 자랑은 삼가해주세요^^;</li>
                </ul>
                <hr />
                
		    	<!-- 작성자 확인 -->
		        <div class="row">
		            <div class="col-sm-4"><!-- 강사 소속 -->
				        <label for="recipient-name" class="col-form-label">소속:<span class="required">*</span></label>
				        <input type="text" class="form-control" id="recipient-name" aria-required="true" readonly="readonly" value="${Teacher.company}" style="width: 100%;">
		            </div>
		            <div class="col-sm-4"><!-- 강사 이름 -->
		            	<input type="hidden" name="tNo" value="${Teacher.tNo}"/>
				        <label for="recipient-name" class="col-form-label">강사:<span class="required">*</span></label>
				        <input type="text" class="form-control" id="recipient-name" aria-required="true" readonly="readonly" value="${Teacher.tName}" style="width: 100%;">
		            </div>
		            <div class="col-sm-4"><!-- 작성자 이름 -->
		            	<input type="hidden" name="userNo" value="${member.userNo }"/>
				        <label for="recipient-name" class="col-form-label">작성자:<span class="required">*</span></label>
				        <input type="text" class="form-control" id="recipient-name" aria-required="true" readonly="readonly" value="${member.nickName}" style="width: 100%;">
		            </div>
		        </div>
		    	<!-- 리뷰 -->
		        <div class="row"><!-- 한줄 평 -->
		            <div class="col-md-12">
				         <label for="recipient-name" class="col-form-label">선생님에 대하여 한줄평을 입력해주세요. <span class="required">*</span></label>
				        <input type="text" class="form-control" id="recipient-name" aria-required="true" name="rtitle" value="rtitle" style="width: 100%;"/>
		            </div>
		        </div>
                <pre style="background: white;">                                                              </pre>
		        <div class="row"><!-- 장점 -->
		            <div class="col-md-12">
				        <label for="message-text" class="col-form-label"><span class="jsx-3001902121 box primary">장점</span></label><label for="message-text"><span class="required">&nbsp;*</span></label>
				        <textarea class="form-control" id="message-text" cols="45" rows="3" aria-required="true" name="gcontent" style="width: 100%;" placeholder="어떤 점이 좋았는지를 알려주세요. 내가 1년 전 필요했던 정보는 그 선생님의 “가장 큰 장점”에 대한 “이유”를 포함한 정보 입니다.">gcontent</textarea>
		            </div>
		        </div>
		        <div class="row"><!-- 단점 -->
		            <div class="col-md-12">
				        <label for="message-text" class="col-form-label"><span class="jsx-3001902121 box point">단점</span></label><label for="message-text"><span class="required">&nbsp;*</span></label>
				        <textarea class="form-control" id="message-text" cols="45" rows="3" aria-required="true" name="bcontent" style="width: 100%;" placeholder="어떤 점이 불만이었는지, 무엇이 부족하다고 생각하셨는지를 알려주세요. 우리가 알고 싶은 것은, “무엇이 좋냐”뿐 아니라 “무엇이 안 좋냐”를 포함한 정보 입니다.">bcontent</textarea>
		            </div>
		        </div>
              </div>
              <!-- 리뷰 내용 End -->
              
              
          </div>
          <!-- End Tab Panels -->
        </div>
	  </div>
      <!-- 리뷰 작성 내용 End -->
	  <script type="text/javascript">
	  // $('#exampleModal').on('show.bs.modal', function (event) {
	  // 	  var button = $(event.relatedTarget) // Button that triggered the modal
	  // 	  var recipient = button.data('whatever') // Extract info from data-* attributes
	  // 	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	  // 	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
	  // 	  var modal = $(this)
	  // 	  modal.find('.modal-title').text('New message to ' + recipient)
	  // 	  modal.find('.modal-body input').val(recipient)
	  // 	})
	  </script>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-secondary" onclick="modalDataBtn(this, true);">초기화</button>
        <button type="submit" class="btn btn-primary">등록하기</button>
      </div>
	</form>
    </div>
  </div>
</div>
<!-- 리뷰 작성하기 Modal End -->   
</c:if>

		<c:import url="../common/footer.jsp" />
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/highcharts-more.js"></script>
		<script src="https://code.highcharts.com/modules/exporting.js"></script>
		<script src="https://code.highcharts.com/modules/export-data.js"></script>
		<script src="https://code.highcharts.com/modules/accessibility.js"></script>
		
		<script type="text/javascript">
		function changeProgress(obj){
			$(obj).parents('.row').find('.progress-bar').attr('data-progress-animation', $(obj).val() * 20 + '%').css('width',$(obj).val() * 20 + '%');
			$(obj).parents('.row').find('.progress-bar-tooltip').text($(obj).val() + '점');
		}
		
		// 모달 (- 등록 기본값/수정값) 데이터 폼
		function modalDataBtn(obj , isDefault) {
			var objArray = ['score1', 'score2', 'score3', 'score4', 'score5', 'score6', 'score7', 'score8', 'score9', 'score10', 'rno', 'rtitle', 'gcontent', 'bcontent'];
			$('.modal-content form').attr('action',"/semosun/review/insertReview.do").find('[type=submit]').text('등록하기');
			$('#exampleModalCenterTitle').text('등록하기');
			
			for (var i = 0; i < objArray.length; i++) {
				var data;
				if(isDefault && i<11) data = 5;  
				else if(isDefault) data = '';
				else {
					data = $(obj).parents('.comment-box.clearfix').find('input[name='+objArray[i]+']').val();
					$('.modal-content form').attr('action',"/semosun/review/updateReview.do").find('[type=submit]').text('수정하기');
					$('#exampleModalCenterTitle').text('수정하기');
				}
				
				if(i<10) {
					var score = $('#exampleModalCenter').find('input[name='+objArray[i]+']')
					score.val(data);
					score.parents('.row').find('.progress-bar').attr('data-progress-animation', data * 20 + '%').css('width', data * 20 + '%');
					score.parents('.row').find('.progress-bar-tooltip').text(data + '점');
				}
				else if(i<12) $('#exampleModalCenter').find('input[name='+objArray[i]+']').val(data);
				else $('#exampleModalCenter').find('textarea[name='+objArray[i]+']').val(data);
			}
		}
		
		function like(Btn, rno, userNo, tNo) {
			if(userNo == 0) { alert("로그인을 해주세요!"); return; }
			
			var isLike;
			var count;
			
			// 버튼 CSS
			if($(Btn).hasClass('myLike')) {
				$(Btn).removeClass('myLike');
				isLike = false;
				count = Number($(Btn).text().trim())-1;
			}else {
				$(Btn).addClass('myLike');
				isLike = true;
				count = Number($(Btn).text().trim())+1;
			}
			$.ajax({
				url : "${pageContext.request.contextPath }/review/likeReview.do",
				data : { isLike : isLike , rno : rno , userNo : userNo, tNo : tNo},
				dataType: "json",
				success : function(data) {
					$(Btn).html('<i class="fa fa-heart"></i> '+count);
				}, error : function() {
					console.log("ajax 실패!");
					if($(Btn).hasClass('myLike')) {
						$(Btn).addClass('myLike');
					}else {
						$(Btn).removeClass('myLike');
					}
				}
			})
		}
		
		/* --------------- highchart 스크립트 영역 시작 ------------- */
		var reviewStat = "${!empty reviewStat}";
		var data1;
		if(reviewStat == "false"){
			data1 = [{
		        name: '${member.nickName}',
		        data: [3, 3, 3, 3, 3],
		        pointPlacement: 'on'
		    }];
		} else {
			data1 = [{
		        name: '${Teacher.tName}님의 스타일',
		        data: [${reviewStat.chartStr}],
		        pointPlacement: 'on'
		    }, {
		        name: '${member.nickName}',
		        data: [${member.score1}, ${member.score2}, ${member.score3}, ${member.score4}, ${member.score5}],
		        pointPlacement: 'on'
		    }];
		}
			Highcharts.chart('highchart-container1', {
			    chart: {
			        polar: true,
			        type: 'line'
			    },
			
			    title: {
			        text: '',
			        x: -80
			    },
			
			    pane: {
			        size: '80%'
			    },
			
			    xAxis: {
			        categories: ['난이도', '유머', '과제', '교재', '목소리'],
			        tickmarkPlacement: 'on',
			        lineWidth: 0
			    },
			
			    yAxis: {
			        gridLineInterpolation: 'polygon',
			        lineWidth: 0,
			        min: 0,
			        max : 5
			    },
			
			    tooltip: {
			        shared: true,
			        pointFormat: '<span style="color:{series.color}">{series.name}: <b>{point.y}점</b><br/>'
			    },
			
			    legend: {
			        align: 'center',
			        verticalAlign: 'bottom',
			        layout: 'horizontal'
			    },
			
			    series: data1,
			    responsive: {
			        rules: [{
			            condition: {
			                maxWidth: 500
			            },
			            chartOptions: {
			                legend: {
			                    align: 'center',
			                    verticalAlign: 'bottom',
			                    layout: 'horizontal'
			                },
			                pane: {
			                    size: '70%'
			                }
			            }
			        }]
			    }
			});
		
			Highcharts.chart('highchart-container2', {
			    chart: {
			        plotBackgroundColor: null,
			        plotBorderWidth: 0,
			        plotShadow: false
			    },
			    title: {
			        text: '강의평 분석',
			        align: 'center',
			        verticalAlign: 'middle',
			        x: -26,
			        y: 80
			    },
			    tooltip: {
			        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			    },
			    accessibility: {
			        point: {
			            valueSuffix: '%'
			        }
			    },
			    plotOptions: {
			        pie: {
			            dataLabels: {
			                enabled: true,
			                distance: -30,
			                style: {
			                    fontWeight: 'bold',
			                    color: 'white'
			                }
			            },
			            startAngle: -90,
			            endAngle: 90,
			            center: ['40%', '75%'],
			            size: '90%'
			        }
			    },
			    series: [{
			        type: 'pie',
			        name: '평가비율',
			        innerSize: '50%',
			        data: [
			            ['부정', Number('${reviewLevel.REVIEW_0}')],
			            ['보통', Number('${reviewLevel.REVIEW_1}')],
			            ['긍정', Number('${reviewLevel.REVIEW_2}')]
			        ]
			    }]
			});

		/* --------------- highchart 스크립트 영역 끝  ------------- */
		
			
			// 별점
			$('.jsx-2318878368').each(function() {
				for (var i = 0; i < 5; i++) {
					if(i < Math.round($(this).text())) $(this).next().append('<div class="jsx-237548703 star star-2"></div>');
					else $(this).next('').append('<div class="jsx-237548703 star star-0"></div>');
				}

			});
		
			// 신고 버튼 함수
			function fn_reportView(rno) {
				if(${empty member}) { alert("로그인을 해주세요!"); return; }
				if(${r.rstatus eq R}) { alert("이미 신고되었습니다!"); return; }
				location.href="${pageContext.request.contextPath}/report/reportForm.do?rno="+rno+"&tNo=${Teacher.tNo}";
			}
		
			// 시간
			$('.dateForm').each(function() {
				$(this).text(new Date($(this).text()).format('yyyy-MM-dd a/p hh:mm:ss'));
				$(this).val(new Date($(this).val()).format('yyyy-MM-dd a/p hh:mm:ss'));
			});
			Date.prototype.format = function (f) {

			    if (!this.valueOf()) return " ";



			    var weekKorName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];

			    var weekKorShortName = ["일", "월", "화", "수", "목", "금", "토"];

			    var weekEngName = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

			    var weekEngShortName = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

			    var d = this;



			    return f.replace(/(yyyy|yy|MM|dd|KS|KL|ES|EL|HH|hh|mm|ss|a\/p)/gi, function ($1) {

			        switch ($1) {

			            case "yyyy": return d.getFullYear(); // 년 (4자리)

			            case "yy": return (d.getFullYear() % 1000).zf(2); // 년 (2자리)

			            case "MM": return (d.getMonth() + 1).zf(2); // 월 (2자리)

			            case "dd": return d.getDate().zf(2); // 일 (2자리)

			            case "KS": return weekKorShortName[d.getDay()]; // 요일 (짧은 한글)

			            case "KL": return weekKorName[d.getDay()]; // 요일 (긴 한글)

			            case "ES": return weekEngShortName[d.getDay()]; // 요일 (짧은 영어)

			            case "EL": return weekEngName[d.getDay()]; // 요일 (긴 영어)

			            case "HH": return d.getHours().zf(2); // 시간 (24시간 기준, 2자리)

			            case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2); // 시간 (12시간 기준, 2자리)

			            case "mm": return d.getMinutes().zf(2); // 분 (2자리)

			            case "ss": return d.getSeconds().zf(2); // 초 (2자리)

			            case "a/p": return d.getHours() < 12 ? "오전" : "오후"; // 오전/오후 구분

			            default: return $1;

			        }

			    });

			};



			String.prototype.string = function (len) { var s = '', i = 0; while (i++ < len) { s += this; } return s; };

			String.prototype.zf = function (len) { return "0".string(len - this.length) + this; };

			Number.prototype.zf = function (len) { return this.toString().zf(len); };
			
		</script>
</body>
</html>