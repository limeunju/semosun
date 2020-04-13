<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html>
<head>
<c:import url="../common/util.jsp" />
<!-- headerCss CSS Styles  -->
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/teacher.css" type="text/css"  media="screen" /> --%>
<!-- <link rel=" shortcut icon" -->
<%-- 	href="${pageContext.request.contextPath}/resources/images/icons/semosun1.png"> --%>
<%-- <link rel="icon" href="${pageContext.request.contextPath}/resources/images/icons/semosun1.png"> --%>
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<!-- Basic -->
<style>
<style>
.navbar-brand {
    height: 70px !important;

}

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

ol, ul {
	list-style: none;
}
h3{
text-align: center !important;

}

.semo {
	display: flex;
}

.hide-on-desktop {
    display: none;
}

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
.portfolio-thumb img {
	width: 422px;
	height: 278.99px;
}
</style>

</style>
<title>강사리뷰</title>

<!-- Define Charset -->
<meta charset="utf-8">
<style>
	.countNum {
	    font-weight : 600;
	    color: blue;
	}
	
	#content {
		background-color: #fff;
	}
</style>
</head>
<body>

		<%@ include file="../common/header.jsp"%>
		<div class="page-banner no-subtitle">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <h2>강사 리뷰</h2>
                    </div>
                    <div class="col-md-6">
                     <h2>  지금 이순간에도 <span class="countNum">${ teacherCount }</span> 분의 강사 리뷰 <span class="countNum">${ reviewCount }</span>건이 작성되고 있습니다. </h2>
                    </div>
                    <div class="col-md-3">
                    </div>
                </div>
		                <div onclick="toggleBtn(this);" style="float: right;">
		                <label for="#toggleBtn"><h4>그래프로 비교하여 찾아보세요!&nbsp;&nbsp;</h4></label>
		                <input id="toggleBtn" type="checkbox" data-toggle="toggle">
		                </div>
            </div>
        </div>
        
                            
		<section id="content"> <!-- 시멘틱 웹 : HTML5 -->
            <div class="container">
                <div class="row portfolio-page">
                
                   <!-- list -->
                   <div id="portfolio" class="portfolio-3" style="position: relative; height: 986.109px;">
					<c:forEach items="${list }" var="teacher">
	                        <!-- Start Portfolio Item -->
	                        <div class="portfolio-item col-md-4" style="position: absolute; left: 0px; top: 0px;">
	                            <div class="portfolio-border">
	                                <!-- Start Portfolio Item Thumb -->
	                                <div class="portfolio-thumb">
	                                    <a href="${pageContext.request.contextPath }/review/selectListTeacherReview.do?tNo=${teacher.tNo}">
	                                        <img alt="" src="${pageContext.request.contextPath }/resources/images/profileImage2/${teacher.profileName}">
	                                    </a>
	                                </div>
	                                <!-- End Portfolio Item Thumb -->
	                                <!-- Start Portfolio Item Details -->
	                                <div class="portfolio-details">
	                                    <a href="${pageContext.request.contextPath }/review/selectListTeacherReview.do?tNo=${teacher.tNo}">
	                                        <h4>${ teacher.tName}</h4>
	                                        <div>${ teacher.subject}</div>
	                                        <div> in ${ teacher.company}</div>
	                                    </a>
	                                </div>
	                                <!-- End Portfolio Item Details -->
	                            </div>
	                        </div>
                        <!-- End Portfolio Item -->
					</c:forEach>
                   </div>
                   
                   <!-- graph -->
                   <div id="portfolio-graph" class="portfolio-3" style="position: relative; height: 986.109px;">
						<figure class="highcharts-figure">
						    <div id="container"></div>
						</figure>
						<div></div>
						<c:forEach items="${list }" var="teacher">
	                        <!-- Start Portfolio Item -->
	                        <div class="portfolio-item col-md-4" style="position: absolute; left: 0px; top: -100px; width:200px; height: 200px;">
	                            <div class="portfolio-border">
	                                <!-- Start Portfolio Item Thumb -->
	                                <div class="portfolio-thumb">
	                                    <a href="${pageContext.request.contextPath }/review/selectListTeacherReview.do?tNo=${teacher.tNo}">
	                                        <img alt="" src="${pageContext.request.contextPath }/resources/images/profileImage2/${teacher.profileName}">
	                                    </a>
	                                </div>
	                                <!-- End Portfolio Item Thumb -->
	                                <!-- Start Portfolio Item Details -->
	                                <div class="portfolio-details">
	                                    <a href="${pageContext.request.contextPath }/review/selectListTeacherReview.do?tNo=${teacher.tNo}">
	                                        <h4>${ teacher.tName}</h4>
	                                        <span>${ teacher.subject}</span>
	                                        <span> in ${ teacher.company}</span>
	                                    </a>
	                                </div>
	                                <!-- End Portfolio Item Details -->
	                            </div>
	                        </div>
                        <!-- End Portfolio Item -->
					</c:forEach>
                   </div>
                </div>
                <div class="text-center">
	                <c:out value="${ pageBar }" escapeXml="false"/>
                </div>
            </div>
		</section>
		
		
		<%@ include file="../common/footer.jsp"%>
		<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/series-label.js"></script>
		<script src="https://code.highcharts.com/modules/exporting.js"></script>
		<script src="https://code.highcharts.com/modules/export-data.js"></script>
		<script src="https://code.highcharts.com/modules/accessibility.js"></script>
		
		<script type="text/javascript">
			$('#portfolio-graph').toggle();
			function toggleBtn(obj) {
				$('#portfolio').toggle('slow');
				$('#portfolio-graph').toggle('slow');
			}
			
			Highcharts.chart('container', {

			    title: {
			        text: '나에게 맞는 선생님을 비교해 보세요!'
			    },

			    subtitle: {
			        text: '클릭하면 해당 페이지로 이동합니다.'
			    },

			    yAxis: {
			        title: {
			            text: '스타일의 정도'
			        }
			    },

			    legend: {
			        layout: 'horizontal',
			        align: 'right',
			        verticalAlign: 'bottom'
			    },
			    plotOptions: {
			        series: {
			            label: {
			                connectorAllowed: true
			            },
			            pointStart: 0
			        }
			    },

			    series: [{
		<c:if test="${empty member}">
			        name: '당신의 강의 스타일 기준',
		</c:if>
		<c:if test="${!empty member}">
			        name: '${member.nickName}',
		</c:if>
			        lineWidth: 20,
			        opacity : 1,
			        data: [${member.score1}, ${member.score2}, ${member.score3}, ${member.score4}, ${member.score5}]
			    }
			    
		<c:forEach items="${list }" var="teacher">
				, {
			        name: '${teacher.tName}'+'${teacher.avg}',
			        lineWidth: 20,
			        opacity : 0.4,
			        data: [${teacher.score1}, ${teacher.score2}, ${teacher.score3}, ${teacher.score4}, ${teacher.score5}]
			    }
		</c:forEach>
			    ],

			    responsive: {
			        rules: [{
			            condition: {
			                maxWidth: 500
			            },
			            chartOptions: {
			                legend: {
			                    layout: 'horizontal',
			                    align: 'left',
			                    verticalAlign: 'bottom'
			                }
			            }
			        }]
			    }

			});
			$('#highcharts-screen-reader-region-after-0').prev().removeAttr('style').attr('style', 'position: relative; overflow: hidden; width: 1170px; height: 700px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);');
			var Arr = ['수업 난이도', '유머', '과제의 양', '교재의 양', '발음, 발성, 속도'];
			$('.highcharts-axis-labels.highcharts-xaxis-labels text').each(function(i) {
				if(i%4 == 0) $(this).text(Arr[i/4]).css({ 'font-size': 'large', 'font-weight': '600' });
				else $(this).text('');
			});
			$('#portfolio-graph>div').each(function() { $(this).hide(); });
			$('.highcharts-tracker-line').each(function(i) { $(this).append($('<input>').attr('type','hidden').val(i)); });
			$('.highcharts-tracker-line').mouseover(function() {
				$('#portfolio-graph>div').each(function() { $(this).hide(); });
				$('#portfolio-graph>div').eq($(this).find('input').val()).show();
			});
			$('.highcharts-tracker-line').click(function() {
				if($(this).find('input').val() == 0) return; 
				location.href=$('#portfolio-graph>div').eq($(this).find('input').val()).find('a').attr('href');
			});
		</script>
		
</body>
</html>