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

<c:import url="common/util.jsp" />
<style>
.navbar-brand {
    height: 70px !important;

}

/*적페청산 신고게시판 css*/
.banner.jsx-2849469776 a.jsx-2849469776 {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	padding-top: 28px;
}

.banner.jsx-2849469776 {
	position: relative;
	/* width: 1200px; */
	min-height: 120px;
	text-align: center;
	background-image:
		url(https://d1ta1myjmiqbpz.cloudfront.net/static/images/level_zero/mobile/w360_banner_lv0_report01@2x.jpg?w=720&f=webp?f=webp);
	background-size: cover;
	margin: 32px auto 0px;
	background-repeat: no-repeat;
	background-position: center center;
	overflow: hidden;
}



/*-적페청산 끝-*/
ol, ul {
	list-style: none;
}
h3{
text-align: center !important;

}

.semo {
	display: flex;
}
/*리뷰 전체 공간*/
.hide-on-desktop {
    display: none;
}


/* 미디어 태그 */
@media ( min-width : 1200px) {
	.mainReview.container {
		width: 1300px;
	}
	.banner.jsx-2849469776 {
		width: 1250px;
	}
}
@media ( max-width : 1199px) {
	.content.jsx-2160661806>.banner {
		margin-top: 24px;
		width: 100%;
	}
	.jsx-2849469776 {
		
	}
	.semo1 {
		width: 100% ;
		border-width: 0px ;
		border-style: initial ;
		border-color: initial ;
		border-image: initial ;
	}

	h3.jsx-4179964491 {
		padding: 0px 16px !important;
	}

	.live-review-box.jsx-4179964491>.btn-more {
		text-align: center;
	}

	.hide-on-desktop {
		display: block;
	}
}
@media ( max-width : 900px) {
	.mainReview.container {
		margin: 0;
		padding: 0;
	}
	.mainReview.col-md-8, .mainReview.col-md-4 {
		width: 100%;
	}
	
}
/* 미디어 태그 끝 */


.semo1 {
	/* width: 712px; */
	background-color: rgb(255, 255, 255);
	border-width: 1px;
	border-style: solid;
	border-color: rgb(223, 223, 223);
	border-image: initial;
	overflow: hidden;
}

.semo2 {
	height: 500px;
	overflow-y: scroll;
	padding: 0px 16px 0px 24px;
}

.semo3 {
	height: 72px;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	border-bottom: 1px solid rgb(223, 223, 223);
}

.semo4 {
	/*내용 스타일*/
	font-size: 15px;
	color: rgb(102, 102, 102);
	max-width: 400px;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
}

.semo5 {
	/* 태그스타일 */
	color: rgb(102, 102, 102);
	font-size: 10px;
	margin-right: 8px;
}

.semoimg {
	/*리뷰 이미지*/
	display: flex;
	min-width: 48px;
	height: 48px;
	line-height: 48px;
	background-color: rgb(236, 236, 236);
	margin-right: 12px;
	background-size: cover;
	border-radius: 12px;
	background-repeat: no-repeat;
	background-position: center center;
}

.semocheck {
	/* 승인대기 승인완료 체크부분 */
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	font-size: 14px;
	font-weight: 700;
	max-width: 48px;
	width: 100%;
	height: 48px;
	border-radius: 50% 50% 50% 0px;
	margin-left: auto;
}

.stay {
	font-size: 12px;
	line-height: 14px;
	background-color: rgb(102, 102, 102);
	color: rgb(255, 255, 255);
	text-align: center;
	padding: 0px 10px;
}

.complete {
	color: rgb(102, 102, 102);
	background-color: rgba(102, 102, 102, 0.1);
}

.ban {
	background-color: rgb(255, 51, 102);
	color: rgb(255, 255, 255);
}	
/* div */
.btn-more {
	text-align: center;
}	
/* btn */
.jsx-334325833 {
    font-size: small;
    width: 20%;
    height: 33px;
    background-color: white;
    border: 1px solid rgb(220, 220, 220);
    border-radius: 25px;
    margin-bottom: 15px;
}			
.jsx-334325833:hover {
    background-color: rgba(220, 220, 220, 0.3);
}			
/*지금 뜨는 리뷰 */
.division-line {
	display: inline-block;
	width: 1px;
	height: 10px;
	background-color: #dfdfdf;
	margin: 0 10px;
}

.box.jsx-3001902121 {
	display: block;
	height: 24px;
	line-height: 24px;
	font-size: 12px;
	font-weight: normal;
	padding: 0px 16px;
	border-radius: 16px;
}

.badges-box.jsx-3001902121 {
	display: flex;
}

.badges-box.jsx-3001902121 {
	display: flex;
}

button.jsx-693606843 {
	display: block;
	height: 42px;
	font-size: 14px;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(223, 223, 223);
	border-image: initial;
	border-radius: 21px;
	padding: 0px 20px;
	aline
	left;
}

.buttons.jsx-2318878368>.button--voteup {
	align-self: flex-end;
}

.hot-review-box.jsx-1976876495 {
	display: flex;
	flex-direction: column;
	/* width: 474px; */
	background-color: rgb(255, 255, 255);
	padding: 24px;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(223, 223, 223);
	border-image: initial;
	height : 500px;
	overflow: auto;
}

.title.jsx-1976876495 {
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
	align-items: flex-end;
}

h3.jsx-1976876495 {
	font-size: 20px;
}

.btn-box.jsx-1976876495 {
	display: flex;
}

.btn-box.jsx-1976876495 .prev.jsx-1976876495, .btn-box.jsx-1976876495 .next.jsx-1976876495
	{
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 24px;
	height: 24px;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(223, 223, 223);
	border-image: initial;
}

svg[Attributes Style] {
	width: 16;
	height: 16;
	fill: none;
	stroke: rgb(143, 143, 143);
	stroke-width: 2;
	stroke-linecap: round;
	stroke-linejoin: round;
}

.alt-text {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

.btn-box.jsx-1976876495 .prev.jsx-1976876495, .btn-box.jsx-1976876495 .next.jsx-1976876495
	{
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 24px;
	height: 24px;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(223, 223, 223);
	border-image: initial;
}

a.jsx-1976876495 {
	display: flex;
	flex-direction: column;
	flex: 1 1 auto;
}

.header.jsx-2548577942 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	padding: 21px 0px 16px;
	border-bottom: 1px solid rgb(236, 236, 236);
}

.avatar.jsx-1076345726 {
	position: relative;
	width: 64px;
	height: 64px;
	margin: 0px auto;
}

.name-box.jsx-2548577942 {
	display: flex;
	flex-direction: column;
	margin-left: 16px;
}

h4.jsx-2548577942 {
	line-height: 27px;
}

.tutor-info.jsx-2548577942 {
	line-height: 20px;
	margin-top: 2px;
	font-size: 14px;
}

.tutor-info.jsx-2548577942 .subject.jsx-2548577942 {
	color: rgb(63, 96, 204);
}

.content.jsx-1976876495 {
	display: flex;
	flex-direction: column;
	flex: 1 1 0%;
}

.rating.jsx-2318878368 {
	line-height: 42px;
	font-size: 28px;
	font-weight: 700;
}

.rating.jsx-2318878368>.stars {
	display: inline-block;
	margin-left: 4px;
}

.star-2.jsx-237548703 {
	background-image:
		url('https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_search/icon_card_star01_normal01_on.png');
}

.star-0.jsx-237548703 {
	background-image:
		url('https://d1ta1myjmiqbpz.cloudfront.net/static/images/teacher_search/icon_card_star01_normal01_off.png');
}

.box.primary.jsx-3001902121 {
	background-color: rgb(93, 126, 233);
	color: rgb(255, 255, 255);
}

.box.point.jsx-3001902121 {
	background-color: rgb(255, 51, 102);
	color: rgb(255, 255, 255);
}

.rating.jsx-2318878368>.stars {
	display: inline-block;
	margin-left: 4px;
}

.star.jsx-237548703 {
	float: left;
	width: 12px;
	height: 12px;
	margin-right: 4px;
	background-size: cover;
	overflow: hidden;
}

.circle.jsx-1076345726 {
	position: relative;
	clear: both;
	width: 100%;
	height: 100%;
	background-size: cover;
	background-color: rgb(238, 239, 244);
	border-radius: 50%;
	overflow: hidden;
	background-position: center center;
	background-repeat: no-repeat;
}
::-webkit-scrollbar {width: 2px;   }
::-webkit-scrollbar-size { height: 1px !important;}
::-webkit-scrollbar-thumb {background: rgba(99, 59, 241); } /* 실질적 스크롤 바 */
/*지금뜨는리뷰 css 끝*/


/*검색창 css*/
.bar-layout.jsx-2460799870 {
	padding-top: 32px !important;
	display: flex;
	flex-direction: column;
	-webkit-box-align: center;
	align-items: center;
	padding-bottom: 32px !important;
}

.search-box.jsx-2460799870 {
	display: flex;
	width: 928px;
	height: 80px;
	background-image: linear-gradient(259deg, rgb(99, 59, 241),
		rgb(50, 91, 222));
	background-origin: border-box;
	border-radius: 40px;
}

.search-bar.jsx-2460799870 {
	width: 920px;
	height: 72px;
	background-color: rgb(255, 255, 255);
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	cursor: pointer;
	border-radius: 36px;
	margin: auto;
	padding: 0px 32px;
}

.typing-word.jsx-2460799870 {
	height: 30px;
	line-height: 30px;
	font-size: 22px;
	white-space: nowrap;
	padding-right: 4px;
	overflow: hidden;
	border-right: 2px solid orange;
	animation: 0.75s step-end 0s infinite normal none running
		cursor-jsx-2460799870;
}

svg[Attributes Style] {
	width: 32;
	height: 32;
	fill: none;
	stroke: rgb(63, 96, 204);
	stroke-width: 2;
	stroke-linecap: round;
	stroke-linejoin: round;
}

.bar-layout.jsx-2460799870>p.jsx-2460799870 {
	font-size: 18px;
	margin-bottom: 20px;
}

.bar-layout.jsx-2460799870>p.jsx-2460799870>span.jsx-2460799870 {
	color: rgb(63, 96, 204);
}

@media ( max-width : 1199px) {
	.bar-layout.jsx-2460799870 {
		padding: 0px 20px;
	}
}

@media ( max-width : 1199px) {
	.bar-layout.jsx-2460799870>p.jsx-2460799870 {
		margin-bottom: 16px;
	}
}

@media ( max-width : 1199px) {
	.search-box.jsx-2460799870 {
		width: 100%;
		height: 60px;
	}
}

@media ( max-width : 1199px) {
	.search-bar.jsx-2460799870 {
		width: calc(100% - 8px);
		height: 52px;
		padding: 0px 16px;
	}
}

@media ( max-width : 1199px) {
	.typing-word.jsx-2460799870 {
		font-size: 16px;
		height: auto;
		line-height: normal;
	}
}

@media ( max-width : 1199px) {
	.typing-word.jsx-2460799870 {
		font-size: 16px;
		height: auto;
		line-height: normal;
	}
}
/* 타이핑 css*/
.typing-txt {
	display: none;
}

.typeing-txt ul {
	list-style: none;
}

.typing {
	font-size: 18px;
	display: inline-block;
	animation-name: cursor;
	animation-duration: 0.3s;
	animation-iteration-count: infinite;
}

@keyframes cursor { 
0%{border-right: 1px solid #fff}50%{border-right:1px solid #000}
100%{
border-right:1px solid #fff
}}
/*선생님 이미지 사진 크기*/
.lig {
	width: 422px;
	height: 278.99px;
}
</style>

<!-- Basic -->
<title>default | Home</title>

<!-- Define Charset -->
<meta charset="utf-8">

<link rel=" shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/icons/semosun1.png">
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/icons/semosun1.png">
</head>

<body>

		<%@ include file="common/header.jsp"%>



		<%@ include file="common/footer.jsp"%>
		
</body>
</html>