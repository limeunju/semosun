<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
	<meta charset="utf-8">
	<meta name="author" content="Square Media">
    
    <link href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/assets/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/highcharts.css" rel="stylesheet">
    
<style>
/* 헤더 숨기기 */
@media (max-width: 1200px) {
	#header {
		width: 25%;
	}
	.page-sections {
		padding-left: 33% ;
	}
	.title {
		display: block !important; 
	}
}
@media (min-width: 900px) {
	.hiddenNav {
		display: none;
	}
}	
@media (max-width: 900px) {
	#header {
		display: none;
	}
	.hiddenNav {
		visibility: visible;
    	text-align: center;
	}
	.hiddenNav li{
		display: inline-block;
	}
	.page-sections {
		padding: 5%;
	}
}
button {
    min-width: max-content;
}	
</style>