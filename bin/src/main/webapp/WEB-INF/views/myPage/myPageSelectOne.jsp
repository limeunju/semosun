<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>

<style>
<!--
여기부터 카드 -->* {
	box-sizing: border-box;
	outline: none;
	font-family: 'Noto Sans KR', sans-serif;
	text-rendering: optimizeSpeed;
	-webkit-font-smoothing: antialiased;
}

html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd,
	q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li,
	fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr,
	th, td, article, aside, canvas, details, figcaption, figure, footer,
	header, hgroup, menu, nav, section, summary, time, mark, audio, video,
	button, input, textarea {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	color: #212121;
	vertical-align: baseline;
}

.content.jsx-2255473334 {
	position: relative;
	-webkit-flex: auto;
	-ms-flex: auto;
	flex: auto;
	width: 100%;
	max-width: 1240px;
	min-height: 532px;
	padding: 0 20px;
	margin: 32px auto 64px;
}

.body.jsx-2123435526 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
}

.my-snb.jsx-707316887 {
	position: relative;
	background-color: #ffffff;
	border: 1px solid #dfdfdf;
	height: 100%;
	min-width: 260px;
	padding: 32px 24px 8px;
}

h2.jsx-707316887 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	font-size: 24px;
	font-weight: normal;
	margin-bottom: 8px;
}

svg[Attributes Style] {
	width: 32;
	height: 32;
	fill: none;
	stroke: rgb(223, 223, 223);
	stroke-width: 2;
	stroke-linecap: round;
	stroke-linejoin: round;
}

svg


:not

 

(
:root

 

){
overflowhidden


;
}
path[Attributes Style] {
	d: path("M 20 21 v -2 a 4 4 0 0 0 -4 -4 H 8 a 4 4 0 0 0 -4 4 v 2");
}

circle[Attributes Style] {
	cx: 12;
	cy: 7;
	r: 4;
}

h2.jsx-707316887 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	font-size: 30px;
	font-weight: normal;
	margin-bottom: 8px;
}

