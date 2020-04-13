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

svg:not (:root ) {
	overflow: hidden;
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
	margin-top: 100px;
}

button.jsx-315148180 {
	font-size: 16px;
	padding: 0;
	width: 120px;
	min-width: 120px;
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
.jsx-707316887{
	font-size:20px;
	text-decoration: none;
	height:90px;
}
body{
		background: #F8F8F8 !important;
}
li:hover {
    -webkit-transform: scale(1.1,1.1);
    -moz-transform: scale(1.1,1.1);
    -o-transform: scale(1.1,1.1);
    -ms-transform: scale(1.1,1.1);
    transform: scale(1.1,1.1);
}

</style>
<!-- 파비콘 -->
<link rel=" shortcut icon" href="${pageContext.request.contextPath}/resources/images/icons/semosun1.png">
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/icons/semosun1.png">
<c:import url="../common/util.jsp"/>
</head>

<body>
	<c:import url="../common/header.jsp"/>
	<div style="height: 15px;"></div>
	<div id="__next">
	
		<div class="jsx-2255473334 layout" style="margin-top: 50px;">
			<div class="jsx-695160636 gnb" >
				<div class="jsx-695160636 wrapper">
					<ul class="jsx-695160636 menu-box">
					</ul>
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
				<div class="jsx-2123435526 body">
					<div class="jsx-707316887 my-snb" style="height:800px; width:400px">
						<h2 class="jsx-707316887">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								viewBox="0 0 24 24" fill="none" stroke="#dfdfdf"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								style="position: relative; margin-bottom: 60px;">
								<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
								<circle cx="12" cy="7" r="4"></circle></svg>
							<span class="jsx-707316887">마이페이지</span>
						</h2>
						<ul class="jsx-707316887">
							<!-- 프로필 -->
							<li class="jsx-707316887 active">
								<a class="jsx-707316887"
									href="${pageContext.request.contextPath }/myPage/myPageProfile.do" 
									style="text-decoration: none; margin-top: 10px; margin-left: 10px;">프로필
								</a>
							</li>
							<!-- 프로필 -->
								
								<!-- 강사정보 -->
								<form action="${pageContext.request.contextPath }/member/teacherSelectList.do" method="post">
								<br />
								<input class="jsx-707316887 active" type="hidden" name="${teacher.tNo}"/>
							<button type="submit" style="border: 0;  background:white;">
							<li class="jsx-707316887 " 
									style="background:white;">
									<div style=""></div>
										<a class="jsx-707316887"
										style="text-decoration: none; margin-top: 20px; text-align:left; width:205px;"  >강사정보</a>
								</li>
								</button>
								</form>
								<!-- 강사정보 -->
								
								<!-- 리뷰정보 -->
								<form action="${pageContext.request.contextPath }/member/reviewSelectList.do" method="post">
								<br />
								<input type="hidden" name="${Review.rno}"/>
								<input type="hidden" name="${Teacher.tNo}"/>
									<button type="submit" style="border: 0;  background:white;">
									<li class="jsx-707316887 " 
										style="background:white;">
									<div style=""></div>
										<a class="jsx-707316887"
											style="text-decoration: none; margin-top: 20px; text-align:left; width:205px;"  >
											리뷰정보
										</a>
									</li>
								</button>
								</form>
								<!-- 리뷰정보 -->
								
								<!-- 신고정보 -->
								<form action="${pageContext.request.contextPath }/member/reportSelectList.do" method="post">
								<br />
								<input type="hidden" name="${Report.rno}"/>
								<input type="hidden" name="${Teacher.tNo}"/>
									<button type="submit" style="border: 0;  background:white;">
									<li class="jsx-707316887 " 
										style="background:white;">
									<div style=""></div>
										<a class="jsx-707316887"
											style="text-decoration: none; margin-top: 20px; text-align:left; width:205px;"  >
											신고정보
										</a>
									</li>
								</button>
								</form>
								<!-- 신고 -->
								
								<!-- 좋아요 -->
								<form action="${pageContext.request.contextPath }/member/likeySelectList.do" method="post">
								<br />
									<button type="submit" style="border: 0;  background:white;">
									<li class="jsx-707316887 " 
										style="background:white;">
									<div style=""></div>
										<a class="jsx-707316887"
											style="text-decoration: none; margin-top: 20px; text-align:left; width:205px;"  >
											좋아요
										</a>
									</li>
								</button>
								</form>
								<!-- 좋아요 -->
								
						</ul>
						<button type="button" class="jsx-707316887 btn-logout" style="height: 35px; margin-bottom: 50px; margin-left:25px;  background:white; border:none;" 
						onclick="location.href='${pageContext.request.contextPath}/member/memberLogout.do'">
							<span class="jsx-707316887 power-icon"><svg
									xmlns="http://www.w3.org/2000/svg" width="10" height="10"
									viewBox="0 0 24 24" fill="none" stroke="#666666"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									style="position: relative;">
									<path d="M18.36 6.64a9 9 0 1 1-12.73 0"></path>
									<line x1="12" y1="2" x2="12" y2="12"></line></svg></span><span
								class="jsx-7073168871" style="font-size:16px;"><b>로그아웃</b></span>
						</button>
					</div>
					
					<form name="memberUpdateFrm" action="${pageContext.request.contextPath}/member/memberUpdate.do" method="post" enctype="multipart/form-data">
					<c:url var="File" value="/resources/images/profileImage/"/>
					<input type="text" name="userId" id="userId_" value="${member.userId}" 
					style="display: none;"/>
					<div class="jsx-2123435526 content">
						<div class="jsx-1936111413 card" style="height: 800px;">
							<div class="jsx-1936111413 title">
								<h2 class="jsx-1936111413">${member.nickName}님 환영합니다.</h2>
								<p class="jsx-1936111413">별별선생에서 사용되는 대표 프로필 사진과 닉네임 입니다.</p>
							</div>
							<div class="jsx-1936111413 profile">
								<div class="jsx-1936111413 profile-img">
									<div class="jsx-2014955477 photo-upload-preview">
										<div class="jsx-3815033897 avatar">
											<div class="jsx-3815033897 circle" style="filter: drop-shadow(2px 4px 5px black);">
											<img style="height: 100%; " src="${pageContext.request.contextPath}/resources/images/profileImage/${member.profileName}" id="profileImg"/></div>
											
											<input type="file" id="206fe538-b5a2-41b7-8e8c-b2e02db8b307" name="upFile"
												accept="image/*" class="jsx-2014955477"  onchange="LoadImg(this)"  multiple><label
												for="206fe538-b5a2-41b7-8e8c-b2e02db8b307"
												class="jsx-2014955477"><span
												class="jsx-2014955477 alt-text">사진 첨부</span></label>
										</div>
									</div>
								</div>
								<div class="jsx-1936111413 info">
									<label class="jsx-3712571264 "><span
										class="jsx-3712571264">닉네임&nbsp;</span>
									<div class="jsx-3664481379 input">
											<input  class="jsx-3664481379" name="nickName" id="nickName" value="${member.nickName}">
										</div></label>
									<div class="jsx-1936111413">
										<div class="jsx-1936111413 join-date">
											<label class="jsx-3712571264 "><span
												class="jsx-3712571264">가입일&nbsp;</span>
											<div class="jsx-3664481379 input">
													<input readonly="" class="jsx-3664481379"
														value="${member.enrolldate}"> <br />
												</div></label>

												<label class="jsx-3712571264 "><span
										class="jsx-3712571264">비밀번호&nbsp;</span>
									<div class="jsx-3664481379 input">
											<input type="password" class="jsx-3664481379 " name="pwd" id="pwd" placeholder="변경할비밀번호">
										</div></label>
										</div>
										<div class="jsx-1936111413 review-access">
											<label class="jsx-3712571264 "><span
												class="jsx-3712571264">&nbsp;</span>
											<div class="jsx-1936111413 input-box">
													<div class="jsx-1773881408 input">
														<input readonly="" class="jsx-1773881408 "
															style="font-weight: bold;">
													</div>
													
												</div></label>
										</div>
									</div>
								</div>
				<div id="updateProgress">
		            <p><strong class="accent-color">나의 강의 성향 스타일은?</strong> <br>
	           		</p>
		            <ul class="icons-list">
	                    <li><i class="fa fa-check"></i> 마이페이지에서 수정할 수 있습니다.</li>
	                    <li><i class="fa fa-check"></i> 올바르지 않은 정보를 입력 시, 정확한 서비스를 제공할 수 없습니다.</li>
	                    <li><i class="fa fa-check"></i> 당신의 강의 선호 스타일과 선생님의 강의 스타일을 비교해보세요!</li>
		            </ul>
	                <pre style="background: white;">                                                              </pre>
	               
		            <div class="progress-bars">
					<div class="row">
						<div class="col-sm-6">
					        <div class="progress-label"> 찾으시는 수업의 난이도는 높은 편인가요? </div>
					        <div class="progress">
					            <div class="progress-bar progress-bar-primary" data-progress-animation="${member.score1*2}0%">
					                <span class="progress-bar-tooltip" style="min-width: max-content;">${member.score1}점</span>
					            </div>
					        </div>
					     </div>
		                 <div class="col-sm-6">
		                    <input type="range" max="5" min="0" step="1" name="score1" onchange="changeProgress(this);"><br />
		                 </div>   
					    </div>
					<div class="row">
						<div class="col-sm-6">
					        <div class="progress-label"> 유머러스한 강의를 좋아하시나요? </div>
					        <div class="progress">
					            <div class="progress-bar progress-bar-primary" data-progress-animation="${member.score2*2}0%">
					                <span class="progress-bar-tooltip" style="min-width: max-content;">${member.score2}점</span>
					            </div>
					        </div> 
					     </div> 
		                 <div class="col-sm-6">
		                    <input type="range" max="5" min="0" step="1"  name="score2" onchange="changeProgress(this);"><br />
		                 </div>   
					    </div> 
					<div class="row">
						<div class="col-sm-6">
					        <div class="progress-label"> 과제가 많은 수업을 좋아하시나요? </div>
					        <div class="progress">
					            <div class="progress-bar progress-bar-primary" data-progress-animation="${member.score3*2}0%">
					                <span class="progress-bar-tooltip" style="min-width: max-content;">${member.score3}점</span>
					            </div>
					        </div> 
					     </div> 
		                 <div class="col-sm-6">
		                    <input type="range" max="5" min="0" step="1"  name="score3" onchange="changeProgress(this);"><br />
		                 </div>   
					    </div> 
					<div class="row">
						<div class="col-sm-6">
					        <div class="progress-label"> 교재가 많은 수업이 좋으신가요? </div>
					        <div class="progress">
					            <div class="progress-bar progress-bar-primary" data-progress-animation="${member.score4*2}0%">
					                <span class="progress-bar-tooltip" style="min-width: max-content;">${member.score4}점</span>
					            </div>
					        </div> 
					     </div>
		                 <div class="col-sm-6">
		                    <input type="range" max="5" min="0" step="1" name="score4" onchange="changeProgress(this);"><br />
		                 </div>    
					    </div> 
					<div class="row"> 
						<div class="col-sm-6">
					        <div class="progress-label"> 발음, 발성, 속도의 강도가 어떤<br>강사님을 좋아하시나요? (차분 ↔ 파워풀)   </div>
					        <div class="progress">
					            <div class="progress-bar progress-bar-primary" data-progress-animation="${member.score5*2}0%">
					                <span class="progress-bar-tooltip" style="min-width: max-content;">${member.score5}점</span>
					            </div>
					        </div> 
					     </div> 
		                 <div class="col-sm-6">
		                    <input type="range" max="5" min="0" step="1" name="score5" onchange="changeProgress(this);"><br />
		                 </div>   
					</div>
		       		</div>
	              </div>
	              <script type="text/javascript">
	              function changeProgress(obj){
	      			$(obj).parents('.row').find('.progress-bar').attr('data-progress-animation', $(obj).val() * 20 + '%').css('width',$(obj).val() * 20 + '%');
	      			$(obj).parents('.row').find('.progress-bar-tooltip').text($(obj).val() + '점');
	      		}
	              
// 	      		$(function(){
// 	      			var nameArray = ['score1', 'score2', 'score3', 'score4', 'score5'];
// 	      			var valArray = ['${member.score1}', '${member.score2}', '${member.score3}', '${member.score4}', '${member.score5}'];
	      			
// 	      			for (var i = 0; i < 5; i++) {
// 	      					$('#updateProgress').find('input[name='+valArray[i]+']').val(valArray[i]);
// 	      			}
// 	      		});
	      		
	              </script>
					</div>
						<div class="jsx-1936111413 btn-save">
							<button type="submit" class="jsx-315148180" onclick="location.href='${pageContext.request.contextPath}/member/memberUpdate.do'">회원 수정</button>
							<button type="button" class="jsx-315148180" onclick="location.href='${pageContext.request.contextPath}/member/memberDelete.do'">회원 탈퇴</button>
						</div>
					</form>
						
					
						</div>
						
					</div>
					
				</div>
			</div>
			
			<script>
				function LoadImg(value) {
					if(value.files && value.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							$('#profileImg').attr('src', e.target.result);
						}
						reader.readAsDataURL(value.files[0]);
					}
				}
			</script>
		<div style="height:200px;"></div>
		<c:import url="../common/footer.jsp"/>
		
		</div>
		<div class="jsx-2567582721 reviews"></div>
		<div id="topmost" class="jsx-2567582721"></div>
	</div>
	<script id="__NEXT_DATA__" type="application/json">{"dataManager":"[]","props":{"store":{"sagaTask":{"@@redux-saga/TASK":true,"id":1,"meta":{"name":"sagas_root"},"isRoot":true,"context":{},"joiners":null,"queue":{}}},"isServer":true,"initialState":{"auth":{"account":{"profile":{"id":134335,"user_id":"T2530000524600000","nickname":"오현빈","join_site":"kakao","join_type":"student","recommend_id":null,"created_at":"2019-12-24T07:01:33.000Z","access":{"is_out":"N","is_ban":"N","is_dormant":"N"},"term":{"terms_agreement":"Y","terms_agreement_datetime":null,"marketing_agreement":"Y","marketing_agreement_datetime":null,"guidance_agreement":"Y","guidance_agreement_datetime":null,"receive_marketing_agreement":"Y","receive_marketing_agreement_datetime":null},"attribute":{"name":"오현빈","sex":"man","birthday":"1998-01-01T00:00:00.000Z","email":"dhgusqls78@naver.com","phone":"01027850878","thumbnail":null},"external":[{"member_id":134335,"channel":"kakao","token":"1243418920","created_at":"2019-12-24T07:01:33.000Z","updated_at":"2019-12-24T07:01:33.000Z"}],"relation_tutor":null,"relation_institute":null,"review_read_auth":"REJECT"}},"finder":{"username":null,"isFinding":false},"jwt":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiMGY0N2Q5ZjQtYTBlMi00M2FmLTgyZDYtYjJjMTE0YmE4NDA5IiwiY3NyZiI6InNXMzhyeXJzLTlRQWpWZHl3SlNxdG5aRjJPYzM0YzQxWkJRbyIsImRhdGEiOnsibWVtYmVyIjp7ImlkIjoxMzQzMzV9fSwiaWF0IjoxNTc3OTU1OTQ5LCJleHAiOjE1Nzc5NjMxNDksImlzcyI6InN0YXJ0ZWFjaGVyLmNvLmtyIn0.lovGbT_rn-61bCszSdtVOgT5G24aTnDZErVLQvzUXqY","decodedToken":{"uuid":"0f47d9f4-a0e2-43af-82d6-b2c114ba8409","csrf":"sW38ryrs-9QAjVdywJSqtnZF2Oc34c41ZBQo","data":{"member":{"id":134335}},"iat":1577955949,"exp":1577963149,"iss":"starteacher.co.kr"},"isTokenRefreshed":false},"phone":{"page":{"type":"unknown","name":"UNKNOWN","ordinal":4},"number":null,"count":null,"isVerified":false,"isVerifying":false},"follow":{"tutors":null,"institutes":null,"paging":{"total":0,"page":1,"limit":10},"isFetching":false}},"service":{"alarm":{"message":null,"type":null,"visible":false,"alarmedAt":null},"uploader":{"fileId":null,"progress":0,"isUploading":false},"terms":{"isFetching":false},"site":{"config":null},"region":{"provinces":[{"id":1,"parent_id":0,"code":"0000","type":"province","name":"강원도"},{"id":2,"parent_id":0,"code":"0001","type":"province","name":"경기도"},{"id":3,"parent_id":0,"code":"0002","type":"province","name":"경상남도"},{"id":4,"parent_id":0,"code":"0003","type":"province","name":"경상북도"},{"id":5,"parent_id":0,"code":"0004","type":"province","name":"광주광역시"},{"id":6,"parent_id":0,"code":"0005","type":"province","name":"대구광역시"},{"id":7,"parent_id":0,"code":"0006","type":"province","name":"대전광역시"},{"id":8,"parent_id":0,"code":"0007","type":"province","name":"부산광역시"},{"id":9,"parent_id":0,"code":"0008","type":"province","name":"서울특별시"},{"id":10,"parent_id":0,"code":"0009","type":"province","name":"세종특별자치시"},{"id":11,"parent_id":0,"code":"000A","type":"province","name":"울산광역시"},{"id":12,"parent_id":0,"code":"000B","type":"province","name":"인천광역시"},{"id":13,"parent_id":0,"code":"000C","type":"province","name":"전라남도"},{"id":14,"parent_id":0,"code":"000D","type":"province","name":"전라북도"},{"id":15,"parent_id":0,"code":"000E","type":"province","name":"제주도"},{"id":16,"parent_id":0,"code":"000F","type":"province","name":"충청남도"},{"id":17,"parent_id":0,"code":"0010","type":"province","name":"충청북도"}],"cities":{},"towns":{},"fullInfo":null},"filter":{"hubs":[{"id":1,"code":"0000","name":"영어","sort_no":null},{"id":24,"code":"0001","name":"수능/내신/일반학원/과외","sort_no":null},{"id":79,"code":"0002","name":"외국어","sort_no":null},{"id":131,"code":"0003","name":"대학원\u0026편입","sort_no":null},{"id":144,"code":"0004","name":"자격증/취업","sort_no":null},{"id":288,"code":"0006","name":"임용/기타고시","sort_no":null},{"id":312,"code":"0007","name":"공무원","sort_no":null},{"id":616,"code":"0008","name":"교수/유치원","sort_no":null}],"sites":[{"id":2,"code":"00000000","name":"시험영어","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":7,"code":"00000001","name":"유학영어","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":16,"code":"00000002","name":"Speaking","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":20,"code":"00000003","name":"생활영어","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":25,"code":"00010000","name":"고등학교","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":53,"code":"00010001","name":"중학교","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":66,"code":"00010002","name":"초등학교","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":80,"code":"00020000","name":"중국어","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":85,"code":"00020001","name":"일본어","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":92,"code":"00020002","name":"기타외국어","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":132,"code":"00030000","name":"전문대학원","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":137,"code":"00030001","name":"편입","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":145,"code":"00040000","name":"취업","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":153,"code":"00040001","name":"CPA","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":163,"code":"00040002","name":"공인중개사","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":170,"code":"00040003","name":"세무사","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":184,"code":"00040004","name":"노무사","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":195,"code":"00040005","name":"법무사","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":210,"code":"00040006","name":"감정평가사","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":218,"code":"00040007","name":"변리사","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":244,"code":"00040008","name":"계리사","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":254,"code":"00040009","name":"손해사정사","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":266,"code":"0004000A","name":"관세사","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":274,"code":"0004000B","name":"기타자격증","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":289,"code":"00060000","name":"초등/유아임용","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":294,"code":"00060001","name":"중등임용","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":313,"code":"00070000","name":"군무원/특정직","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":317,"code":"00070001","name":"행정직","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":353,"code":"00070002","name":"기술직","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":449,"code":"00070003","name":"경찰","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":462,"code":"00070004","name":"소방","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":475,"code":"00070005","name":"고등고시","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"},{"id":3,"code":"grade","name":"직급"}]},{"id":617,"code":"00080000","name":"교수","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":4402,"code":"0004000C","name":"변호사","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]},{"id":4403,"code":"00080001","name":"유치원","sort_no":null,"filter_type":[{"id":1,"code":"site","name":"사이트"}]}]},"review":{"review":null,"isVoting":false},"search":{"visible":false,"recommendations":null,"isSearching":false},"banners":{"rootBanners":null,"soccerFieldBanners":null,"rightQuickBanners":null,"leftQuickBanners":null,"contentBanners":null,"mainTopBanners":null,"cloudBanners":null,"popupBanners":null}},"authoring":{"review":{"pages":[],"meta":{},"source":{},"target":{},"sites":null,"institutes":null,"branches":null,"subjects":null,"tutors":null,"questions":null,"answers":null,"isAuthoring":false,"isFetching":false},"tutor":{"meta":{},"pages":[],"sites":null,"subjects":null,"institutes":null,"branches":null,"match":null,"isAuthoring":false},"institute":{"meta":{},"pages":[],"sites":null,"subjects":null,"isAuthoring":false}},"site":{"root":{"count":null,"liveReviews":null,"hotReviews":null,"infoArticles":null,"talkArticles":null,"totalInfoCount":0,"isFetching":false},"site":{"professorReviews":null,"kindergartenReviews":null,"tutorReview":null,"tutorTransferReview":null,"csatReview":null,"talkArticles":null,"infoArticles":null,"pressArticles":null,"qnaArticles":null,"subjects":null,"region":{},"schedules":null,"tutorRanks":null,"instituteRanks":null,"isFetching":false,"isFetchingRank":false,"count":null},"tutorSite":{"home":{"stats":null,"tutor":null,"latestReviews":null,"reviews":null,"transferReviews":null,"pressArticles":null,"essayArticles":null,"isFetchingTutor":false,"isFetchingReviews":false,"isFetchingArticles":false},"review":{"transferGraph":null,"reviews":null,"transferReviews":null,"paging":{"total":0,"page":1,"limit":10},"comments":null,"commentsPaging":{"total":0,"page":1,"limit":10},"isFetching":false}},"instituteSite":{"home":{"stats":null,"institute":null,"tutors":null,"tutorsPaging":{"total":0,"page":1,"limit":6},"tutorReviews":null,"tutorTransferReviews":null,"instituteReview":null,"instituteTransferReview":null,"latestReviews":null,"branches":null,"nearInstitutes":null,"momtalkArticles":null,"pressArticles":null,"essayArticles":null,"professorReview":null,"isFetchingInstitute":false,"isFetchingReviews":false},"review":{"instituteReviews":null,"paging":{"total":0,"page":1,"limit":10},"isFetching":false}}},"board":{"list":{"filters":{},"noticeArticles":null,"articles":null,"paging":{"total":0,"page":1,"limit":10}},"article":{"post":{},"comment":{},"questionPost":{}},"modal":{"pages":[],"meta":{},"subjects":null,"institutes":null,"tutors":null,"isMomtalkModalView":false,"isMomtalkModalWrite":false,"isMomtalkModalEdit":false,"isQuestionToTutor":false,"isFetching":false}},"search":{"tutor":{"tutors":null,"institutes":null,"institutesPaging":{"total":0,"page":1,"limit":20},"subjects":null,"serials":null,"professors":null,"colleges":null,"departments":null,"paging":{"total":0,"page":1,"limit":21},"isFetching":false},"institute":{"institutes":null,"kindergartens":null,"paging":{"total":0,"page":1,"limit":20},"isFetching":false},"common":{"institutes":null,"institutesPaging":{"total":0,"page":1,"limit":10},"tutors":null,"tutorsPaging":{"total":0,"page":1,"limit":10},"reviews":null,"talkArticles":null,"talkPaging":{"total":0,"page":1,"limit":10},"infoArticles":null,"infoPaging":{"total":0,"page":1,"limit":10},"qnaArticles":null,"qnaPaging":{"total":0,"page":1,"limit":10},"isFetching":false}},"mobile":{"mobile":{}}},"initialProps":{}},"page":"/mypage/account","query":{},"buildId":"o-A2Qq11WahTa4J781pZh"}</script>
	<script nomodule=""
		src="/_next/static/runtime/polyfills-46fa8adc4b9ee28da066.js"></script>
	<script async="" data-next-page="/mypage/account"
		src="/_next/static/o-A2Qq11WahTa4J781pZh/pages/mypage/account.js"></script>
	<script async="" data-next-page="/_app"
		src="/_next/static/o-A2Qq11WahTa4J781pZh/pages/_app.js"></script>
	<script src="/_next/static/runtime/webpack-7ecc981f780d445a18e7.js"
		async=""></script>
	<script src="/_next/static/chunks/commons.4e7acc4d1e57ba476c94.js"
		async=""></script>
	<script src="/_next/static/runtime/main-552592925e11c5751fcd.js"
		async=""></script>
	<script src="/_next/static/chunks/styles.907b7a84a01942e8d49f.js"
		async=""></script>


	<div class="tooltip"
		style="z-index: 100000 !important; position: fixed !important; right: 17px !important; bottom: 170px !important; cursor: pointer !important;">
		<div class="tooltiptext" id="myTooltip">url 공유하기</div>
		<img
			src="chrome-extension://ggjohpipgoocjmnkpleikjkljlimillm/images/share_button.png"
			id="shareButton"
			style="z-index: 100000 !important; position: fixed !important; right: 13px !important; bottom: 80px !important; height: 60px !important; width: auto !important; cursor: pointer !important;">
	</div>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","1985263945087188");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=1985263945087188&amp;ev=PageView&amp;noscript=1">
	</noscript>


	<script type="text/javascript" id="" src="//wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript" id="">var DAY=864E5;function setCookie(d,b,a,c,f){if(d&&b){c=c?"; path\x3d"+c:"";f=f?"; domain\x3d"+f:"";var e="";a&&(e=new Date,e.setTime(e.getTime()+a),e="; expires\x3d"+e.toUTCString());document.cookie=d+"\x3d"+b+e+c+f}}function getQuery(d){for(var b=window.location.search.substr(1).split("\x26"),a=0;a<b.length;a++){var c=b[a].split("\x3d");if(c[0]===d&&2===c.length)return c[1]}return null}
