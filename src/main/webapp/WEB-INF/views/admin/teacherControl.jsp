<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!Doctype html>  
<html lang="ko">
<head>
	<title>세모선 관리자 - 강사관리</title>
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
	padding : 25px;
}
.col3 {
	width: 50%;
	padding : 25px;
}
.col4 {
	width: 11%;
	padding : 25px;
}
.col5 {
	width: 11%;
}
/* 표 반응형 크기 */
@media (min-width: 1200px) {
	#table {
		width: 70%;
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
	max-height: 500px;
    padding-top: 3px;
}
/* 상세 설정 */
.semoRow.td div, .review{
    font-size: 15px;
/*     padding: 20px 0; */
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
	height: 65px;
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
.mb-3 {
	padding: 5px;
}
.searchAlign {
	display: table-footer-group;
}
.searchAlign select, .searchArea input, .searchArea select{
	background-color: rgba(30, 144, 255, 0.05);
}
.searchAlign select, .searchAlign button{
	font-size: 12px;
}
.searchAlign option{
	font-size: 14px;
}

/* update */
.semoRow.update>div, .semoRow.update {
	height: 160px;
    vertical-align: middle;
}
.slide div:not(.update) {
	background: rgba(221, 221, 221, 0.2);
}
.update>.col1>div:last-child {
	margin: 0;
	padding: 5px;
	text-align-last: center;
}
textarea {
	resize: none;
	text-align-last: center;
}
.tslRow>div:not(:first-chil) {
    VERTICAL-ALIGN: baseline;
}
img {
    height: 75%;
/*     width: auto; */
}
#overflow {
	overflow: overlay;
}
</style>
</head>

