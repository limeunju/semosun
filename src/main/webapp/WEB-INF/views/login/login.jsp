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
<title>세모선 | 로그인</title>

<!-- Define Charset -->
<meta charset="utf-8" />
<c:import url="../common/util.jsp" />
<style>
.join_info {
	
}

.login-box-wrap.jsx-1458736361 {
	width: 480px;
	margin: auto;
	padding: 70px 20px 0px;
}

.login-box.jsx-1458736361 .title.jsx-1458736361 p.jsx-1458736361 {
	font-size: 18px;
	color: rgb(102, 102, 102);
}

.login-box.jsx-1458736361 .title.jsx-1458736361 h2.jsx-1458736361 {
	font-size: 40px;
	line-height: 54px;
	font-weight: 300;
	padding-top: 8px;
}

.login-box.jsx-1458736361 .title.jsx-1458736361 h2.jsx-1458736361 {
	font-size: 40px;
	line-height: 54px;
	font-weight: 300;
	padding-top: 8px;
}

.username.jsx-1458736361 {
	margin-bottom: 32px;
}

.btn-login.jsx-1458736361 {
	text-align: center;
	margin: 50px 0px 42px;
}

@import url('https://fonts.googleapis.com/css?family=Poppins');

/* BASIC */
html {
	background-color: #56baed;
}

body {
	font-family: "Poppins", sans-serif;
	height: 100vh;
}

a {
	color: #92badd;
	display: inline-block;
	text-decoration: none;
	font-weight: 400;
}

h2 {
	text-align: center;
	font-size: 16px;
	font-weight: 600;
	text-transform: uppercase;
	display: inline-block;
	margin: 40px 8px 10px 8px;
	color: #cccccc;
}

/* STRUCTURE */
.wrapper {
	display: flex;
	align-items: center;
	flex-direction: column;
	justify-content: center;
	width: 100%;
	min-height: 100%;
	padding: 20px;
}

#formContent {
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 10px 10px 10px 10px;
	background: #fff;
	padding: 30px;
	width: 90%;
	width: 450px;
	position: relative;
	padding: 0px;
	-webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	text-align: center;
}

#formFooter {
	background-color: #f6f6f6;
	border-top: 1px solid #dce8f1;
	padding: 25px;
	text-align: center;
	-webkit-border-radius: 0 0 10px 10px;
	border-radius: 0 0 10px 10px;
}

/* TABS */
h2.inactive {
	color: #cccccc;
}

h2.active {
	color: #0d0d0d;
	border-bottom: 2px solid #5fbae9;
}

