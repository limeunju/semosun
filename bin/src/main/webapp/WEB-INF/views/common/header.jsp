<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<!-- Start Header Section -->
<div class="hidden-header"></div>
<header class="clearfix">

	<!-- .top-bar -->
	<!-- End Top Bar -->

	<!-- Start  Logo & Naviagtion  -->
	<div class="navbar navbar-default navbar-top">
		<div class="container">
			<!-- Start Navigation List -->
			<div class="navbar-header">
				<!-- Stat Toggle Nav Link For Mobiles -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<i class="fa fa-bars"></i>
				</button>
				<!-- End Toggle Nav Link For Mobiles -->
				<a class="navbar-brand" href="${pageContext.request.contextPath }"> <img id="logologologo" alt="" src="${pageContext.request.contextPath }/resources/images/semosunlogo.png"> </a> </div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${pageContext.request.contextPath }">Home</a>
						<ul class="dropdown">
							<li style="font-family:S-CoreDream-4Regular;"> <a href="${pageContext.request.contextPath }/noticeList.nt">공지사항</a> </li>
						</ul style="font-family:S-CoreDream-4Regular;"></li>
					<li><a style="font-family:S-CoreDream-4Regular;" href="${pageContext.request.contextPath }/teacher/selectTeacherList.do">강사리뷰</a></li>
					<li> <a style="font-family:S-CoreDream-4Regular;" href="${pageContext.request.contextPath }/talk/talkList.do">세모선숲</a> </li>
					<li><a style="font-family:S-CoreDream-4Regular;" href="${pageContext.request.contextPath }/qnaList.do">문의사항</a>
					<c:if test="${empty member}">
					<li><a style="font-family:S-CoreDream-4Regular;" href="${ pageContext.request.contextPath }/login/login.do">로그인</a></li>
					<li><a style="font-family:S-CoreDream-4Regular;" href="${ pageContext.request.contextPath }/signUp.sg">회원가입</a></li>
					</c:if>
					<c:if test="${!empty member}">
					<li><a style="font-family:S-CoreDream-4Regular;" href="${pageContext.request.contextPath }/myPage/myPageProfile.do">마이페이지</a>
					<ul class="dropdown">
							<li><a style="font-family:S-CoreDream-4Regular;" href="${pageContext.request.contextPath }/myPage/myPageProfile.do">마이페이지</a></li>
							<li><a style="font-family:S-CoreDream-4Regular;" href="#" data-toggle="modal" data-target="#exampleModalCenter1">강사등록</a></li>
						</ul>
					</li>
					<c:if test="${!empty member && member.userId eq 'admin'}">
					<li><a style="font-family:S-CoreDream-4Regular;" href="${ pageContext.request.contextPath }/memberControl.am">관리자 페이지</a>
						<ul class="dropdown">
							<li><a style="font-family:S-CoreDream-4Regular;" href="${pageContext.request.contextPath }/memberControl.am">회원 관리</a></li>
							<li><a style="font-family:S-CoreDream-4Regular;" href="${pageContext.request.contextPath }/teacherControl.am">강사님 관리</a></li>
							<li><a style="font-family:S-CoreDream-4Regular;" href="${pageContext.request.contextPath }/reportControl.am">신고 관리</a></li>
						</ul>
					</li>
					</c:if>
					<li><a style="font-family:S-CoreDream-4Regular;" href="${pageContext.request.contextPath}/member/memberLogout.do">로그아웃</a></li>
					</c:if>
					
				</ul>
				<!-- End Navigation List -->
			</div>
			<%-- <c:if test="${empty member}">
				<div style="position: absolute; left: 1650px; bottom: 20px;">
					<button class="btn btn-outline-success my-2 my-sm-0" type="button"
						onclick="location.href='${ pageContext.request.contextPath }/login/login.do'"
						style="bottom: 50px; background: white;">로그인</button>
					<button class="btn btn-outline-success my-2 my-sm-0" type="button"
						onclick="location.href='${ pageContext.request.contextPath }/signUp.sg'"
						style="margin-right: 100px; bottom: 100px; background: white;">회원가입</button>
				</div>
			</c:if>
			<c:if test="${!empty member}">
				<div style="position: absolute; left: 1600px; bottom: 20px;">
					<button class="btn btn-outline-success my-2 my-sm-0" type="button"
						data-toggle="modal" data-target="#exampleModalCenter1"
						style="bottom: 50px; background: white; border: solid 0.4px #00AFD1; color: #00AFD1;">

						강사등록</button>

					<button class="btn btn-outline-success my-2 my-sm-0" type="button"
						onclick="location.href='${pageContext.request.contextPath }/myPage/myPageProfile.do'"
						style="margin-right: 100px; bottom: 100px; background: white; border: solid 0.4px #00AFD1; color: #00AFD1;">

						마이페이지</button>

				</div>
			</c:if> --%>
		</div>
	</div>
	<!-- End Header Logo & Naviagtion -->


	<!-- modal Start -->


	<!-- End content -->

	<!-- 강사 등록  modal Start -->

	<div class="modal fade1" id="exampleModalCenter1" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content" style="width: 620px;">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="modal-body">
					<div>
						<!-- Start Contact Form -->
						<div id="contact-form" class="contatct-form" style="margin-left:80px;">
							<div class="loader"></div>
							<form action="teacherInsert.do" class="contactForm" name="cform"
								onsubmit="return validate();" method="post"
								enctype="multipart/form-data">
								<input type="hidden" name="userNo" value="${ member.userNo }"/>
								<div class="jsx-1392383053 popup-box undefined">
									<div class="jsx-1392383053 title-box">
										<div class="jsx-1422744987">
											<h2 class="jsx-1422744987">15초만에 선생님 등록하기</h2>
											<p class="jsx-1422744987">세모선에서 아직 모시지 못한 선생님을 알려주세요!</p>
										</div>
									</div>
									<div class="jsx-3890274511 label-box"
										style="margin-left: 50px;">

										<!-- 이름입력 -->
										<div class="jsx-3712571264 "><span
											class="jsx-3712571264">이름&nbsp;</span>
											<div class="jsx-3890274511 select-box">
												<div class="jsx-3890274511 input-flex">
													<div class="jsx-3664481379 input">
														<input required="" placeholder="이름을 입력해 주세요."
															class="jsx-3664481379 " name="tName">
													</div>
												</div>
											</div></div> <br />
										<!-- 이름입력 -->

										<!-- 성별 -->
										
										
										<div class="jsx-3712571264 "><span
											class="jsx-3712571264">성별&nbsp;</span>
											<div class="radio-items">
											<div class="col-6">
												<input id="a1" class="only-sr checked" type="radio"
													name="tGender" value="M" checked> <label for="a1">남성</label>
											</div>
											<div class="col-6">
												<input id="a2" class="only-sr" type="radio" name="tGender"
													value="F"> <label for="a2">여성</label>
											</div>
										</div>
										</div>
										<!-- 성별 -->

									</div>
