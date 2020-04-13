<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!Doctype html>  
<html lang="ko">
<head>
	<title>Venue - Documentation</title>
	<c:import url="common/util.jsp"/>
<style type="text/css">
.title {
    font-size: small;
    display: inline-flex;
    align-items: center;
}
/* 표 크기 전체 설정 */
.section {
	text-align: -webkit-center;
}
.semoRow.th div{
	display: inline-block;
    padding: 20px 0;
    text-align: center;
    border: 1px solid #ddd;
    margin: -2.5px;
    margin-bottom: 2px;
    color: #2F4255;
    font: menu;
}
.col1 {
	width: 15%;
}
.col2 {
	width: 12.5%;
}
.col3 {
	width: 50%;
}
.col4 {
	width: 11%;
}
.col5 {
	width: 11%;
}
.col6 {
	width: 85%;
    text-align-last: start;
}
/* 표 반응형 크기 */
@media (min-width: 1200px) {
	#table {
		width: 85%;
	}
}
@media (max-width: 1200px) {
	#table {
		width: 100%;
	}
}
@media (max-width: 600px) {
	.title, #table {
		width: 550px;
	}
}

#table {    
	max-height: 700px;
    padding-top: 3px;
    overflow: auto;
}
/* 상세 설정 */
.semoRow.td div, .review{
    font-size: 15px;
    padding: 20px 0;
    text-align: center;
    border: 1px solid #ddd;
    margin: -2.5px;
    margin-bottom: 2px;
	contain: content;
}
.semoRow.td div {
	display: inline-block;
}
.semoRow.td>div, .semoRow.td {
	height: 110px;
    vertical-align: middle;
}
.td div.col1 div {
	padding: 0;
    vertical-align: middle;
    border: 0;
    margin-left: 5px;
}

/* 리뷰 자세히 보기 */
.review {
	margin: -2.5px 4px 1px 4px;
	padding: 10px 0 !important;
}
.open ,.move{
	height: 40px !important;
}
.move {
	border: 0;
	height: 54px !important;
}

