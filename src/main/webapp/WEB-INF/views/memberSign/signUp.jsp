<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="en">

<head>
<!-- Basic -->
<title>세모선 | 회원가입</title>
<!-- Define Charset -->
<meta charset="utf-8" />
<c:import url="../common/util.jsp" />
<!-- 정규식 -->


<style>
.sign{
	margin-left: 25px;
}
/*중복아이디체크관련*/
div#userId-container {
	position: relative;
	padding: 0px;
}

div#userId-container span.guide {
	display: none;
	font-size: 12px;
	position: absolute;
	top: 12px;
	right: 5px;
	padding-top: 12px;
}

div#userId-container span.ok {
	color: green;
	padding-top: 12px;
	right: 5px;
}

div#userId-container span.error, span.invalid {
	color: red;
}
/*중복아이디체크관련*/
div#email-container {
	position: relative;
	padding-top: 80px;
}

div#email-container span.guide {
	display: none;
	font-size: 12px;
	position: absolute;
	top: 12px;
	padding-top: 95px;
	right: 10px
}

div#email-container span.ok {
	color: green;
	padding-top: 95px;
	right: 5px;
}

div#email-container span.error, span.invalid {
	color: red;
	padding-top: 95px;
	right: 10px;
}

.modal-content {
	margin-top: 120px !important;
}

.widget-search input[type="password"], #contact-form input[type="password"],
	#contact-form textarea, #respond input[type="password"], #respond textarea,
	.email {
	color: #666fb5;
	font-size: 13px;
	font-family: 'Open Sans', 'Segoe UI', 'Helvetica Neue', Helvetica, Arial,
		sans-serif;
	border: 1px solid #eee;
	border-radius: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-o-border-radius: 2px;
	outline: none;
	width: 80%;
	padding: 7px 14px;
	display: block;
	margin-bottom: 10px;
	transition: all 0.4s ease-in-out;
	-moz-transition: all 0.4s ease-in-out;
	-webkit-transition: all 0.4s ease-in-out;
	-o-transition: all 0.4s ease-in-out;
	margin: auto;
}

.widget-search input[type="search"], #contact-form input[type="text"],
	#contact-form textarea, #respond input[type="text"], #respond textarea,
	.email {
	color: #666fb5;
	font-size: 13px;
	font-family: 'Open Sans', 'Segoe UI', 'Helvetica Neue', Helvetica, Arial,
		sans-serif;
	border: 1px solid #eee;
	border-radius: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-o-border-radius: 2px;
	outline: none;
	width: 80%;
	padding: 7px 14px;
	display: block;
	margin-bottom: 10px;
	transition: all 0.4s ease-in-out;
	-moz-transition: all 0.4s ease-in-out;
	-webkit-transition: all 0.4s ease-in-out;
	-o-transition: all 0.4s ease-in-out;
	margin: auto;
}

label, #radio {
	padding-left: 60px;
}

label.btn span {
	font-size: 1.5em;
}

label input[type="radio"] ~i.fa.fa-circle-o {
	color: #c8c8c8;
	display: inline;
}

label input[type="radio"] ~i.fa.fa-dot-circle-o {
	display: none;
}

label input[type="radio"]:checked ~i.fa.fa-circle-o {
	display: none;
}

label input[type="radio"]:checked ~i.fa.fa-dot-circle-o, label input[type="text"]:checked
	 ~i.fa.fa-dot-circle-o {
	color: #7AA3CC;
	display: inline;
}

label:hover input[type="radio"] ~i.fa, label:hover input[type="text"] ~i.fa
	{
	color: #7AA3CC;
}

label input[type="checkbox"] ~i.fa.fa-square-o {
	color: #c8c8c8;
	display: inline;
}

label input[type="checkbox"] ~i.fa.fa-check-square-o {
	display: none;
}

label input[type="checkbox"]:checked ~i.fa.fa-square-o {
	display: none;
}

label input[type="checkbox"]:checked ~i.fa.fa-check-square-o {
	color: #7AA3CC;
	display: inline;
}

label:hover input[type="checkbox"] ~i.fa {
	color: #7AA3CC;
}

div[data-toggle="buttons"] label.active, input[type="checkbox"] label.active
	{
	color: #7AA3CC;
}

div[data-toggle="buttons"] label {
	display: inline-block;
	padding: 6px 12px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: normal;
	line-height: 2em;
	text-align: left;
	white-space: nowrap;
	vertical-align: top;
	cursor: pointer;
	background-color: none;
	border: 0px solid #c8c8c8;
	border-radius: 3px;
	color: #c8c8c8;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-o-user-select: none;
	user-select: none;
}

div[data-toggle="buttons"] label:hover {
	color: #7AA3CC;
}

div[data-toggle="buttons"] label:active, div[data-toggle="buttons"] label.active
	{
	-webkit-box-shadow: none;
	box-shadow: none;
}