<body>
	<c:import url="common/header.jsp"/>
    <div class="page-sections">
    
        <div id="start">
       	<div class="title"><h2><i class="glyphicon glyphicon-send"></i> 승인 대기 중인 강사</h2><span>아직 처리하지 않은 강사승인은 총 <b>${tslCount }</b>개입니다.</span></div>
       	
        <div class="section">
    	<div id="table">
            
            <div class="semoRow th">
            	 <div class="col1"><strong>강사명</strong></div>
            	 <div class="col2"><strong>소속</strong></div>
            	 <div class="col3"><strong>과목(강의명)</strong></div>
            	 <div class="col4"><strong>승인여부</strong></div>
            	 <div class="col5"><strong>승인하기</strong></div>
            </div>
            
    	<div id="overflow">
         <c:forEach items="${teacherTstatusList }" var="tsl">   
           <div class="semoRow td tslRow">
            	 <div class="col1">
            	 	<img src="${pageContext.request.contextPath }/resources/images/profileImage2/${tsl.profileName}" style="width:auto;"><br />
            	 	<div>${tsl.tName }</div>
            	 </div>
            	 <div class="col2">${tsl.company }</div>
            	 <div class="col3">${tsl.subject }</div>
            	 <div class="col4">${tsl.tStatus }</div>
            	 <div class="col5">
            	 	<div style="border: none;">
            	 	<button type="button" class="btn btn-success  btn-sm" onclick="tstatusY(this, ${tsl.tNo}, false, true);">승인</button>
            	 	<button type="button" class="btn btn-secondary  btn-sm" onclick="deleteT(this, ${tsl.tNo}, false);">삭제</button>
            	 	</div>
            	 </div>
            </div>
		</c:forEach>
       </div>
		
        </div>
        </div>
        </div>
        <hr/>
    
        <div id="installing">
       	<div class="title"><h2><i class="glyphicon glyphicon-list-alt"></i> 강사 검색하기</h2><span>승인된 강사(대기자 포함)는 총 <b>${totalCount }</b>명입니다.</span></div>
       	
        <div class="section">
    	<div id="table">
		  
		 <!-- 검색 -->
        <div class="input-group mb-3 searchAlign">
		<div class="input-group">
		  <div class="input-group-prepend">
		      <select class="custom-select" id="validationCustom04">
		        <option selected disabled value="">강사 순</option>
		        <option value="">강사(오름차순)</option>
		        <option value="">강사(내림차순)</option>
		      </select>
		  </div>
		  <div class="input-group-prepend">
		       <select class="custom-select" id="validationCustom04">
		        <option selected disabled value="">소속 순</option>
		        <option value="">소속(오름차순)</option>
		        <option value="">소속(내림차순)</option>
		      </select>
		  </div>
		  <div class="input-group-prepend">
		       <select class="custom-select" id="validationCustom04">
		        <option selected disabled value="">과목 순</option>
		        <option value="">과목(오름차순)</option>
		        <option value="">과목(내림차순)</option>
		      </select>
		  </div>
		       <select class="custom-select" id="validationCustom04">
		        <option selected disabled value="">승인 순</option>
		        <option value="">승인(등록)순</option>
		        <option value="">승인(보류)순</option>
		        <option value="">승인(반려)순</option>
		      </select>
		  <button class="btn btn-outline-secondary" type="reset" id="button-addon2">새로고침</button>
		</div>
		</div>

        <div class="input-group mb-3 searchArea">
        
		  <div class="input-group-prepend">
		      <select class="custom-select" id="validationCustom04" required>
		        <option selected value="">통합 검색</option>
		        <option value="">강사명</option>
		        <option value="">소속</option>
		        <option value="">과목(강의명)</option>
		      </select>
		  </div>
		  
		  <input type="text" class="form-control" placeholder="search" aria-label="Recipient's username" aria-describedby="button-addon2">
		  
		  <div class="input-group-append">
		    <button class="btn btn-primary" type="button" id="button-addon2">검색</button>
		  </div>
		</div>
		
		
		<!-- 테이블 -->
            <div class="semoRow th">
            	 <div class="col1"><strong>강사명</strong></div>
            	 <div class="col2"><strong>소속</strong></div>
            	 <div class="col3"><strong>과목(강의명)</strong></div>
            	 <div class="col4"><strong>승인여부</strong></div>
            	 <div class="col5"><strong>편집하기</strong></div>
            </div>
            
        <div id="overflow">
         <c:forEach items="${ teacherList }" var="tl">
         <div class="updateArea">
           <div class="semoRow td upView">
            	 <div class="col1">
            	 	<img src="${pageContext.request.contextPath }/resources/images/profileImage2/${tl.profileName}" style="width:auto;"><br />
            	 	<div>${tl.tName }</div>
            	 </div>
            	 <div class="col2">${tl.company }</div>
            	 <div class="col3">${tl.subject }</div>
            	 <div class="col4">${tl.tStatus eq 'Y'?'등록':'대기'}</div>
            	 <div class="col5">
            	 	<!-- .addClass('btn-outline-warning') .text('완료') -->
					<button type="button" class="btn btn-outline-warning btn-sm" onclick="updateT(this, false);">수정</button>
					<button type="button" class="btn btn-outline-warning btn-sm updateBtn" onclick="updateT(this, true, ${tl.tNo});">완료</button>
					<button type="button" class="btn btn-outline-danger btn-sm" onclick="deleteT(this, ${tl.tNo}, true);">삭제</button>
            	 </div>
            </div>
            
            <div class="slide updateBtn">
            <div class="semoRow td review open">
            	 <i class="glyphicon glyphicon-chevron-right"></i><strong>수정 하기</strong>
            </div>
            <div class="semoRow td update">
            	 <div class="col1">
            	 	<div>
            	 		<img src="${pageContext.request.contextPath }/resources/images/profileImage2/${tl.profileName}" onclick="$(this).next().click();" style="width:50%;">
            	 		<input type="file" name="upFile" style="display:none;" onchange="LoadImg(this);" multiple="multiple"/>
            	 	</div>
            	 	<div><input class="form-control" type="text" name="tName" value="${tl.tName }" /></div>
            	 </div>
            	 <div class="col2"><textarea class="form-control" rows="4" name="company">${ tl.company }</textarea></div>
            	 <div class="col3"><textarea class="form-control" rows="4" name="subject">${ tl.subject }</textarea></div>
            	 <div class="col4">${tl.tStatus eq 'Y'?'등록':'대기'}</div>
            	 <div class="col5">
					<button type="button" class="btn btn-outline-success btn-sm" onclick="tstatusY(this, ${tl.tNo}, true, true);">등록</button><br />
					<button type="button" class="btn btn-outline-secondary btn-sm" onclick="tstatusY(this, ${tl.tNo}, true, false);">대기</button><br />
            	 </div>
            </div>
        </div>
         </div>
        </c:forEach>
       </div>
            <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script>
			<script>
		  		var JJ = $.noConflict(); 
		  	</script>  
		  	
        <script>
		JJ('nav li:gt(0)').removeClass('current');
		JJ('nav li:eq(2)').addClass('current');
		
			function updateT(obj, isAjax, tNo) {
					if(!isAjax) {
						$(obj).hide();
						$(obj).next().show();
						$(obj).parents('.semoRow').next().show();
					} else {
						$(obj).hide();
						$(obj).prev().show();
						$(obj).parents('.semoRow').next().hide();
						
						var names = $(obj).parents('.updateArea');
						$.ajax({ 
							url : "${pageContext.request.contextPath}/updateT.am",
							data : { tNo : tNo , tName : names.find('[name=tName]').val() , profileName : names.find('[name=profileName]').val() , company : names.find('[name=company]').val() , subject : names.find('[name=subject]').val() },
							dataType: "json",
							success : function(data){
								if(data>0){
									$(obj).parents('.updateArea').find('.upView .col1 div').text(names.find('[name=tname]').val());
									$(obj).parents('.updateArea').find('.upView .col2').text(names.find('[name=company]').val());
									$(obj).parents('.updateArea').find('.upView .col3').text(names.find('[name=subject]').val());
									
								}
							}, error : function(data) {
								console.log(data);
								console.log("실패!");
							}
						});
					}
					
			}
	        function LoadImg(value) {
			    if (value.files && value.files[0]) {
			        var reader = new FileReader();
			        reader.onload = function(e) {
			            JJ(value).prev().attr('src', e.target.result);
			            JJ(value).parents('.updateArea').find('.upView .col1 img').attr('src', e.target.result);
			        }
			        reader.readAsDataURL(value.files[0]);
			    }
			}
	        JJ(function() {
				JJ('.updateBtn').each(function() {
					JJ(this).hide();
				});
			});
		</script>
		<script type="text/javascript">
			function tstatusY(Btn, tNo, isUpdateView, isUpdateY) {
				$.ajax({ 
					url : "${pageContext.request.contextPath}/tstatusY.am",
					data : { tNo : tNo , isUpdateY : isUpdateY},
					dataType: "json",
					success : function(data){
						if(data>0){
							if (isUpdateView && isUpdateY) {
								$(Btn).parent().prev().text('등록');
								$(Btn).parents('.updateArea').find('.upView .col4').text('등록');
							} else if (isUpdateView && !isUpdateY) {
								$(Btn).parent().prev().text('대기');
								$(Btn).parents('.updateArea').find('.upView .col4').text('대기');
							} else {
								$(Btn).parents('.semoRow').remove();
							}
						}
					}, error : function(data) {
						console.log(data);
						console.log("실패!");
					}
				});
			}
			function deleteT(Btn, tNo, isUpdateView) {
				if(confirm('정말 삭제하시겠습니까?')){
					$.ajax({ 
						url : "${pageContext.request.contextPath}/deleteT.am",
						data : { tNo : tNo },
						dataType: "json",
						success : function(data){
							if(data>0){
								if (isUpdateView) {
									$(Btn).parents('.updateArea').remove();
								} else {
									$(Btn).parents('.semoRow').remove();
								}
							}
						}, error : function(data) {
							console.log(data);
							console.log("실패!");
						}
					});
				}
			}

		</script>
        </div>
        </div>
        </div>
        <hr/>
        
    </div>

	<c:import url="common/footer.jsp"/>
	
</body>
</html>