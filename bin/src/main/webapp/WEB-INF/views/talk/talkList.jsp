<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="ko">
  <head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Rokkitt" rel="stylesheet"> 
	
	<!-- Basic -->
	<title>세모선 숲</title>

	<!-- Define Charset -->
	<meta charset="utf-8">
	<c:import url="../common/util.jsp"/>
	

	<style>
		.testimonial_photo{
			width: 45px;
		  	height: 45px;
	    }
	        
	    .Popup .Inner{
			display:none;
		}
		
		.updateBtn{
			border-collapse: collapse;
			border:0;
			border-radius: 5px;
			padding:5px;
			margin:5px;
			display: inline-block;
			border:1px solid #CCC;
			background-color: transparent;
			cursor: pointer;
		}
		
		.updateConfirm{
			border-collapse: collapse;
			border:0;
			border-radius: 5px;
			padding:5px;
			margin:5px;
			display: inline-block;
			border:1px solid #CCC;
			background-color: transparent;
			cursor: pointer;
		}
		
		.deleteBtn{
			border-collapse: collapse;
			border:0;
			border-radius: 5px;
			padding:5px;
			margin:5px;
			display: inline-block;
			border:1px solid #CCC;
			background-color: transparent;
			cursor: pointer;
		}
	        
		.btn-md {
			background : #ed7d31ff !important;
		}
	        
		#contentt {
			height: 100px;
			resize: none;
		}
			
		.box {
		    position:absolute;
		    top:50%; left:50%;
		    transform: translate(-50%, -50%);
		}
	
		.Popup {
	      	float:right;
	      	margin:5px;
		}
		
		.Popup .Inner{
			display:none;
		}
		
		.Inner{
			width: 60px;
		}
			
				@import url('https://fonts.googleapis.com/icon?family=Material+Icons');
	
		body {
			background: #E9EAED;
			font-family: helvetica, arial, sans-serif;
			color: #141823;
			font-size: 14px;
			line-height: 1.38;
		}
		h1, h2, h3, h4, h5, h6 {
			font-size: 13px;
		    color: #141823;
		    margin: 0;
		    padding: 0;
		}
		
		a {
			color: #3b5998;
			cursor: pointer;
			text-decoration: none;
		}
	
		hr {
	  		line-height: 1px;
	  		height: 1px;
			color: rgba(0, 0, 0, .1);
			background: rgba(0, 0, 0, .1);
			border: 0;
		}
	
		img { 
			width: 100%; 
			}
	
		.facebook-box {
			width: 500px;
			margin: 30px auto;
			background: #fff;
			border: 1px solid;
			border-color: #e5e6e9 #dfe0e4 #d0d1d5;
			border-radius: 3px;
		}
	
		.facebook-box .right-icon {
			float: right;
			display: inline;
			width: 24px;
			height: 24px;
			color: #eee;
			cursor: pointer;
		}
	
		.facebook-box .content {
			padding: 12px;
		}
	
		.facebook-box .row.header {
			max-height: 40px;
			margin-bottom: 11px;
		}
	
		.facebook-box .header .avatar {
			float: left;
			width: 40px;
			height: 40px;
			margin-right: 8px;
		}
	
		.facebook-box .header .name {
			width: calc(100% - 40px - 8px);
		}
	
		.facebook-box .header .name h5 {
			margin-bottom: 2px;
			font-weight: 700;
			font-size: 14px;
		}
	
		.facebook-box .header .name span {
			color: #9197a3;
			font-size: 12px;
		}
	
		.facebook-box .thumbnail {
			margin-top: 10px;
			margin-left: -1px;
			box-shadoww: 0 1px 1px rgba(0, 0, 0, .05);
		}
	
		.facebook-box .footer {
			border-top: 1px solid #e1e2e3;
			margin: 0;
			padding: 9px 12px 7px 12px;
			font-size: 12px;
			background-color: #f6f7f8;
			border-radius: 0 0 3px 3px;
			color: #141823;
			overflow: hidden;
		}
	
		.facebook-box .footer .row {
			margin-top: 10px;
			margin-bottom: 2px;
			overflow: hidden;
		}
	
		.facebook-box .footer .small-avatar {
			width: 32px;
			height: 32px;
			float: left;
			margin-right: 8px;
		}
	
		.facebook-box .footer .write-comment input[type="text"] {
			background: #fff;
			border: 1px solid #dcdee3;
			padding: 7px 7px 7px 5px;
			min-height: 16px;
			width: calc(95% - 32px - 22px);
			float: left;
		}
	
		.react {
			border-top: 1px solid #e5e6e9;
			position: relative;
	    	padding: 0 25px;
	    	height: 39.97px;
		}
	
		.react .comment, .share, .like-main {
	    	color: #4b4f56;
	    	display: inline-block;
	    	font-weight: 600;
		    font-size: 14px;
		    margin-right: 60px;
		    cursor: pointer;
		    position: relative;
		    height: 100%;
		    line-height: 39.97px;
		    -webkit-transition: .3s ease;
		    -o-transition: .3s ease;
		    transition: .3s ease;
		}	
	
		#textArea{
		 	height: auto;
		    background: white;
		}
		.modal-dialog{
			margin : 200px auto;}
		.row {
		    margin-right: -5px;
		    margin-left: -5px;
		}
		.Inner{
			margin : 30px;
			font-size: 1.5vmin;
			padding: 0.5em 0.5em;
			background-color: #fff;
		  	border: 1px solid #bbb;
		  	color: #333;
		 	text-decoration: none;
		  	display: inline;
		  	border-radius: 4px;
		  	cursor : pointer;
		  	-webkit-transition: background-color 1s ease;
		  	-moz-transition: background-color 1s ease;
		  	transition: background-color 1s ease;
		}
		.testimonial_content_inner > p {
			white-space: pre-wrap;
		}
	
		button {
			color: buttontext;
		}
	
		#addReply {
		       border: none;
		    background-color: transparent;
		    color: #bbbbbb;
			margin-top: 5px;
		    margin-left: 10px;
		}
		.reply-content {
		    border-style: none;
		    resize: none;
		}
	</style>