input:focus {
	outline: 3px solid #7AA3CC !important;
}

label {
	color: #7AA3CC;
	font-weight: 900;
	font-size: large;
}

.join_agreement {
	overflow-y: auto;
	height: 400px;
	padding: 10px 10px 10px 0;
	border: 1px solid #d8d8d8;
}

body {
	background: white;
}

.gBtn {
	margin-left: 90px !important;
}

input{
	width:70% !important;
}
.gBtn{
	right:55px;
}
#useAgree1, #useAgree2, #useAgree3{
	width:10px !important;
	margin-left: 800px; 
}
.MAL5{
	width: 200px;
}
input[type=range] {
	width: 100% !important;
}
</style>
</head>

<body>
	<!-- Container -->
	<div id="container">
		<c:import url="../common/header.jsp" />
		<!-- Start Page Banner -->
		<div class="page-banner no-subtitle">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h2></h2>
					</div>
					<div class="col-md-6">
						<ul class="breadcrumbs">
							<li><a href="#">Home</a></li>
							<li>Tabs</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- End Page Banner -->
		<!-- 로그인처리  -->
		<!-- 로그인,회원가입 버튼 -->
	</div>
	</nav>
	<!-- Modal시작 -->
	<!-- https://getbootstrap.com/docs/4.1/components/modal/#live-demo -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="loginModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="loginModalLabel">로그인</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!--로그인폼 -->
				<!-- https://getbootstrap.com/docs/4.1/components/forms/#overview -->
				<form
					action="${pageContext.request.contextPath}/member/memberLogin.do"
					method="post">
					<div class="modal-body">
						<input type="text" class="form-control" name="userId"
							placeholder="아이디" required> <br /> <input
							type="password" class="form-control" name="pwd"
							placeholder="비밀번호" required>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-outline-success">로그인</button>
						<button type="button" class="btn btn-outline-success"
							data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Start Content -->
	<div id="content">
		<div class="container">
			<div class="row sidebar-page">
				<!-- Page Content -->
				<!-- Divider -->
				<div class="hr5" style="margin-top: 45px; margin-bottom: 45px;">
					<p style="text-align:center; margin-top: 5px; color:red;">※회원가입시 이메일 인증이 필요합니다.</p>
				</div>
				<!-- tabs Left -->
				<div class="tabs-left">
					<!-- Nav Tabs -->
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tableft" data-toggle="tab"> 1 장 </a></li>
						<li><a href="#tableft2" data-toggle="tab" > 2 장  </a></li>
						<li><a href="#tableft3" data-toggle="tab" > 3 장  </a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane fade active in" id="tableft">
							<!-- 시작 -->
							<div class="join_agreement MAB10">
								<!-- personal_wrap -->
								<div class="personal_wrap" tabindex="0">
									<h2>제 1 장 총칙</h2>
									<h3>제 1 조 (목적)</h3>
									<ol>
										<li>1. 본 약관은 기업마당 사이트가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차,
											이용자와 기업마당 사이트의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.</li>
									</ol>
									<h3>제 2 조 (약관의 효력과 변경)</h3>
									<ol>
										<li>1. 기업마당 사이트는 귀하가 본 약관 내용에 동의하는 경우 기업마당 사이트의 서비스 제공 행위
											및 귀하의 서비스 사용 행위에 본 약관이 우선적으로 적용됩니다.</li>
										<li>2. 기업마당 사이트는 본 약관을 사전 고지 없이 변경할 수 있고 변경된 약관은 기업마당 사이트
											내에 공지하거나 e-mail을 통해 회원에게 공지하며, 공지와 동시에 그 효력이 발생됩니다.<br>
											이용자가 변경된 약관에 동의하지 않는 경우, 이용자는 본인의 회원등록을 취소 (회원탈락)할 수 있으며 계속
											사용의 경우는 약관 변경에 대한 동의로 간주 됩니다.
										</li>
									</ol>
									<h3>제 3 조 (약관 외 준칙)</h3>
									<ol>
										<li>1. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정,
											정보통신 윤리강령, 프로그램보호법 및 기타 관련 법령의 규정에 의합니다.</li>
									</ol>
									<h3>제 4 조 (용어의 정의)</h3>
									<p>본 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
									<ol>
										<li>1. 이용자 : 본 약관에 따라 기업마당 사이트가 제공하는 서비스를 받는 자.</li>
										<li>2. 가입 : 기업마당 사이트가 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에
											동의하여 서비스 이용계약을 완료시키는 행위.</li>
										<li>3. 회원 : 기업마당 사이트에 개인 정보를 제공하여 회원 등록을 한 자로서 기업마당 사이트가
											제공하는 서비스를 이용할 수 있는 자.</li>
										<li>4. 비밀번호 : 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여
											이용자 자신이 선정한 문자와 숫자의 조합.</li>
										<li>5. 탈퇴 : 회원이 이용계약을 종료시키는 행위.</li>
									</ol>
									<h2>제 2 장 서비스 제공 및 이용</h2>
									<h3>제 5 조 (이용계약의 성립)</h3>
									<ol>
										<li>1. 이용계약은 신청자가 온라인으로 기업마당 사이트에서 제공하는 소정의 가입신청 양식에서
											요구하는 사항을 기록하여 가입을 완료하는 것으로 성립됩니다.</li>
										<li>2. 기업마당 사이트는 다음 각 호에 해당하는 이용계약에 대하여는 가입을 취소할 수 있습니다.
											<ol>
												<li>① 다른 사람의 명의를 사용하여 신청하였을 때</li>
												<li>② 이용계약 신청서의 내용을 허위로 기재하였거나 신청하였을 때</li>
												<li>③ 다른 사람의 기업마당 사이트 서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를
													하였을 때</li>
												<li>④ 기업마당 사이트를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우</li>
												<li>⑤ 기타 기업마당 사이트가 정한 이용신청요건이 미비 되었을 때</li>
											</ol>
										</li>
									</ol>
									<h3>제 6 조 (회원정보 사용에 대한 동의)</h3>
									<ol>
										<li>1. 회원의 개인정보는 공공기관의 개인정보보호에 관한 법률에 의해 보호됩니다.</li>
										<li>2. 기업마당 사이트의 회원 정보는 다음과 같이 사용, 관리, 보호됩니다.
											<ol>
												<li>① 개인정보의 사용 : 기업마당 사이트는 서비스 제공과 관련해서 수집된 회원의 신상정보를
													본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다.<br> 단, 전기통신기본법 등 법률의
													규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이
													있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 귀하가 기업마당 사이트에 제공한
													개인정보를 스스로 공개한 경우에는 그러하지 않습니다.
												</li>
												<li>② 개인정보의 관리 : 귀하는 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서
													수시로 귀하의 개인정보를 수정/삭제할 수 있습니다.</li>
												<li>③ 개인정보의 보호 : 귀하의 개인정보는 오직 귀하만이 열람/수정/삭제 할 수 있으며, 이는
													전적으로 귀하의 ID와 비밀번호에 의해 관리되고 있습니다.<br> 따라서 타인에게 본인의 ID와
													비밀번호를 알려주어서는 안되며, 작업 종료 시에는 반드시 로그아웃 해 주시기 바랍니다.
												</li>
											</ol>
										</li>
										<li>3. 회원이 본 약관에 따라 이용신청을 하는 것은, 기업마당 사이트가 신청서에 기재된 회원정보를
											수집, 이용하는 것에 동의하는 것으로 간주됩니다.</li>
									</ol>
									<h3>제 7 조 (사용자의 정보 보안)</h3>
									<ol>
										<li>1. 가입 신청자가 기업마당 사이트 서비스 가입 절차를 완료하는 순간부터 귀하는 입력한 정보의
											비밀을 유지할 책임이 있으며, 회원의 ID와 비밀번호를 사용하여 발생하는 모든 결과에 대한 책임은 회원
											본인에게 있습니다.</li>
										<li>2. ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있으며, 회원의 ID나 비밀번호가
											부정하게 사용 되었다는 사실을 발견한 경우에는 즉시 기업마당 사이트에 신고하여야 합니다. 신고를 하지 않음으로
											인한 모든 책임은 회원 본인에게 있습니다. 종료하지 아니함으로써 제3자가 귀하에 관한 정보를 이용하게 되는
											등의 결과로 인해 발생하는 손해 및 손실에 대하여 기업마당 사이트는 책임을 부담하지 아니합니다.</li>
									</ol>
									<h3>제 8 조 (서비스의 중지)</h3>
									<ol>
										<li>1. 기업마당 사이트는 이용자가 본 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스
											사용을 제한 및 중지할 수 있습니다.</li>
									</ol>
									<h3>제 9 조 (서비스의 변경 및 해지)</h3>
									<ol>
										<li>1. 기업마당 사이트는 귀하가 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로
											인한 손해에 관하여 책임을 지지 않으며, 회원이 본 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등
											내용에 관하여는 책임을 지지 않습니다. 의한 손해에 대하여 책임을 부담하지 아니합니다.</li>
									</ol>
									<h3>제 10 조 (게시물의 저작권)</h3>
									<ol>
										<li>1. 귀하가 게시한 게시물의 내용에 대한 권리는 귀하에게 있습니다.</li>
										<li>2. 기업마당 사이트는 게시된 내용을 사전 통지 없이 편집, 이동할 수 있는 권리를 보유하며,
											게시판운영 원칙에 따라 사전 통지 없이 삭제할 수 있습니다.</li>
										<li>3. 귀하의 게시물이 타인의 저작권을 침해함으로써 발생하는 민, 형사상의 책임은 전적으로 귀하가
											부담하여야 합니다.</li>
									</ol>
									<h2>제 3 장 의무 및 책임</h2>
									<h3>제 11 조 (기업마당 사이트의 의무)</h3>
									<ol>
										<li>1. 기업마당 사이트는 회원의 개인 신상 정보를 본인의 승낙없이 타인에게 누설, 배포하지
											않습니다. 다만, 전기통신관련법령 등 관계법령에 의하여 관계 국가기관 등의 요구가 있는 경우에는 그러하지
											아니합니다.</li>
									</ol>
									<h3>제 12 조 (회원의 의무)</h3>
									<ol>
										<li>1. 회원 가입 시에 요구되는 정보는 정확하게 기입하여야 합니다. 또한 이미 제공된 귀하에 대한
											정보가 정확한 정보가 되도록 유지, 갱신하여야 하며, 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게
											해서는 안됩니다.</li>
										<li>2. 회원은 기업마당 사이트의 사전 승낙 없이 서비스를 이용하여 어떠한 영리행위도 할 수
											없습니다.</li>
									</ol>
									<h2>제 4 장 기타</h2>
									<h3>제 13 조 (양도금지)</h3>
									<ol>
										<li>1. 회원이 서비스의 이용권한, 기타 이용계약 상 지위를 타인에게 양도, 증여할 수 없습니다.</li>
									</ol>
									<h3>제 14 조 (손해배상)</h3>
									<ol>
										<li>1. 기업마당 사이트는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도
											기업마당 사이트가 고의로 행한 범죄행위를 제외하고 이에 대하여 책임을 부담하지 아니합니다.</li>
									</ol>
									<h3>제 15 조 (면책조항)</h3>
									<ol>
										<li>1. 기업마당 사이트는 회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지
											않습니다. 기업마당 사이트는 어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 얻은 이득이나 입은 손해에
											대해 책임이 없습니다. 금전적 거래등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과
											관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.</li>
									</ol>
									<h3>제 16 조 (재판관할)</h3>
									<ol>
										<li>1. 기업마당 사이트와 이용자 간에 발생한 서비스 이용에 관한 분쟁에 대하여는 대한민국 법을
											적용하며, 본 분쟁으로 인한 소는 대한민국의 법원에 제기합니다.</li>
									</ol>

								</div>
								<!-- //personal_wrap -->

							</div>
							<p class="join_check">
								<input id="useAgree1"  style="cursor: pointer;" name="useAgree1" type="checkbox" onchange="signCheck();"><label 
									for="useAgree1" class="MAL5" style="margin-left: 10px !important; cursor: pointer;">이용약관에 동의합니다.(필수)</label>
							</p>
							<!-- 끝 -->
						</div>
						<!-- 2 시작 -->
						<div class="tab-pane fade" id="tableft2">
							<div class="join_agreement MAB10">
								<!-- personal_wrap -->
								<div class="personal_wrap" tabindex="1">
									<h2>개인정보의 수집 및 이용 동의</h2>
									<p>
										기업마당은 「개인정보보호법」 제15조제1항제1호, 제17조제1항제1호, 제23조제1호, 제24조제1항 제1호에
										따라 <br>아래와 같이 개인정보의 수집. 이용에 관하여 귀하의 동의를 얻고자 합니다. <br>
										<br> 기업마당은 이용자의 사전 동의 없이는 이용자의 개인정보를 함부로 공개하지 않으며, 수집된
										정보는 아래와 같이 이용하고 있습니다. <br> 이용자가 제공한 모든 정보는 아래의 목적에 필요한 용도
										이외로는 사용되지 않으며 이용 목적이 변경될 시에는 이를 알리고 동의를 구할 것입니다.
									</p>
									<ol>
										<li>1. 개인정보의 수집 및 이용 목적
											<ol>
												<li>가. 서비스 제공에 관한 업무 이행 - 컨텐츠 제공, 특정 맞춤 서비스 제공(마이페이지,
													뉴스레터 등), 기업 애로상담</li>
												<li>나. 회원관리 <br>- 회원제 서비스 이용 및 제한적 본인 확인제에 따른
													본인확인, 개인식별, 가입의사 확인, 가입 및 가입횟수 제한, 추후 법정 대리인 본인확인, 분쟁 조정을
													위한 기록보존, 불만처리 등 민원처리, 공지사항 전달
												</li>
											</ol>
										</li>
										<li>2. 수집하는 개인정보의 항목
											<ul>
												<li>&lt;개인회원 가입&gt;<br>필수항목 : 아이디, 비밀번호, 이름,
													핸드폰번호, 이메일, 암호화된 이용자 확인값(CI)<br> 선택항목 : 이메일 수신여부,
													문자수신여부, 웹진구독여부
												</li>
												<li>&lt;기업회원 가입&gt;<br>필수항목 : 아이디, 비밀번호, 담당자 이름,
													담당자 전화번호, 핸드폰번호, 이메일, (법인기업의 경우 법인등록번호), 기업정보(회사명, 대표자명,
													사업자등록번호, 회사전화번호, 주소, 지역, 대표업종), 암호화된 이용자 확인값(CI)<br>
													선택항목 : 팩스번호, 홈페이지주소, 회사이메일주소, 창업일자, 부업종, 매출액, 수출액, 상시근로자 수,
													주요생산품명, 이메일 수신여부, 문자수신여부, 이메일 수신여부, 문자수신여부, 웹진구독여부
												</li>
												<li>&lt;전문가 가입&gt;<br>필수항목 : 아이디, 비밀번호, 이름, 핸드폰번호,
													이메일, 협약사항, 지역, 암호화된 이용자 확인값(CI)<br> 선택항목 : 소속기관명,
													대표자명, 사업자번호, 소속기관 전화번호<br> 전문가정보는 기업애로상담을 위한 목적으로 수집하나
													보유하지 않고 비즈니스사업단으로 시스템연계 제공<br> 본인인증시 암호화된 이용자 확인값(CI)은
													SSO연계를 위한 용도로 제공
												</li>
												<li>&lt;자동수집&gt;<br> IP주소, 쿠키, 서비스 이용기록, 방문기록 등
												</li>
												<li>&lt;자동수집 거부&gt;<br /> 회사는 귀하의 정보를 수시로저장하고 찾아내는
													'쿠키(cookie)' 등을 운용합니다. 쿠키란 회사의 홈페이지를 운영하는데 이용되는 서버가 귀하의
													브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 회사는 다음과 같은
													목적을 위해 쿠키를 사용합니다.<br /> 가. 쿠키 등 사용 목적<br /> 회원과 비회원의 접속
													빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및
													방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공<br /> 이용자는 쿠키 설치에 대한
													선택권을 가지고 있습니다. 따라서, 이용자께서는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나,
													쿠키가 저장될 때마다 확인을 거치거나,<br /> 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.<br />
													나. 쿠키 설정 거부 방법<br /> 예: 쿠키 설정을 거부하는 방법으로는 이용자님이 사용하시는 웹
													브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의
													저장을<br /> 거부할 수 있습니다.<br /> 설정방법 예(인터넷 익스플로어의 경우): 웹 브라우저
													상단의 도구 > 인터넷 옵션 > 개인정보<br /> 단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스
													제공에 어려움이 있을 수 있습니다.
												</li>
											</ul>
										</li>
										<li>3. 개인정보의 보유 및 이용기간
											<ul>
												<li>기업마당은 원칙적으로 보유기간의 경과, 개인정보의 수집 및 이용목적의 달성 등 그 개인정보가
													불필요하게 되었을 때에는 지체 없이 파기합니다. 다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지
													않을 수 있습니다. 불필요하게 되었을 때에는 지체 없이 해당 개인정보를 파기합니다.</li>
												<li>회원정보<br>- 탈퇴 후 지체없이 파기 <!-- , 재동의 기간 1년 -->
												</li>

												<li>전문가정보<br> - 전문가 정보는 기업애로상담을 위한 목적으로 수집하나 보유하지
													않고 비즈니스사업단으로 시스템연계 제공함
												</li>
											</ul>
										</li>
										<li>4. 동의거부권 및 불이익
											<ul>
												<li>정보주체는 개인정보 수집에 동의를 거부할 권리가 있습니다. 다만, 필수 항목에 대한 동의를
													거부할 시 저희가 제공하는 서비스를 이용할 수 없습니다.</li>
											</ul>
										</li>
									</ol>

								</div>
								<!-- //personal_wrap -->
							</div>
							<p class="join_check">
								<input id="useAgree2" type="checkbox" name="useAgree2" style="cursor: pointer;" onchange="signCheck();"><label
									for="useAgree2" class="MAL5" style="margin-left: 10px !important; cursor: pointer;">이용약관에 동의합니다.(필수)</label>
							</p>
							<!-- 2 끝 -->
						</div>
						<div class="tab-pane fade" id="tableft3">
							<!-- 3 시작 -->
							<div class="join_agreement MAB10">
								<!-- personal_wrap -->
								<div class="personal_wrap" tabindex="3" id="list">
									<h2 class="MAT0">마케팅/홍보의 수집의 이용 동의</h2>
									<ol>
										<li>1. 개인정보의 수집 및 이용 목적
											<ul>
												<li>신규 서비스 개발 및 마케팅ㆍ광고에의 활용<br> - 신규 서비스 개발, 이벤트 및
													광고성 정보 제공 및 참여기회 제공, 접속 빈도 등 회원의 서비스 이용에 대한 통계
												</li>
											</ul>
										</li>
										<li>2. 수집하는 개인정보의 항목
											<ul>
												<li>필수항목 : 이름<br> 선택항목 : 이메일, 연락처(휴대전화번호, 유선전화번호 중
													1개 선택)
												</li>
											</ul>
										</li>
										<li>3. 개인정보의 보유 및 이용기간
											<ul>
												<li>이용목적의 달성 후 지체없이 파기</li>
											</ul>
										</li>
										<li>4. 동의거부권 및 불이익
											<ul>
												<li>개인정보의 마케팅/홍보의 수집 및 이용 동의를 거부하시더라도 회원 가입 시 제한은 없습니다.
													다만, 마케팅 활용 서비스 안내 및 참여에 제한이 있을 수 있습니다.</li>
											</ul>
										</li>
									</ol>
								</div>
								<!-- //personal_wrap -->
							</div>
							
							<p class="join_check">
								<input id="useAgree3" type="checkbox" name="useAgree3" style="cursor: pointer;" onchange="signCheck();"><label
									for="useAgree3" class="MAL5" style="margin-left: 10px !important; cursor: pointer;">이용약관에 동의합니다.(필수)</label>
							</p>

						
							<!-- 3끝 -->
						</div>
					</div>
				</div>
				<!-- /tabs -->
				<!-- Divider -->
				<div class="hr5 margin-40"></div>
				<!-- End Page Content -->
			</div>
		</div>
	</div>
	<!-- End Content -->
	<!-- Start Content -->
	<div id="content">
		<div class="container">
			<div>
				<button type="button" class="btn btn-primary" id="signUpBtn" data-toggle="modal"
					data-target="#exampleModalCenter" disabled>먼저 모든 약관에 동의해주세요</button>
			</div>
		</div>
	</div>
	<!-- End content -->
	<!-- 회원가입 modal Start -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Welcome to Semosun</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body tabs-section">
				<form action="memberEnrollEnd.sg" class="contactForm" name="join"
					onsubmit="return validate(this);" method="post"
								enctype="multipart/form-data">
			          <!-- Nav Tabs -->
			          <ul class="nav nav-tabs">
			              <li class="active"><a href="#tab-1" data-toggle="tab"><i class="fa fa-desktop"></i> 선호 취향 등록</a></li>
			              <li><a href="#tab-2" data-toggle="tab"><i class="fa fa-leaf"></i> 회원 정보</a></li>
			          </ul>

          			<div class="tab-content">
					
					<!-- modal-body 2 : 별점 (추천) -->
			      <div class="tab-pane fade in active" id="tab-1">
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
					            <div class="progress-bar progress-bar-primary" data-progress-animation="60%">
					                <span class="progress-bar-tooltip" style="min-width: max-content;">3점</span>
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
					            <div class="progress-bar progress-bar-primary" data-progress-animation="60%">
					                <span class="progress-bar-tooltip" style="min-width: max-content;">3점</span>
					            </div>
					        </div> 
					     </div> 
		                 <div class="col-sm-6">
		                    <input type="range" max="5" min="0" step="1"  name="score2" onchange="changeProgress(this);" ><br />
		                 </div>   
					    </div> 
					<div class="row">
						<div class="col-sm-6">
					        <div class="progress-label"> 과제가 많은 수업을 좋아하시나요? </div>
					        <div class="progress">
					            <div class="progress-bar progress-bar-primary" data-progress-animation="60%">
					                <span class="progress-bar-tooltip" style="min-width: max-content;">3점</span>
					            </div>
					        </div> 
					     </div> 
		                 <div class="col-sm-6">
		                    <input type="range" max="5" min="0" step="1"  name="score3" onchange="changeProgress(this);" ><br />
		                 </div>   
					    </div> 
					<div class="row">
						<div class="col-sm-6">
					        <div class="progress-label"> 교재가 많은 수업이 좋으신가요? </div>
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
					        <div class="progress-label"> 발음, 발성, 속도의 강도가 어떤<br>강사님을 좋아하시나요? (차분 ↔ 파워풀)   </div>
					        <div class="progress">
					            <div class="progress-bar progress-bar-primary" data-progress-animation="60%">
					                <span class="progress-bar-tooltip" style="min-width: max-content;">3점</span>
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
	      		
	              </script>
	              <div class="tab-pane fade in" id="tab-2">
						
						<!-- Start Contact Form -->
						<div id="contact-form" class="contatct-form ">
							<div class="loader"></div>
								<div class="row">
										<div id="userId-container" >
										<label for="name" class="sign">아이디<span class="required ">※</span></label> <input
											type="text" class="form-control" placeholder="4글자이상"
											name="userId" id="userId_" required> <span
											class="guide ok" style="right:20px;">사용 가능</span> <span class="guide error" style="right:20px;">사용불가</span>
										<span class="guide invalid" style="right:20px;">4글자 미만</span> <input type="hidden"
											name="idDuplicateCheck" id="idDuplicateCheck" value="0" />
									</div>
									<br />
									<div>
										<label for="name" class="sign">비밀번호<span class="required " >*</span></label>
										<span class="name-missing">비밀번호</span> <input id="password_"
											name="pwd" type="password" value="" size="30" />
									</div>
									<br />
									<div>
										<label for="name" class="sign">비밀번호 확인<span class="required">*</span></label>
										<span class="name-missing">비밀번호</span> <input id="password2"
											name="pwdCheck" type="password" value="" size="30" />
									</div>
									<br />
									<div>
										<label for="name" class="sign">닉네임<span class="required">*</span></label> <span
											class="name-missing">Please enter your nickname</span> <input
											id="name" name="nickName" type="text" value="" size="30" />
									</div>
									<br />
									<div>
										<label for="name" class="sign" >성별<span class="required">*</span></label><br />
										<div class="col-xs-12">
											<div style="padding-left: 30px"
												class="btn-group btn-group-vertical" data-toggle="buttons">

												<label class="btn active gBtn"> <input type="radio"
													id="mg" name='gender' value="M" style=""/> <i
													class="fa fa-circle-o fa-2x"></i> <i
													class="fa fa-dot-circle-o fa-2x"></i> <span> 남</span>
												</label> <label class="btn active gBtn"> <input type="radio"
													id="fg" name='gender' value="F" /> <i
													class="fa fa-circle-o fa-2x"></i> <i
													class="fa fa-dot-circle-o fa-2x"></i><span> 여</span>
												</label>
											</div>
										</div>

										<br />
										<div id="na" style="height:30px;">
										
										</div>
										<div id="email-container" >
											<label for="name" class="sign">이메일<span class="required">*</span></label>
											<span class="name-missing">Please enter your email</span> <span
												class="guide ok" style="right:20px;">사용 가능</span> <span class="guide error" style="right:20px;">사용불가</span>
											<input id="email" name="email" type="text" size="30" /> <input
												type="hidden" name="checkEmailDup" id="checkEmailDup"
												value="0" />
										</div>
										<br />
										<div>
											<label for="name" class="sign">프로필사진</label> <span class="name-missing"></span>
											<div id="profileImgArea">
												<img id="profileImg"
													src="${pageContext.request.contextPath }/resources/images/profileImage/defaultMmember.png"
													onclick="$('#profile').click();"
													style="width: 150px; hegiht: 150px; display: block; margin-left: auto; margin-right: auto;"
													align="center">
											</div>
											<div id="fileArea">
												<input type="file" id="profile" name="upFile"
													onchange="LoadImg(this)" style="display: none;" multiple>
											</div>
										</div>
										<br/>

										<script type="text/javascript"
											src="${ pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script>

										<script>
											var JJ = $.noConflict();
										</script>
										<script>
										function signCheck(){
											$('#signUpBtn').attr('disabled', true).text("먼저 모든 약관에 동의해주세요");
											if($('#useAgree1').prop('checked') && 
											   $('#useAgree2').prop('checked') &&
											   $('#useAgree3').prop('checked')){
											   $('#signUpBtn').removeAttr('disabled').text("이제 회원가입이 가능합니다!");
											}
												
										} 
										function LoadImg(value) {
										    if (value.files && value.files[0]) {
										        var reader = new FileReader();
										        reader.onload = function(e) {
										            JJ('#profileImg').attr('src', e.target.result);
										        }
										        reader.readAsDataURL(value.files[0]);
										    }
										}
										//유효성 검사
										JJ(function() {
										    JJ("#password2")
										        .blur(
										            function() {
										                var p1 = JJ("#password_").val(),
										                    p2 = JJ("#password2").val();
										                if (p1 != p2) {
										                    alert("패스워드가 일치하지 않습니다.");
										                    JJ("#password_").focus();
										                }
										            });
										});
										/* 이메일 중복 검사 */
										JJ('#email')
										    .on(
										        "keyup",
										        function() {
										            var re2 = RegExp(/^[a-z][a-z0-9_-]{3,11}@([a-z\d\.-]+)\.([a-z\.]{2,6})$/);
										            if (!re2
										                .test(JJ('#email').val())) {
										                JJ('#email-container > .guide.error').show();
										                JJ('#email-container > .guide.ok').hide();
										                // alert("적합하지 않은 이메일 형식입니다.");
										                JJ('#email').focus();
										                return;
										            } else {
										                JJ.ajax({
										                        url: "${pageContext.request.contextPath}/member/checkEmailDup.do",
										                        data: {
										                            email: JJ('#email').val()
										                        },
										                        dataType: "json",
										                        success: function(data) {
										                            console.log(data);
										                            if (data.isUsable == true) {
										                                JJ("#email-container > .guide.error").hide();
										                                JJ("#email-container > .guide.invalid").hide();
										                                JJ("#email-container > .guide.ok").show();
										                                JJ("#checkEmailDup").val(1);
										                            } else {
										                                JJ("#email-container > .guide.error")
										                                    .show();
										                                JJ("#email-container > .guide.invalid")
										                                    .hide();
										                                JJ("#email-container > .guide.ok").hide();
										                                JJ("#checkEmailDup").val(0);
										                            }
										                        },
										                        error: function(jqxhr, textStatus, errorThrown) {
										                            console.log("ajax 처리 실패");
										                            //에러로그
										                            console.log(jqxhr);
										                            console.log(textStatus);
										                            console.log(errorThrown);
										                        }

										                    });
										            }

										        });
										/* 아이디 중복검사 이벤트 추가 */
										JJ("#userId_").on("keyup",function() {
										            var userId = JJ(this).val().trim();
										            if (userId.length < 4) {
										                JJ("#userId-container > .guide.error").hide();
										                JJ("#userId-container > .guide.ok").hide();
										                JJ("#userId-container > .guide.invalid").show();
										                return;
										            } else {
										                JJ.ajax({
									                        url: "${pageContext.request.contextPath}/member/checkIdDuplicate.do",
									                        data: {
									                            userId: userId
									                        },
									                        dataType: "json",
									                        success: function(
									                            data) {
									                            console
									                                .log(data);
									                            // if(data=="true") //stream 방식
									                            if (data.isUsable == true) { //viewName 방식
									                                JJ("#userId-container > .guide.error").hide();
									                                JJ("#userId-container > .guide.invalid").hide();
									                                JJ("#userId-container > .guide.ok").show();
									                                JJ("#idDuplicateCheck").val(1);
									                            } else {
									                                JJ("#userId-container > .guide.error").show();
									                                JJ("#userId-container > .guide.invalid").hide();
									                                JJ("#userId-container > .guide.ok").hide();
									                                JJ("#idDuplicateCheck").val(0);
									                            }
									                        },
									                        error: function(
									                            jqxhr,
									                            textStatus,
									                            errorThrown) {
									                            console.log("ajax 처리 실패");
									                            //에러로그
									                            console.log(jqxhr);
									                            console.log(textStatus);
									                            console.log(errorThrown);
									                        }
									                    });
										            }
										            //console.log(userId);
										        });

										function validate() {
										    var re = new RegExp(
										    /^(?!(?:[a-z]+)$)(?!(?:[A-Z]+)$)(?!(?:[0-9]+)$)([A-Z]|[a-z]|[0-9]){6,12}$/
										        );
										    // 패스워드가 적합한지 검사할 정규식
										    // 이메일이 적합한지 검사할 정규식
										    var re2 = new RegExp(
										        /^[a-z][a-z0-9_-]{3,11}@([a-z\d\.-]+)\.([a-z\.]{2,6})$/);

										    var userId = JJ("#userId_");
										    var pw = JJ("#password_");
										    var name = JJ("#name");
										    var email = JJ("#email");

// 										    if (chk1 == "") {
// 										        alert('약관에동의해 주세요');
// 										        return false;
// 										    }
// 										    if (chk2 == "") {
// 										        alert('약관에동의해 주세요');
// 										        return false;
// 										    }
											if (userId.val().trim().length < 4) {
											    alert("아이디는 최소 4자리이상이어야 합니다.");
											    userId.focus();
											    return false;
											}
											// 비밀번호 4~14자의 영문 대소문자와 숫자
											if (!re.test(pw.val())) {
											    alert("패스워드는 6~18자의 영문 대문자와 소문자 숫자를 포함하여 입력하세요");
											    pw.focus();
											    return false;
											}
											if (!JJ("#mg:checked").val() &&
											    !JJ("#fg:checked")
											    .val()) {
											    alert("성별을 입력해주세요")
											    JJ("#mg").focus();
											    return false;
											}
											if (name.val() == "") {
											    alert("닉네임을 입력해 주세요");
											    name.focus();
											    return false;
											}
// 											if (email.val() == "") {
// 											    alert("이메일을 입력해 주세요");
// 											    email.focus();
// 											    return false;
// 											}
	
											//아이디중복체크여부
											if (JJ("#idDuplicateCheck")
											    .val() == 0) {
											    alert("사용가능한 아이디를 입력해주세요.");
											    return false;
											}
											if(JJ("#checkEmailDup").val()==0){
												alert("사용가능한 이메일을 입력해주세요.");
												return false;
											}
											
											alert("회원가입이 완료되었습니다.");

											return true;
										}
										
										</script>

									</div>
								</div>
							
						</div>
						<!-- End Contact Form -->
						<div class="modal-footer">
							<button type="reset" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">회원가입하기</button>
						</div>
					</div>
	     		 <!-- 별점 5개 End -->
						<!-- test용 (필수값) -->
				</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<!-- 회원가입 modal End -->
	<div style="height: 200px;"></div>
	<c:import url="../common/footer.jsp" />
	<script type="text/javascript">
		JJ("#password").click(function() {
			toggleClass("#password:active");
		});
	</script>
</body>

</html>