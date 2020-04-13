<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<div id="header" class="header">
   
	<div class="project-name" onclick='location.href="${pageContext.request.contextPath }/memberControl.am"'>
        <h3>세 모 선</h3>
        <h6 style="color:white;">관리자님 안녕하세요</h6>
    </div>
    
    <nav>
    	<ul>
            <li class="current"><a href="${pageContext.request.contextPath }/"><i class="glyphicon glyphicon-chevron-right"></i> 홈페이지 이동하기</a></li>
            <li><a href="${pageContext.request.contextPath }/memberControl.am"><i class="glyphicon glyphicon-chevron-right"></i> 회원 관리</a></li>
            <li><a href="${pageContext.request.contextPath }/teacherControl.am"><i class="glyphicon glyphicon-chevron-right"></i> 강사님 관리</a></li>
            <li><a href="${pageContext.request.contextPath }/reportControl.am"><i class="glyphicon glyphicon-chevron-right"></i> 신고 관리</a></li>
        </ul>
    </nav>

</div>
    <nav class="hiddenNav">
    	<ul class="nav justify-content-center">
		  <li class="nav-item">
		    <a class="nav-link active" href="#">Active</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Link</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Link</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
		  </li>
		</ul>
    </nav>