/* FORM TYPOGRAPHY*/
input[type=button], input[type=submit], input[type=reset] {
	background-color: #56baed;
	border: none;
	color: white;
	padding: 15px 80px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	text-transform: uppercase;
	font-size: 13px;
	-webkit-box-shadow: 0 10px 30px 0 rgba(95, 186, 233, 0.4);
	box-shadow: 0 10px 30px 0 rgba(95, 186, 233, 0.4);
	-webkit-border-radius: 5px 5px 5px 5px;
	border-radius: 5px 5px 5px 5px;
	margin: 5px 20px 40px 20px;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-ms-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover
	{
	background-color: #39ace7;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active
	{
	-moz-transform: scale(0.95);
	-webkit-transform: scale(0.95);
	-o-transform: scale(0.95);
	-ms-transform: scale(0.95);
	transform: scale(0.95);
}

input[type=text],
input[type=password] {
	background-color: #f6f6f6;
	border: none;
	color: #0d0d0d;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 5px;
	width: 85%;
	border: 2px solid #f6f6f6;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
	-webkit-border-radius: 5px 5px 5px 5px;
	border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus,
input[type=password]:focus {
	background-color: #fff;
	border-bottom: 2px solid #5fbae9;
}

input[type=text]:placeholder,
input[type=password]:placeholder {
	color: #cccccc;
}

/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
	-webkit-animation-name: fadeInDown;
	animation-name: fadeInDown;
	-webkit-animation-duration: 1s;
	animation-duration: 1s;
	-webkit-animation-fill-mode: both;
	animation-fill-mode: both;
}

@
-webkit-keyframes fadeInDown { 0% {
	opacity: 0;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
}

100%
{
opacity
:
 
1;
-webkit-transform
:
 
none
;

    
transform
:
 
none
;

  
}
}
@
keyframes fadeInDown { 0% {
	opacity: 0;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
}

100%
{
opacity
:
 
1;
-webkit-transform
:
 
none
;

    
transform
:
 
none
;

  
}
}

/* Simple CSS3 Fade-in Animation */
@
-webkit-keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
-moz-keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
.fadeIn {
	opacity: 0;
	-webkit-animation: fadeIn ease-in 1;
	-moz-animation: fadeIn ease-in 1;
	animation: fadeIn ease-in 1;
	-webkit-animation-fill-mode: forwards;
	-moz-animation-fill-mode: forwards;
	animation-fill-mode: forwards;
	-webkit-animation-duration: 1s;
	-moz-animation-duration: 1s;
	animation-duration: 1s;
}

.fadeIn.first {
	-webkit-animation-delay: 0.4s;
	-moz-animation-delay: 0.4s;
	animation-delay: 0.4s;
}

.fadeIn.second {
	-webkit-animation-delay: 0.6s;
	-moz-animation-delay: 0.6s;
	animation-delay: 0.6s;
}

.fadeIn.third {
	-webkit-animation-delay: 0.8s;
	-moz-animation-delay: 0.8s;
	animation-delay: 0.8s;
}

.fadeIn.fourth {
	-webkit-animation-delay: 1s;
	-moz-animation-delay: 1s;
	animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
	display: block;
	left: 0;
	bottom: -10px;
	width: 0;
	height: 2px;
	background-color: #56baed;
	content: "";
	transition: width 0.2s;
}

.underlineHover:hover {
	color: #0d0d0d;
}

.underlineHover:hover:after {
	width: 100%;
}

/* OTHERS */
*:focus {
	outline: none;
}

#icon {
	width: 60%;
}

* {
	box-sizing: border-box;
}

</style>
</head>
<body>

	<!-- Container -->
	<div id="container">

		<c:import url="../common/header.jsp" />

		<!-- Start Page Banner -->
		<div class="page-banner no-subtitle" style="height:100px;">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h2 style="color:black">로그인</h2>
					</div>
					<div class="col-md-6">
						<ul class="breadcrumbs">
							<li><a href="#">세모선</a></li>
							<li>로그인</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- End Page Banner -->
		<!-- 여기여기여기 -->
		<div class="hr5" style="margin-top: 45px;"></div>
		
		<div class="jsx-1458736361 login-box">
			<div class="jsx-1458736361 login-box-wrap">
				<div class="jsx-1458736361 title">
					<p class="jsx-1458736361">
						<span class="jsx-1458736361" style="margin-left:105px; ">대한민국 NO.1</span>강사평가 플랫폼
					</p>
					<h2 class="jsx-1458736361" style="margin-left:30px; color:black;" >
						세모선에 오신것을<br class="jsx-1458736361">진심으로 환영합니다.
					</h2>
				</div>
				<div class="wrapper fadeInDown">
					<div id="formContent" >
						<!-- Tabs Titles -->
						<h2 class="active">Sign In</h2>


						<!-- Login Form -->
						<form action="${pageContext.request.contextPath}/member/memberLogin.do" method="post">
							<input type="text" id="login" name="userId" class="fadeIn second" name="login"
								placeholder="아이디"> 
							<input type="password" id="password" name="pwd"
								class="fadeIn third" name="login" placeholder="비밀번호">
							<input type="submit" class="fadeIn fourth" value="로그인">
						</form>

					</div>
				</div>
			</div>
		</div>

	</div>
	</div>


	<div style="height: 200px; background-color: white;"></div>
	<c:import url="../common/footer.jsp" />


</body>
</html>