</head>
<body>
    <!-- 세모선숲 (글 목록 + 사이드 바) 전체 틀 시작 -->
    <div id="container">
         
		<c:import url="../common/header.jsp"/>
	
	 	<br />
	 	<br />
	 	<br />
	 	<br />
	 	<br />
 	
	    <!-- Start container -->
	  	<div class="container">
			<!-- 게시글 목록 틀 시작 -->
			<div class="col-md-9 page-content"> 
	            <!-- 게시판 제목 -->
	            <h4 class="classic-title"><span>세모선 숲</span></h4>
                <div data-appeared-items="1" class="appendReady">
	                
	                <!-- 게시글 작성 폼 -->
	                <div class="form-group">			
						<input type="hidden" id="userno" name="userno" value="${member.userNo}" />
					 	<textarea id="contentt" name="talkcontent" class="form-control" placeholder="내용을 입력하세요"></textarea>
						<br />
						
							<div align="center">
								<input type="submit" value="게시글 등록" class="btn btn-primary btn-md" id="submit" onclick="insert();"/>
							</div>
								<br />
							</div>
							
							<c:forEach items="${list }" var="data">
								<div class="testimonial">
							    	<div class="testimonial_content">
							        	<div class="testimonial_content_inner" data-toggle="modal" data-target="#loginModal">
							         		<input type="hidden" value="${data.userno}" />
							            	<p> ${data.talkcontent}  </p>
							         	</div>
							     	</div>
										<div class="testimonial_author clearfix">
							         		<img class="testimonial_photo" src="${pageContext.request.contextPath}/resources/images/profileImage/${data.profileName}" >
							         		<input type="hidden" value="${data.talkno}" />
							         		<h3 class="testimonial_name">${data.nickName} </h3>
							         		<div class="testimonial_position">${data.talkdate}</div>
							     		</div>
							 	</div>
							</c:forEach>
							
							
							
							<!-- 게시글 작성 script -->
							<script>
								// date 형식 지정
								$(function() {
									$('.testimonial_position').each(function() {
										$(this).text(new Date($(this).text()).format('yyyy-MM-dd a/p hh:mm:ss'));
									});
									cilckEvent();
								});
								// '게시글등록' 버튼 클릭 시 게시글 등록
								function insert(){
									
							        var contentt = $('#contentt').val().trim();
							        var userno = Number($('#userno').val());
							        

							        if(contentt.length == 0) {
							        	alert("내용을 입력하세요.");
							        	return;
							        // 새로 고침 없이 목록화면에 게시글 추가 ajax	
							        } else {
								        $.ajax({
								            url  : "${pageContext.request.contextPath}/talk/talkInsertSelect.do",
								            data : {userno : '${member.userNo}' , talkcontent : contentt},
								            dataType: "json",
								            success : function(data){
								            				// data : List<Talk>
							        				var contentt = $('#contentt').val('');
													var $formGroup = $('.form-group');
													$('.appendReady').empty();
													
								            		$('.appendReady').append($formGroup);
								            	
								            		for ( var tt in data) {
								            		var $testimonial = $('<div>').addClass('testimonial');
								            		
								            		
								            		var $content = $('<div>').addClass('testimonial_content');
								            		var $author = $('<div>').addClass('testimonial_author clearfix');

								            		var $inner = $('<div>').addClass('testimonial_content_inner').attr("data-toggle", "modal").attr("data-target","#loginModal");
								            		var $inputUserno = $('<input>').attr('type','hidden').val(data[tt].userno);
								            										            		
								            		var $img = $('<img>').addClass('testimonial_photo').attr("src", "${pageContext.request.contextPath}/resources/images/profileImage/"+data[tt].profileName);
								            		var $input = $('<input>').attr('type','hidden').val(data[tt].talkno);
								            		var $h3 = $('<h3>').addClass('testimonial_name').text(data[tt].nickName);
								            		var $position = $('<div>').addClass('testimonial_position').text(new Date(data[tt].talkdate).format('yyyy-MM-dd a/p hh:mm:ss'));
								            		
								            		
								            		$testimonial.append($content).append($author);
								            		$content.append(  $inner.append(  $('<p>').text(data[tt].talkcontent)  ).append($inputUserno)  );
								            		$author.append($img).append($input).append($h3).append($position);
								            		
								            		$('.appendReady').append($testimonial);
								            		
								            		}
								            		
								            		cilckEvent();
								            }, error : function(jqxhr, textStatus, errorThrown){
								                console.log("ajax 처리 실패");
								                //에러로그
								                console.log(jqxhr);
								                console.log(textStatus);
								                console.log(errorThrown);
								            }
							        	});
							     	}
								}
								
								// 무한 페이징 
								var currentPage = 2; // 2(10개)
								var maxPage = Math.ceil(('${totalContents}') / 5); // 32/(5개) = 7
						    	
						    	$(function(){
						    		window.onscroll = function(){
						    			//  pageEnd : 보고있는 페이지 끝부분의 길이 ~ <body>바닥부분 = 남아있는 길이
						    			// 					2000 					-        (1400 + 100)
						    			var pageEnd = $('body').get(0).scrollHeight - $(window).scrollTop() - $(window).height();
							    		//				<body>시작부분 ~ 끝부분의 길이 		- <body>시작부분 ~ 현재창 시작부분의 거리 - 보고있는 페이지의 높이
							    		
							    		// 					8			7
							    		if(pageEnd < 1 && currentPage <= maxPage) {
							    			$.ajax({
							    				url : "${pageContext.request.contextPath}/talk/talkScroll.do",    // 이동할 서블릿 주소
							    				// 						(8:마지막) (7:2개)
							    				data : { currentPage : ++currentPage, keyword : '${keyword}' }, 
									            dataType: "json",
							    				success : function(data) {  // 서버와 접속에 성공 했을 때! 
							    					
							    					console.log(data);
							    					console.log(maxPage);
							    				
 							    					if(data.length == 0){ 
 							    						alert("더 이상 가져올 글이 없어요!"); 
 							    					} else {
									            		for ( var tt in data) {
									            		var $testimonial = $('<div>').addClass('testimonial');
									            		
									            		
									            		var $content = $('<div>').addClass('testimonial_content');
									            		var $author = $('<div>').addClass('testimonial_author clearfix');
	
									            		var $inner = $('<div>').addClass('testimonial_content_inner').attr("data-toggle", "modal").attr("data-target","#loginModal");
									            		
									            		var $img = $('<img>').addClass('testimonial_photo').attr("src", "${pageContext.request.contextPath}/resources/images/mini-profile.png");
									            		var $input = $('<input>').attr('type','hidden').val(data[tt].talkno);
									            		var $h3 = $('<h3>').addClass('testimonial_name').text(data[tt].nickName);
									            		var $position = $('<div>').addClass('testimonial_position').text(new Date(data[tt].talkdate).format('yyyy-MM-dd a/p hh:mm:ss'));
									            		
									            		
									            		$testimonial.append($content).append($author);
									            		$content.append(  $inner.append(  $('<p>').text(data[tt].talkcontent)  )  );
									            		$author.append($img).append($input).append($h3).append($position);
									            		
									            		$('.appendReady').append($testimonial);
									            		
									            		}
									            		
									            		cilckEvent();
								            		}
							    					
							    				}, error : function(jqxhr, textStatus, errorThrown){
									                console.log("ajax 처리 실패");
									                //에러로그
									                console.log(jqxhr);
									                console.log(textStatus);
									                console.log(errorThrown);
							    				}
							    			});
							    		}
						    		};
						    	});
							</script>
                        </div>
                        <!-- Testimonials Carousel 끝 -->
                        
            <!-- 게시글 목록 틀 시작 -->    
			</div>
			
            <!-- 좌측 사이드 바 시작 -->
            <div class="col-md-3 sidebar right-sidebar">
            	<!-- 검색 틀 -->
                <div class="widget widget-search">
                	<form action="${ pageContext.request.contextPath }/talk/talkList.do">
                    	<input type="search" name="keyword" placeholder="Enter Keywords..."/>
                        <button class="search-btn" type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>
				<!-- 태그 틀-->
                <div class="widget widget-tags">
                	<h4>Tags <span class="head-line"></span></h4>
                    <div class="tagcloud">
	                	<a href="#">인강</a>
	                	<a href="#">선생님</a>
	                	<a href="#">선생님추천</a>
	                	<a href="#">인터넷강의</a>
	                	<a href="#">강의순위</a>
	                    <a href="#">선생님순위</a>
	                    <a href="#">인기강의</a>
	                    <a href="#">스타강사</a>
	                    <a href="#">강사</a>
	                    <a href="#">강사순위</a>
					</div>
				</div>
			<!-- 좌측 사이드 바 끝 -->	
			</div>
		<!-- END container -->	
		</div>

		<!-- 모달 시작 -->
		<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
	  		<div class="modal-dialog" role="document">
				<div class="modal-content">
					<!-- 댓글 내용 틀-->
					<div class="facebook-box">
						<div class="content">
	    					
	    					<!-- 게시글 수정, 삭제 버튼 -->
	    					<div class="Popup" id="modalUD">
	      						<div class="right-icon">
	  								<button class="btn btn-flat btn-flat-icon" type="button" data-toggle="dropdown" aria-expanded="false">
										<em class="fa fa-ellipsis-h"></em>
				   					</button>
								</div>
							    <div class="Inner" style="position: absolute; display: none;">
							    	<div id="upBtn" class="fa fa-pencil" onclick="updateTalk(this);">수정</div><br />
							    	<div class="fa fa-pencil" onclick="updateEndTalk(this)" style="display:none;">완료</div>
							    	<div class="fa fa-trash-o" onclick="deleteTalk(this)">삭제</div>
							  	</div>
	  						</div>
	  					
	
							<div class="row header">
	        					<div class="avatar">
	          						<img src="${pageContext.request.contextPath}/resources/images/mini-profile.png" alt="" />
	        					</div>
	        					<div class="name">
	        						<input type="hidden" id="talkno" name="talkno" value="" />
	          						<h5><a href="http://khoipro.com" target="_blank"></a></h5>
	          						<span class="sub"></span>
	        					</div>
	      					</div>
	      					
	      					<pre id="textArea" class="row text reply-content" style="width:100%;" oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"'></pre>
	      					<textarea id="textArea_" class="row text reply-content" style="width:100%; display:none;" oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"'></textarea>
		  					
		  					<!-- 모달 스크립트 -->
							<script> 
							
							function cilckEvent(){
								$('.testimonial_content').each(function(){
									$(this).click(function() {
						 				var talkNo = Number($(this).next().find('input').val().trim());
						 				if('${member.userNo}' != Number($(this).find('input').val().trim())){
// 							 				$('#modalUD').css("display","none");
// 							 				$('#modalUD').css("visibility","hidden");
							 				$('#modalUD').hide();
						 				}

						 				$('#upBtn').parent().find('br').remove();
						 				$('#upBtn').css("display", 'inline-block').after($('<br>'));
						 				$('#upBtn').next().next().css("display", 'none');
						 				
						 				// 모달 댓글 추가 ajax
						 				$.ajax({
											url  : "${pageContext.request.contextPath}/talk/talkCommentSelectList.do",
						 			        data : {talkNo: talkNo},
						 			        dataType: "json",
						 			        success : function(data){
					 										// data : Map<String, Object( Talk , List<TalkComment> )> 
					 		    				var contentt = $('#ccontent').val('');
					 							$('.footer').find('.replySelectArea').remove();
					 							$('#textArea').text(data.Talk.talkcontent);
					 							$('#textArea_').val(data.Talk.talkcontent);
					 							
					 	 		 	  			$('.sub').text(new Date(data.Talk.talkdate).format('yyyy-MM-dd a/p hh:mm:ss'));
					 	 		 	  			$('.name>h5>a').text(data.Talk.nickName);
					 	 		 	  			$('#talkno').val(data.Talk.talkno);
					 	 		 	  	// 모달 내용 부분 폼
	//				 	 						<div class="replySelectArea">
	//				 	 				   			<table class="replySelectTable replyList">
	//				 	 							  	<tr>
	//				 	 							  		<td rowspan="2"> </td>
	//				 	 									<td><b>bco.cwriter</b></td>
	//				 	 									<td>bco.cdate</td>
	//				 	 									<td align="right">
	//				 	 										<input type="hidden" name="cno" value=""/>
					 	 										  
	//				 	 										<button type="button" class="updateBtn" 
	//				 	 											onclick="updateReply(this);">수정하기</button>
					 	 										
	//				 	 										<button type="button" class="updateConfirm"
	//				 	 											onclick="updateConfirm(this);"
	//				 	 											style="display:none;" >수정완료</button> &nbsp;&nbsp;
					 	 											
	//				 	 										<button type="button" class="deleteBtn"
	//				 	 											onclick="deleteReply(this);">삭제하기</button>
					 	 										
	//				 	 									</td>
	//				 	 								</tr>
	//				 	 								<tr class="search">
	//				 	 									<td colspan="3" style="background : transparent;">
	//				 	 										<textarea class="reply-content" cols="90%" rows="3"
	//				 	 										 readonly="readonly">bco.ccontent</textarea>
	//				 	 									</td>
	//				 	 								</tr>
	//				 	 							</table>
	//				 	 						</div>
						 		            		for ( var tt in data.list) {
						 		            		var $replySelectArea = $('<div>').addClass('replySelectArea');
						 		            		
						 		            		var $table = $('<table>').addClass('replySelectTable replyList');
						 		            		
						 		            		var $tr1 = $('<tr>');
						 		            		var $tr2 = $('<tr>').addClass('search');
						 		            		
						 		            		var $td1 = $('<td>').attr("rowspan","2");
						 		            		var $td2 = $('<td>').append(  $('<b>').text(data.list[tt].nickname)  );
						 		            		var $td3 = $('<td>').text(new Date(data.list[tt].cdate).format('yyyy-MM-dd a/p hh:mm:ss'));
						 		            		var $td4 = $('<td>').attr("align","right");
						
						 		            		var $input = $('<input>').attr("type","hidden").attr("name","cno").val(data.list[tt].commentno);
						 		            		var $button1 = $('<button>').attr("type", "button").addClass("updateBtn").attr("onclick", "updateReply(this);").text("수정하기");
						 		            		var $button2 = $('<button>').attr("type", "button").addClass("updateConfirm").attr("onclick", "updateConfirm(this);").css("display","none").text("수정완료");
						 		            		var $button3 = $('<button>').attr("type", "button").addClass("deleteBtn").attr("onclick", "deleteReply(this);").text("삭제하기");
						 		            		
						 		            		var $td5 = $('<td>').attr("colspan","3").css("background", "transparent")
						 		            		var $textarea = $('<textarea>').addClass("reply-content").attr('cols','90%').attr('rows','3').attr('readonly','readonly').text(data.list[tt].ccontent);
						 		            		
						 		            		$replySelectArea.append($table);
						 		            		$table.append($tr1).append($tr2);
						 		            		$tr1.append($td1).append($td2).append($td3).append($td4);
						 		            		$td4.append($input).append($button1).append($button2).append('&nbsp;&nbsp;').append($button3);
						 		            		
						 		            		$tr2.append($td5)
						 		            		$td5.append($textarea);
						 		            		
						 		            		$('.footer').append($replySelectArea);
						 		            		
						 		            		}
						 		            		
						 			            }, error : function(jqxhr, textStatus, errorThrown){
						 			                console.log("ajax 처리 실패");
						 			                //에러로그
						 			                console.log(jqxhr);
						 			                console.log(textStatus);
						 			                console.log(errorThrown);
						 			            }
						 		        	});
						 				 
						 				$('#textArea_').attr("readonly", true);
							  		});
							  		
								       $('.Popup .right-icon').click(function() {
									        $('.Popup .Inner').css('position','absolute');
									        var $Inner = $(this).parent().children('.Popup .Inner');
								 	        $Inner.toggle();
								 	    });
							  		});
							  }
								$(document).click(function(){
									 
									if(!$('.modal.fade').hasClass('in')){
										$('.Popup .Inner').css('display','none');
										
						
										
						 				$('#textArea_').css('display', 'none');
										$('#textArea').css('display', 'block');
									}
									
									$('.Popup .right-icon').click(function(){
										if(!$(this).hasClass('open')){
											$('.Popup .Inner').show();
										} else {
											$('.Popup .Inner').hide();
										}
									});
									
								});
						// 		<div class="Popup">
						//   		<div class="right-icon">
						// 				<button class="btn btn-flat btn-flat-icon" type="button" data-toggle="dropdown" aria-expanded="false">
						// 					<em class="fa fa-ellipsis-h"></em>
						// 		   	</button>
						// 		</div>
						
						// 	      <div class="Inner" style="position: absolute; display: none;">
						// 	    	<div id="upBtn" class="fa fa-pencil" onclick="updateTalk(this);">수정</div><br />
						// 	    	<div class="fa fa-pencil" onclick="updateEndTalk(this)" style="display:none;">완료</div>
						// 	    	<div class="fa fa-trash-o" onclick="deleteTalk(this)">삭제</div>
						// 	  	  </div>
									
						// 		</div>
						
						//   <div class="row header">
						//     <div class="avatar">
						//       <img src="${pageContext.request.contextPath}/resources/images/mini-profile.png" alt="" />
						//     </div>
						//     <div class="name">
						//     	<input type="hidden" id="talkno" name="talkno" value="" />
						//       <h5><a href="http://khoipro.com" target="_blank"></a></h5>
						//       <span class="sub"></span>
						//     </div>
						//   </div>
						//   <textarea class="row text reply-content" style = "width:100%;" oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"'></textarea>	
									//  수정하는 AJAX
								function updateTalk(obj) {
									// updateReply(this) → $(obj)
									// 수정하기 -> 수정완료 버튼수정
									$('#textArea_').attr("readonly", false);
									
									$('#textArea_').css({
											'display' : 'inline',
											'height' : $('#textArea')[0].scrollHeight + 'px'
									});
									
									$('#textArea').css('display', 'none');
									$('#textArea_').text()
									
									$(obj).css("display", 'none');
									$(obj).next().remove();
									$(obj).next().css("display", 'inline-block').after($('<br>'));
									
								}
									
								function updateEndTalk(obj){
									var contentt = $('#textArea_').val().trim();
									var contentPre = $('#textArea').text($('#textArea_').val());
							        var talkno = Number($('#talkno').val().trim());
							        // var userno = Number($('#userno').val());

							        if(contentt.length == 0) {
							        	alert("내용을 입력하세요.");
							        	return;
							        	
							        } else {
								        $.ajax({
								            url  : "${pageContext.request.contextPath}/talk/talkUpdateSelect.do",
								            data : {talkno: talkno , talkcontent : contentt},
								            dataType: "json",
								            success : function(data){
															// data : Talk
										  			$('#textArea').text(data.talkcontent);
										  			$('#textArea_').val(data.talkcontent);
									 	  			$('.sub').text(new Date(data.talkdate).format('yyyy-MM-dd a/p hh:mm:ss'));
									 	  			$('.name>h5>a').text(data.nickName);
									 	  			
									 	  			$('input[value='+talkno+']').parent().parent().find('.testimonial_content_inner p').text(data.talkcontent);
							
									 				$('#textArea_').attr("readonly", true);
									 				$('#upBtn').parent().find('br').remove();
									 				$('#upBtn').css("display", 'inline-block').after($('<br>'));
									 				$('#upBtn').next().next().css("display", 'none');
								 				
									 				$('#textArea_').css('display', 'none');
													$('#textArea').css('display', 'block');
								            		
								            }, error : function(jqxhr, textStatus, errorThrown){
								                console.log("ajax 처리 실패");
								                //에러로그
								                console.log(jqxhr);
								                console.log(textStatus);
								                console.log(errorThrown);
								            }
							        	});
							     	}
								}
								function deleteTalk(obj){
								    var talkno = Number($('#talkno').val().trim());     
							        
							        if(confirm("정말 삭제하시겠습니까?") == true){
							        	location.href= "${ pageContext.request.contextPath }/talk/talkDelete.do?talkno="+talkno;
							     	}
								}
							</script>  
							<br />
							<br />
						</div>
						
						<!-- 모달 댓글 폼 시작 -->
	  					<div class="footer">
						    <a href="#"></a> 
						    <div class="row">
	      						<div class="small-avatar">
	        						<img src="http://placehold.it/32x32" alt="" />
	      						</div>
	      						<div class="write-comment">
	        						<input type="text" name="ccontent" id="ccontent" placeholder="댓글을 입력하세요.">
	        						<button type="button" id="addReply" onclick="insertConmment();"><i class="fa fa-pencil"></i></button>
		  						</div>
	    					</div>
	    				<!-- 모달 댓글 폼 끝 -->
	  					</div>
	  					
	  					<!-- 댓글 스크립트 -->
						<script>
							$('#ccontent').keyup(function(e) {
								console.log(e.key);
								if(e.key == 'Enter'){
									insertConmment();
								}
							});
							
							function insertConmment(){
						        var contentt = $('#ccontent').val().trim();
						        var talkno = Number($('#talkno').val().trim());
						        var userno = Number($('#userno').val());
						        
						        if(contentt.length == 0) {
						        	alert("내용을 입력하세요.");
						        	return;
						        // 댓글 추가 + 목록불러오기 ajax	
						        } else {
							        $.ajax({
							            url  : "${pageContext.request.contextPath}/talk/talkCommentInsertSelect.do",
							            data : {talkno: talkno , userno : '${member.userNo}' , ccontent : contentt},
							            dataType: "json",
							            success : function(data){
														// data : List<TalkComment>
						        				var contentt = $('#ccontent').val('');
												$('.footer').find('.replySelectArea').remove();
								// 댓글 폼  
						// 		<div class="replySelectArea">
						// 		   			<table class="replySelectTable replyList">
						// 				  		<tr>
						// 				  			<td rowspan="2"> </td>
						// 							<td><b>bco.cwriter</b></td>
						// 							<td>bco.cdate</td>
						// 							<td align="right">
						// 								<input type="hidden" name="cno" value=""/>
															  
						// 								<button type="button" class="updateBtn" 
						// 									onclick="updateReply(this);">수정하기</button>
															
						// 								<button type="button" class="updateConfirm"
						// 									onclick="updateConfirm(this);"
						// 									style="display:none;" >수정완료</button> &nbsp;&nbsp;
															
						// 								<button type="button" class="deleteBtn"
						// 									onclick="deleteReply(this);">삭제하기</button>
															
						// 							</td>
						// 						</tr>
						// 						<tr class="search">
						// 							<td colspan="3" style="background : transparent;">
						// 							<textarea class="reply-content" cols="71%" rows="3"
						// 							 readonly="readonly">bco.ccontent</textarea>
						// 							</td>
						// 						</tr>
						// 					</table>
						// 			</div>
							            		for ( var tt in data) {
							            		var $replySelectArea = $('<div>').addClass('replySelectArea');
							            		
							            		var $table = $('<table>').addClass('replySelectTable replyList');
							            		
							            		var $tr1 = $('<tr>');
							            		var $tr2 = $('<tr>').addClass('search');
							            		
							            		var $td1 = $('<td>').attr("rowspan","2");
							            		var $td2 = $('<td>').append(  $('<b>').text(data[tt].nickname)  );
							            		var $td3 = $('<td>').text(new Date(data[tt].cdate).format('yyyy-MM-dd a/p hh:mm:ss'));
							            		var $td4 = $('<td>').attr("align","right");
						
							            		var $input = $('<input>').attr("type","hidden").attr("name","cno").val(data[tt].commentno);
							            		var $button1 = $('<button>').attr("type", "button").addClass("updateBtn").attr("onclick", "updateReply(this);").text("수정하기");
							            		var $button2 = $('<button>').attr("type", "button").addClass("updateConfirm").attr("onclick", "updateConfirm(this);").css("display","none").text("수정완료");
							            		var $button3 = $('<button>').attr("type", "button").addClass("deleteBtn").attr("onclick", "deleteReply(this);").text("삭제하기");
							            		
							            		var $td5 = $('<td>').attr("colspan","3").css("background", "transparent")
							            		var $textarea = $('<textarea>').addClass("reply-content").attr('cols','71%').attr('rows','3').attr('readonly','readonly').text(data[tt].ccontent);
							            		
							            		$replySelectArea.append($table);
							            		$table.append($tr1).append($tr2);
							            		$tr1.append($td1).append($td2).append($td3).append($td4);
							            		$td4.append($input).append($button1).append($button2).append('&nbsp;&nbsp;').append($button3);
							            		
							            		$tr2.append($td5)
							            		$td5.append($textarea);
							            		
							            		$('.footer').append($replySelectArea);
							            		
							            		}
							            		
							            		cilckEvent();
							            }, error : function(jqxhr, textStatus, errorThrown){
							                console.log("ajax 처리 실패");
							                //에러로그
							                console.log(jqxhr);
							                console.log(textStatus);
							                console.log(errorThrown);
							            }
						        	});
						     	}
							}
							// 댓글 수정하는 AJAX
							function updateReply(obj) {
								// updateReply(this) → $(obj)
								// 수정하기 -> 수정완료 버튼수정
								$(obj).parent().parent().parent().find("textarea").attr("readonly", false);
								$(obj).css("display", 'none');
								$(obj).next().css("display", 'inline-block');
								
							}
							// 수정을 완료 실행
							function updateConfirm(obj){
								var contentt = $(obj).parent().parent().parent().find("textarea").val().trim();
								var commentno = Number($(obj).parent().find("input").val().trim());
						        var talkno = Number($('#talkno').val().trim());
						        // var userno = Number($('#userno').val());
						        
						        if(contentt.length == 0) {
						        	alert("내용을 입력하세요.");
						        	return;
						        	
						        } else {
							        $.ajax({
							            url  : "${pageContext.request.contextPath}/talk/talkCommentUpdateSelect.do",
							            data : {commentno : commentno , talkno: talkno , ccontent : contentt},
							            dataType: "json",
							            success : function(data){
														// data : List<TalkComment>
						        				var contentt = $('#ccontent').val('');
												$('.footer').find('.replySelectArea').remove();
						//		댓글 폼 
						// 		<div class="replySelectArea">
						// 		   			<table class="replySelectTable replyList">
						// 				  		<tr>
						// 				  			<td rowspan="2"> </td>
						// 							<td><b>bco.cwriter</b></td>
						// 							<td>bco.cdate</td>
						// 							<td align="right">
						// 								<input type="hidden" name="cno" value=""/>
															  
						// 								<button type="button" class="updateBtn" 
						// 									onclick="updateReply(this);">수정하기</button>
															
						// 								<button type="button" class="updateConfirm"
						// 									onclick="updateConfirm(this);"
						// 									style="display:none;" >수정완료</button> &nbsp;&nbsp;
															
						// 								<button type="button" class="deleteBtn"
						// 									onclick="deleteReply(this);">삭제하기</button>
															
						// 							</td>
						// 						</tr>
						// 						<tr class="search">
						// 							<td colspan="3" style="background : transparent;">
						// 							<textarea class="reply-content" cols="71%" rows="3"
						// 							 readonly="readonly">bco.ccontent</textarea>
						// 							</td>
						// 						</tr>
						// 					</table>
						// 			</div>
							            		for ( var tt in data) {
							            		var $replySelectArea = $('<div>').addClass('replySelectArea');
							            		
							            		var $table = $('<table>').addClass('replySelectTable replyList');
							            		
							            		var $tr1 = $('<tr>');
							            		var $tr2 = $('<tr>').addClass('search');
							            		
							            		var $td1 = $('<td>').attr("rowspan","2");
							            		var $td2 = $('<td>').append(  $('<b>').text(data[tt].nickname)  );
							            		var $td3 = $('<td>').text(new Date(data[tt].cdate).format('yyyy-MM-dd a/p hh:mm:ss'));
							            		var $td4 = $('<td>').attr("align","right");
						
							            		var $input = $('<input>').attr("type","hidden").attr("name","cno").val(data[tt].commentno);
							            		var $button1 = $('<button>').attr("type", "button").addClass("updateBtn").attr("onclick", "updateReply(this);").text("수정하기");
							            		var $button2 = $('<button>').attr("type", "button").addClass("updateConfirm").attr("onclick", "updateConfirm(this);").css("display","none").text("수정완료");
							            		var $button3 = $('<button>').attr("type", "button").addClass("deleteBtn").attr("onclick", "deleteReply(this);").text("삭제하기");
							            		
							            		var $td5 = $('<td>').attr("colspan","3").css("background", "transparent")
							            		var $textarea = $('<textarea>').addClass("reply-content").attr('cols','71%').attr('rows','3').attr('readonly','readonly').text(data[tt].ccontent);
							            		
							            		$replySelectArea.append($table);
							            		$table.append($tr1).append($tr2);
							            		$tr1.append($td1).append($td2).append($td3).append($td4);
							            		$td4.append($input).append($button1).append($button2).append('&nbsp;&nbsp;').append($button3);
							            		
							            		$tr2.append($td5)
							            		$td5.append($textarea);
							            		
							            		$('.footer').append($replySelectArea);
							            		
							            		}
							            		
							            		cilckEvent();
							            }, error : function(jqxhr, textStatus, errorThrown){
							                console.log("ajax 처리 실패");
							                //에러로그
							                console.log(jqxhr);
							                console.log(textStatus);
							                console.log(errorThrown);
							            }
						        	});
						     	}
							}
							function deleteReply(obj){
						        var talkno = Number($('#talkno').val().trim());
								var commentno = Number($(obj).parent().find("input").val().trim());
						        // var userno = Number($('#userno').val());
						        
						        if(confirm("정말 삭제하시겠습니까?") == true){
							        $.ajax({
							            url  : "${pageContext.request.contextPath}/talk/talkCommentDeleteSelect.do",
							            data : {commentno : commentno, talkno : talkno},
							            dataType: "json",
							            success : function(data){
														// data : List<TalkComment>
						        				var contentt = $('#ccontent').val('');
												$('.footer').find('.replySelectArea').remove();
						//		댓글 폼 
						// 		<div class="replySelectArea">
						// 		   			<table class="replySelectTable replyList">
						// 				  		<tr>
						// 				  			<td rowspan="2"> </td>
						// 							<td><b>bco.cwriter</b></td>
						// 							<td>bco.cdate</td>
						// 							<td align="right">
						// 								<input type="hidden" name="cno" value=""/>
															  
						// 								<button type="button" class="updateBtn" 
						// 									onclick="updateReply(this);">수정하기</button>
															
						// 								<button type="button" class="updateConfirm"
						// 									onclick="updateConfirm(this);"
						// 									style="display:none;" >수정완료</button> &nbsp;&nbsp;
															
						// 								<button type="button" class="deleteBtn"
						// 									onclick="deleteReply(this);">삭제하기</button>
															
						// 							</td>
						// 						</tr>
						// 						<tr class="search">
						// 							<td colspan="3" style="background : transparent;">
						// 							<textarea class="reply-content" cols="90%" rows="3"
						// 							 readonly="readonly">bco.ccontent</textarea>
						// 							</td>
						// 						</tr>
						// 					</table>
						// 			</div>
							            		for ( var tt in data) {
							            		var $replySelectArea = $('<div>').addClass('replySelectArea');
							            		
							            		var $table = $('<table>').addClass('replySelectTable replyList');
							            		
							            		var $tr1 = $('<tr>');
							            		var $tr2 = $('<tr>').addClass('search');
							            		
							            		var $td1 = $('<td>').attr("rowspan","2");
							            		var $td2 = $('<td>').append(  $('<b>').text(data[tt].nickname)  );
							            		var $td3 = $('<td>').text(new Date(data[tt].cdate).format('yyyy-MM-dd a/p hh:mm:ss'));
							            		var $td4 = $('<td>').attr("align","right");
						
							            		var $input = $('<input>').attr("type","hidden").attr("name","cno").val(data[tt].commentno);
							            		var $button1 = $('<button>').attr("type", "button").addClass("updateBtn").attr("onclick", "updateReply(this);").text("수정하기");
							            		var $button2 = $('<button>').attr("type", "button").addClass("updateConfirm").attr("onclick", "updateConfirm(this);").css("display","none").text("수정완료");
							            		var $button3 = $('<button>').attr("type", "button").addClass("deleteBtn").attr("onclick", "deleteReply(this);").text("삭제하기");
							            		
							            		var $td5 = $('<td>').attr("colspan","3").css("background", "transparent")
							            		var $textarea = $('<textarea>').addClass("reply-content").attr('cols','90%').attr('rows','3').attr('readonly','readonly').text(data[tt].ccontent);
							            		
							            		$replySelectArea.append($table);
							            		$table.append($tr1).append($tr2);
							            		$tr1.append($td1).append($td2).append($td3).append($td4);
							            		$td4.append($input).append($button1).append($button2).append('&nbsp;&nbsp;').append($button3);
							            		
							            		$tr2.append($td5)
							            		$td5.append($textarea);
							            		
							            		$('.footer').append($replySelectArea);
							            		
							            		}
							            		
							            		cilckEvent();
							            }, error : function(jqxhr, textStatus, errorThrown){
							                console.log("ajax 처리 실패");
							                //에러로그
							                console.log(jqxhr);
							                console.log(textStatus);
							                console.log(errorThrown);
							            }
						        	});
						     	}
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
					
					</div>
					<!--모달 내용 틀 끝-->
				</div>
	  		</div>
		<!--모달 끝-->
		</div>

	<c:import url="../common/footer.jsp"/>
	
	<!-- 세모선숲 (글 목록 + 사이드 바) 전체 틀 끝 -->
	</div>
	
</body>
</html>