ol, ul {
	list-style: none;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

li.jsx-707316887 {
	border-bottom: 1px solid #ececec;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

a, a:hover, a:active, a:visited, a:focus {
	text-decoration: none;
}

li.active.jsx-707316887 a.jsx-707316887 {
	color: #3f60cc;
}

li.jsx-707316887 a.jsx-707316887 {
	display: inline-block;
	width: 100%;
	font-weight: 700;
	line-height: 52px;
	color: black;
}

a {
	color: #212121;
}

a, a:hover, a:active, a:visited, a:focus {
	text-decoration: none;
}

a:-webkit-any-link {
	color: -webkit-link;
	cursor: pointer;
	text-decoration: underline;
}

li {
	text-align: -webkit-match-parent;
}

.btn-logout.jsx-707316887 {
	position: absolute;
	left: 0;
	bottom: -30px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

button {
	background: none;
	border: 0;
	cursor: pointer;
}

button {
	-webkit-appearance: button;
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: buttontext;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: center;
	align-items: flex-start;
	cursor: default;
	background-color: buttonface;
	box-sizing: border-box;
	margin: 0em;
	font: 400 13.3333px Arial;
	padding: 1px 6px;
	border-width: 2px;
	border-style: outset;
	border-color: buttonface;
	border-image: initial;
}

.btn-logout.jsx-707316887 .power-icon.jsx-707316887 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	width: 16px;
	height: 16px;
	border-radius: 50%;
	background-color: #dfdfdf;
	margin-right: 4px;
}

.btn-logout.jsx-707316887>span.jsx-707316887 {
	font-size: 14px;
	color: #666666;
	-webkit-text-decoration: underline;
	text-decoration: underline;
}

button {
	background: none;
	border: 0;
	cursor: pointer;
}

button {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: buttontext;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	text-align: center;
	cursor: default;
	font: 400 13.3333px Arial;
}

svg[Attributes Style] {
	width: 10;
	height: 10;
	fill: none;
	stroke: rgb(102, 102, 102);
	stroke-width: 2;
	stroke-linecap: round;
	stroke-linejoin: round;
}

.content.jsx-2123435526 {
	width: 100%;
	margin-left: 16px;
}

.card.jsx-1936111413 {
	background-color: #ffffff;
	border: 1px solid #dfdfdf;
	padding: 40px 32px 48px;
}

.title.jsx-1936111413 h2.jsx-1936111413 {
	font-size: 24px;
	margin-bottom: 8px;
}

h2 {
	display: block;
	font-size: 1.5em;
	margin-block-start: 0.83em;
	margin-block-end: 0.83em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

.title.jsx-1936111413 p.jsx-1936111413 {
	font-size: 14px;
	color: #666666;
	margin-bottom: 32px;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.profile.jsx-1936111413 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.avatar.jsx-3815033897 {
	position: relative;
	width: 184px;
	height: 184px;
	margin: 0 auto;
}

.photo-upload-preview.jsx-2014955477>.avatar .circle {
	-webkit-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
	transform: rotate(0deg);
}

.circle.jsx-3815033897 {
	position: relative;
	clear: both;
	width: 100%;
	height: 100%;
	border-radius: 50%;
	overflow: hidden;
	background-size: cover;
	background-color: #fff;
	background-position: center;
	background-repeat: no-repeat;
}

input[type='file'].jsx-2014955477 {
	display: none;
}

input, textarea {
	border: 0;
	border-radius: 0;
}

input[type="file" i] {
	-webkit-appearance: initial;
	background-color: initial;
	cursor: default;
	align-items: baseline;
	color: inherit;
	text-align: start !important;
	padding: initial;
	border: initial;
}

input {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: initial;
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
	border-style: inset;
	border-color: initial;
	border-image: initial;
}

label.jsx-2014955477 {
	position: absolute;
	right: 0;
	bottom: 0;
	display: inline-block;
	width: 56px;
	height: 56px;
	background:
		url(https://d1ta1myjmiqbpz.cloudfront.net/static/images/join_login/btn_camera01.png)
		no-repeat;
	background-size: contain;
	cursor: pointer;
	background-size: contain;
}

.alt-text {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

.info.jsx-1936111413 {
	width: 100%;
	margin-left: 32px;
}

label.jsx-3712571264>span.jsx-3712571264 {
	font-size: 14px;
	font-weight: bold;
}

.input.jsx-3664481379 {
	position: relative;
	width: 100%;
}

input.jsx-3664481379 {
	display: block;
	font-size: 16px;
	width: 100%;
	height: 52px;
	border-bottom: solid 1px #dfdfdf;
	color: #212121;
}

input {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: initial;
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
	border-style: inset;
	border-color: initial;
	border-image: initial;
}

.input.jsx-3664481379 {
	position: relative;
	width: 100%;
}

input.jsx-3664481379 {
	display: block;
	font-size: 16px;
	width: 100%;
	height: 52px;
	border-bottom: solid 1px #dfdfdf;
	color: #212121;
}

input, textarea {
	border: 0;
	border-radius: 0;
}

input {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: initial;
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
	border-style: inset;
	border-color: initial;
	border-image: initial;
}

.info.jsx-1936111413 .line2.jsx-1936111413 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	margin-top: 32px;
}

.info.jsx-1936111413 .line2.jsx-1936111413>div.jsx-1936111413 {
	-webkit-flex-basis: 50%;
	-ms-flex-preferred-size: 50%;
	flex-basis: 50%;
}

.info.jsx-1936111413 .join-date.jsx-1936111413 {
	margin-right: 8px;
}

label.jsx-3712571264>span.jsx-3712571264 {
	font-size: 14px;
	font-weight: bold;
}

.input.jsx-3664481379 {
	position: relative;
	width: 100%;
}

input.jsx-3664481379 {
	display: block;
	font-size: 16px;
	width: 100%;
	height: 52px;
	border-bottom: solid 1px #dfdfdf;
	color: #212121;
}

input, textarea {
	border: 0;
	border-radius: 0;
}

input {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: initial;
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
	border-style: inset;
	border-color: initial;
	border-image: initial;
}

.info.jsx-1936111413 .line2.jsx-1936111413>div.jsx-1936111413 {
	-webkit-flex-basis: 50%;
	-ms-flex-preferred-size: 50%;
	flex-basis: 50%;
}

.review-access.jsx-1936111413 {
	margin-left: 8px;
}

label.jsx-3712571264>span.jsx-3712571264 {
	font-size: 14px;
	font-weight: bold;
}

.
input-box.jsx-1936111413 {
	position: relative;
}

.input.jsx-1773881408 {
	position: relative;
	width: 100%;
}

.review-access.jsx-1936111413 button.jsx-1936111413 {
	position: absolute;
	right: 0;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	font-size: 12px;
	border: 1px solid #dfdfdf;
	height: 32px;
	line-height: 30px;
	border-radius: 32px;
	padding: 0 16px;
	-webkit-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-save.jsx-1936111413 {
	text-align: center;
	margin-top: 32px;
}

button.jsx-315148180 {
	font-size: 16px;
	padding: 0;
	width: 240px;
	min-width: 240px;
	height: 52px;
	line-height: 50px;
	border-radius: 26px;
	background-color: #3f60cc;
	color: #ffffff;
	border: none;
	-webkit-transition: background-color 0.3s;
	transition: background-color 0.3s;
}

button {
	background: none;
	border: 0;
	cursor: pointer;
}

input.jsx-3664481379 {
	display: block;
	font-size: 16px;
	width: 100%;
	height: 52px;
	border-bottom: solid 1px #dfdfdf;
	color: #212121;
}

input, textarea {
	border: 0;
	border-radius: 0;
}

a {
	color: black;
}

a, a:hover, a:active, a:visited, a:focus {
	text-decoration: none;
}

.jsx-707316887 {
	font-size: 20px;
	text-decoration: none;
	height: 90px;
}

body {
	background: #F8F8F8 !important;
}
</style>


<c:import url="../common/myPageCSS.jsp" />
<link rel=" shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/icons/semosun1.png">
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/icons/semosun1.png">

<script>
	function memberForm() {
		location.href = "${pageContext.request.contextPath}/board/boardForm.do";
	}

	$(function() {
		$("tr[id]")
				.on(
						"click",
						function() {
							var tNo = $(this).attr("id");
							console.log("tNo=" + tNo);
							location.href = "${pageContext.request.contextPath}/member/memberView.do?no="
									+ tNo;
						});
	});
</script>
</head>
<body>

	<div id="__next">
		<c:import url="../common/header.jsp" />
		<div style="height: 100px;"></div>
		<div class="jsx-2255473334 layout" style="margin-top: 50px;">
			<div class="jsx-695160636 gnb">
				<div class="jsx-695160636 wrapper">
					<div class="jsx-695160636 service-box">
						<a class="jsx-695160636" href="/mypage"><div
								class="jsx-695160636 photo"
								style="background-image: url(&quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_user02_02@2x.png&quot;);">
								<span class="jsx-695160636 alt-text">프로필 이미지</span>
							</div></a>
					</div>
				</div>
				<div class="jsx-695160636 sub-gnb code--null">
					<ul class="jsx-695160636"></ul>
				</div>
			</div>
			<div class="jsx-695160636 fix-layout"></div>
			<div class="jsx-2255473334 content">
				<div class="jsx-2123435526 body"
					style="background: white; width: 1257px; height: 600px;">
					<c:import url="mypageSidebar.jsp" />

					<div id="contact-form" class="contatct-form" >
						<div class="loader"></div>
						<form action="teacherInsert.do" class="contactForm" name="cform" style="margin-left: 250px;"
							onsubmit="return validate();" method="post"
							enctype="multipart/form-data">
							<input type="hidden" name="userNo" value="${ member.userNo }" />
							<div class="jsx-1392383053 popup-box undefined" style="width: 300px;">
								<div class="jsx-1392383053 title-box">
								<br />
									<div class="jsx-1422744987">
										<h2 class="jsx-1422744987"  style="margin-left:110px; font-size: 30px;">강사정보</h2>
									</div>
								</div>
								
								<br /><br />
									
								<div class="jsx-3890274511 label-box" style="margin-left: 50px;">

									<!-- 이름입력 -->
									<label class="jsx-3712571264 " style="width:100%;"><span
										class="jsx-3712571264">이름&nbsp;</span>
										<div class="jsx-3890274511 select-box">
											<div class="jsx-3890274511 input-flex">
												<div class="jsx-3664481379 input">
													<input required="" placeholder="이름을 입력해 주세요."
														class="jsx-3664481379 " name="tName"
														value="${teacher.tName}">

												</div>
											</div>
										</div></label> <br />
									<!-- 이름입력 -->

									<!-- 성별 -->
									
									<label class="jsx-3712571264 " style="width:100%;"><span
										class="jsx-3712571264">성별&nbsp;</span>
										<div class="jsx-3890274511 select-box">
											<div class="jsx-3890274511 input-flex">
												<div class="jsx-3664481379 input">
													<input required=""
														class="jsx-3664481379 " name="tGender"
														value="${teacher.tGender}" disabled>
												</div>
											</div>
										</div></label> <br />
									<!-- 성별 -->

								<!-- 과목선택 -->
								<label class="jsx-3712571264 " style="width:100%;"><span
										class="jsx-3712571264">과목&nbsp;</span>
										<div class="jsx-3890274511 select-box">
											<div class="jsx-3890274511 input-flex">
												<div class="jsx-3664481379 input">
													<input required="" placeholder="과목을 입력해 주세요."
														class="jsx-3664481379 " name="subject"
														value="${teacher.subject}">

												</div>
											</div>
										</div></label>
										
								<!-- 과목선택 -->
										
							    <!-- 학원명 -->
								<label class="jsx-3712571264 " style="width:100%;"
									style="margin-left: 50px; margin-top: 10px;"><span
									class="jsx-3712571264">학원명&nbsp;</span>
									<div class="jsx-3890274511 select-box">
										<div class="jsx-3890274511 input-flex">
											<div class="jsx-3664481379 input">
												<input required="" placeholder="학원명을 입력해 주세요."
													class="jsx-3664481379 " name="company"
													value="${teacher.company}">
											</div>
										</div>
									</div> </label>
								<!-- 학원명 -->
								</div>
							</div>
								<br />

								<!-- 사진등록 -->
								<div class="jsx-2014955477 photo-upload-preview">
									<div class="jsx-3815033897 avatar">
										<%-- <div class="jsx-3815033897 circle"
													style="background-image: url(&quot;${pageContext.request.contextPath}/resources/images/teacher/default.png&quot;);">
													<!-- &quot;https://d1ta1myjmiqbpz.cloudfront.net/static/images/default_image/default_common01@2x.png&quot -->
												</div> --%>
										<div id="profileImgArea"  style="margin-left:50px;">
											<img id="profileImg"
												src="${pageContext.request.contextPath }/resources/images/profileImage/defaultMmember.png"
												onclick="$('#profile').click();"
												style="width: 150px; hegiht: 150px; display: block; margin-left: auto; margin-right: auto;"
												align="center">
										</div>

										<!-- <input style="visibility: hidden;" type="file"
													id="40026ef7-ead8-42f9-9c86-3e7b1f01b037" accept="image/*"
													class="jsx-2014955477"><label
													for="40026ef7-ead8-42f9-9c86-3e7b1f01b037"
													class="jsx-2014955477"><span
													class="jsx-2014955477 alt-text">사진 첨부</span></label> -->
										<div id="fileArea">
											<input type="file" id="profile" name="upFile"
												onchange="LoadImg(this)" style="display: none;" multiple>
										</div>
									</div>
								</div>
								<!-- 사진등록 -->
								<div class="jsx-4275940456 btn-box">
							</div>
							</div>
							
						</form>

					</div>

				</div>
			</div>

		</div>
		<div class="jsx-2567582721 reviews"></div>
		<div id="topmost" class="jsx-2567582721"></div>
	</div>


	<div style="height: 200px;"></div>
	<c:import url="../common/footer.jsp" />
	</div>
</body>
</html>