<br />
									<!-- 과목선택 -->
										<div class="jsx-3712571264 " style="margin-left: 50px;"><span
											class="jsx-3712571264">과목&nbsp;</span>
											<div class="jsx-3890274511 select-box">
												<div class="jsx-3890274511 input-flex">
													<div class="jsx-3664481379 input">
														<input required="" placeholder="과목을 입력해 주세요."
															class="jsx-3664481379 " name="subject">
													</div>
												</div>
											</div></div>
									
									
									<!-- 과목선택 -->

									<!-- 학원명 -->
									<div class="jsx-3712571264 "
										style="margin-left: 50px; margin-top: 10px;"><span
										class="jsx-3712571264">학원명&nbsp;</span>
										<div class="jsx-3890274511 select-box">
											<div class="jsx-3890274511 input-flex">
												<div class="jsx-3664481379 input">
													<input required="" placeholder="학원명을 입력해 주세요."
														class="jsx-3664481379 " name="company">
												</div>
											</div>
										</div> </div>
									<!-- 학원명 -->
									<!-- 사진등록 -->
									<div class="jsx-2014955477 photo-upload-preview">
										<div class="jsx-3815033897 avatar" style="margin-right:190px;">
											<div id="profileImgArea">
												<img id="uploadImg"
													src="${pageContext.request.contextPath }/resources/images/profileImage/defaultMmember.png"
													onclick="$('#uploadfile').click();"
													style="width: 150px; hegiht: 150px; display: block;  margin-right: auto;"
													align="center">
											</div>

											<!-- <input style="visibility: hidden;" type="file"
													id="40026ef7-ead8-42f9-9c86-3e7b1f01b037" accept="image/*"
													class="jsx-2014955477"><label
													for="40026ef7-ead8-42f9-9c86-3e7b1f01b037"
													class="jsx-2014955477"><span
													class="jsx-2014955477 alt-text">사진 첨부</span></label> -->
											<div id="fileArea">
												<input type="file" id="uploadfile" name="upFile"
													onchange="LoadImg(this)" style="display: none;" multiple>
											</div>
											<script>
											function LoadImg(value) {
											    if (value.files && value.files[0]) {
											        var reader = new FileReader();
											        reader.onload = function(e) {
											            $('#uploadImg').attr('src', e.target.result);
											        }
											        reader.readAsDataURL(value.files[0]);
											    }
											}
											</script>
										</div>
									</div>
									<!-- 사진등록 -->
								</div>
								<div class="jsx-4275940456 btn-box" style="margin-right:95px;">
									<div class="jsx-4275940456 btn-blue" >
										<button type="submit" class="jsx-2946748022 ">등록</button>
									</div>
								</div>
							</form>

						</div>
						<!-- End Contact Form -->

					</div>
				</div>
			</div>
		</div>
	</div>

	</section>
</header>