/* search */
.semoRow.td.search>div, .semoRow.td.search {
	height: 60px;
    vertical-align: middle;
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

 .rating.jsx-2318878368>.stars { 
 	display: inline-block; 
 	margin-left: 4px; 
    padding: 0px;
    height: 20px;
    width: 100px;

 	
 } 

 .star.jsx-237548703 { 
 	float: left; 
 	width: 12px; 
 	height: 12px; 
 	margin-right: 4px; 
 	background-size: cover; 
 	overflow: hidden; 
 } 
img {
	width: 30%;
}
.rating {
height: 30px;padding: 0px;
}
.wow div {
	border: 0px !important;
}
</style>
</head>

<body>
	<c:import url="common/header.jsp"/>
    <div class="page-sections">
    
        <div id="start">
       	<div class="title"><h2><i class="glyphicon glyphicon-send"></i> 최근 신고된 리뷰</h2><span>아직 처리하지 않은 리뷰는 총 <b>${totalCount }</b>개입니다.</span></div>
        <div class="section">
    	<div id="table">
            
            <div class="semoRow th">
            	 <div class="col1"><strong>신고한 사람</strong></div>
            	 <div class="col2"><strong>신고일</strong></div>
            	 <div class="col3"><strong>신고 내용</strong></div>
            	 <div class="col4"><strong>승인여부</strong></div>
            	 <div class="col5"><strong>승인하기</strong></div>
            </div>
            
           <c:forEach items="${reportList }" var="w"> 
           <div class="semoRow td">
            	 <div class="col1">
            	 	<div><img src="${pageContext.request.contextPath }/resources/images/profileImage/${w.profileName}" width="60%"></div>
            	 	<div>${w.nickName }</div>
            	 </div>
            	 <div class="col2">${w.ref_date }</div>
            	 <div class="col3">${w.ref_content }</div>
            	 <div class="col4">'승인대기'</div>
            	 <div class="col5">
            	 	<button type="button" class="btn btn-danger" onclick="statusY(${w.rno}, true);">승인</button>
            	 	<button type="button" class="btn btn-secondary" onclick="statusY(${w.rno}, false);">반려</button>
            	 </div>
            </div>
            <div class="semoRow td review open" onclick="openReview(this, ${w.rno});">
            	 <i class="glyphicon glyphicon-chevron-right"></i><strong>리뷰 보기</strong>
            </div>
            </c:forEach>
          
        </div>
        </div>
        </div>
    </div>
	<c:import url="common/footer.jsp"/>
	<script type="text/javascript">
		function statusY(rno, isY) {
			location.href = "${pageContext.request.contextPath }/review/statusY.am?rno="+rno+"&isY="+isY;
		}
		
		function openReview(BtnDiv, rno) {
			var isCurrent = $(BtnDiv).next().hasClass('wowCurrent');
				$('.wow+div').remove();
				$('.wow').remove();
				
			if(isCurrent) return;
			
			$.ajax({
				url : "${pageContext.request.contextPath }/review/selectOneReview.do",
				data : { rno : rno },
				dataType : "json",
				success : function(selectOne) {
					console.log(selectOne);
				var slideDiv = '       <div class="semoRow td review detail wow" style="height: 200px; ">                                                                                  ' +
			    '          <div class="col1" style="height: 200px;">                                                                                                        ' +
			    '        	 	<div><img src="/semosun/resources/images/profileImage/'+selectOne.profileName+'" width="60%"></div>               ' +
			    '        	 	<div>'+selectOne.userNo+' </div><br />                                                                                                       ' +
			    '        	 	<div>'+selectOne.nickName+' </div><br />                                                                                                     ' +
			    '        	 	<div>'+new Date(selectOne.rdate).format('yyyy-MM-dd a/p hh:mm:ss')+' </div><br />                                                                                                        ' +
			    '        	 	<div>';
			    if(selectOne.rstatus === 'W'){ slideDiv += '승인대기' } else if(selectOne.rstatus === 'R'){ slideDiv += '신고처리완료' } else { slideDiv += "신고해당없음" }
			    slideDiv += '</div>' +
			    '        	 </div>                                                                                                                                         ' +
			    '          <div class="col6" style="height: 200px;">                                                                                                        ' +
			    '          		<div style="width: 100%; text-align-last: justify; padding: 0px;">                                                                          ' +
			    '        	 	<div style="padding-left: 10px;"><h4>'+selectOne.rtitle+'</h4></div>                                                                         ' +
			    '        	 	 <div class="jsx-2318878368 rating" style="height: 30px; padding: 0px; ">                                                                   ' +
			 	'					<span class="jsx-2318878368 a">'+(selectOne.score6+selectOne.score7+selectOne.score8+selectOne.score9+selectOne.score10)/5+'</span>      ' +
			 	'					<div class="jsx-237548703 stars">                                                                                                       ' +
			 	'					</div>                                                                                                                                  ' +
			    '                 </div>                                                                                                                                    ' +
			    '                 </div>                                                                                                                                    ' +
			    '                 <br />                                                                                                                                    ' +
			    '        <div style="display: inline-block;padding: unset; padding-left: 10px;">                                                                            ' +
			 	'                <div style="height: auto; padding: unset;"><span class="jsx-3001902121 box primary">장점</span></div>                                      ' +
			 	'                    	<div style=" padding: unset;"  ><p style="margin-bottom: 0px;">'+selectOne.gcontent+'</p></div>                                      ' +
			 	'              </div>                                                                                                                                       ' +
			    '        <br /><div style="display: inline-block;padding: unset; padding-left: 10px;">                                                                      ' +
			 	'                <div style="height: auto; padding: unset;"><span class="jsx-3001902121 box point">단점</span></div>                                        ' +
			 	'                    	<div style=" padding: 5px;"  ><p style="margin-bottom: 0px;">'+selectOne.bcontent+'</p></div>                                        ' +
			 	'              </div>                                                                                                                                       ' +
			    '        	 </div>                                                                                                                                         ' +
			    '       </div>                                                                                                                                              ' +
				'	<div class="semoRow td review move"><button type="button" class="btn btn-secondary" onclick="location.href=\'/semosun/review/selectListTeacherReview.do?tNo='+selectOne.tNo+'\'">페이지 이동하기</button></div>';
				$(BtnDiv).after(slideDiv);

				// 별점
				$('.a').each(function() {
					for (var i = 0; i < 5; i++) {
						if(i < Math.round($(this).text())) $(this).next().append('<div class="jsx-237548703 star star-2" style=" padding: 0px; height: 20px; width: 20px;"></div>');
						else $(this).next('').append('<div class="jsx-237548703 star star-0" style=" padding: 0px; height: 20px; width: 20px;"></div>');
					}
				});
				$('.wow').addClass('wowCurrent');
				

				}, error : function(data) {
					console.log("ajax 실패!");
				}
				
			});
		}
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






















