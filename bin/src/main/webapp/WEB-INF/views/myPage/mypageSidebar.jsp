<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>


					<div class="jsx-707316887 my-snb"
						style="bottom: 1px; height: 800px;">
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
							<li class="jsx-707316887 "><a class="jsx-707316887"
								href="${pageContext.request.contextPath }/myPage/myPageProfile.do"
								style="text-decoration: none; margin-top: 20px;">프로필</a></li>
							<!-- 프로필 -->
							
							<!-- 강사정보 -->
								<form action="${pageContext.request.contextPath }/member/teacherSelectList.do" method="post">
								<br />
								<input type="hidden" name="${teacher.tNo}"/>
							<button type="submit" style="border: 0;  background:white;">
							<li class="jsx-707316887"
									style="background:white;">
									<div style=""></div>
										<a class="jsx-707316887"
										style="text-decoration: none; margin-top: 20px; text-align:left; width:210px;"  >강사정보</a>
								</li>
								</button>
								</form>
								<!-- 강사정보 -->
							
							<!-- 리뷰정보 -->
								<form action="${pageContext.request.contextPath }/member/reviewSelectList.do" method="post">
								<br />
								<input type="hidden" name="${Review.rno}"/>
									<button type="submit" style="border: 0;  background:white;">
									<li class="jsx-707316887 " 
										style="background:white;">
									<div style=""></div>
										<a class="jsx-707316887"
											style="text-decoration: none; margin-top: 20px; text-align:left; width:210px;"  >
											리뷰정보
										</a>
									</li>
								</button>
								</form>
								<!-- 리뷰정보 -->
								
								<!-- 신고정보 -->
								<form action="${pageContext.request.contextPath }/member/reportSelectList.do" method="post">
								<br />
								<input type="hidden" name="${Review.rno}"/>
									<button type="submit" style="border: 0;  background:white;">
									<li class="jsx-707316887" 
										style="background:white;">
									<div style=""></div>
										<a class="jsx-707316887"
											style="text-decoration: none; margin-top: 20px; text-align:left; width:210px;"  >
											신고정보
										</a>
									</li>
								</button>
								</form>
								<!-- 신고정보 -->
								
								<!-- 좋아요 정보 -->
								<form action="${pageContext.request.contextPath }/member/likeySelectList.do" method="post">
								<br />
								<input type="hidden" name="${Review.rno}"/>
									<button type="submit" style="border: 0;  background:white;">
									<li class="jsx-707316887" 
										style="background:white;">
									<div style=""></div>
										<a class="jsx-707316887"
											style="text-decoration: none; margin-top: 20px; text-align:left; width:210px;"  >
											좋아요
										</a>
									</li>
								</button>
								</form>
								<!-- 좋아요 정보 -->
						</ul>
						

						<button type="button" class="jsx-707316887 btn-logout"
							style="height: 35px; margin-bottom: 50px; margin-left: 25px; background: white; border-style: none;"
							onclick="location.href='${pageContext.request.contextPath}/member/memberLogout.do'">
							<span class="jsx-707316887 power-icon"><svg
									xmlns="http://www.w3.org/2000/svg" width="10" height="10"
									viewBox="0 0 24 24" fill="none" stroke="#666666"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									style="position: relative;">
									<path d="M18.36 6.64a9 9 0 1 1-12.73 0"></path>
									<line x1="12" y1="2" x2="12" y2="12"></line></svg></span><span
								class="jsx-7073168871" style="font-size: 16px;"><b>로그아웃</b></span>
						</button>
					</div>