(function(){var d=getQuery("utm_campaign"),b=getQuery("utm_source"),a=getQuery("utm_medium");console.log(d,b,a);setCookie("utm_campaign",d,DAY,"/");setCookie("utm_source",b,DAY,"/");setCookie("utm_medium",a,DAY,"/")})();</script>
	<script type="text/javascript" id=""
		src="https://cdn.megadata.co.kr/js/en_script/3.6/enliple_min3.6.js"></script>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/adfit/static/kp.js"></script>

	<script type="text/javascript" id="">if(!wcs_add)var wcs_add={};wcs_add.wa="s_24844a989c00";if(!_nasa)var _nasa={};wcs.inflow();wcs_do(_nasa);</script>
	<script type="text/javascript" id="">var rf=new EN;rf.setData("userid","starteacher");rf.setSSL(!0);rf.sendRf();</script>





	<script type="text/javascript" id="">kakaoPixel("7055636214368717929").pageView();</script>
	<script src="/_next/static/o-A2Qq11WahTa4J781pZh/pages/mypage.js"></script>
	<script
		src="/_next/static/o-A2Qq11WahTa4J781pZh/pages/mypage/tutors.js"></script>
	<script
		src="/_next/static/o-A2Qq11WahTa4J781pZh/pages/mypage/institutes.js"></script>
</body>
</html>